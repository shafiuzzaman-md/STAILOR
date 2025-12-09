#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_sa_llm_harness.py

SA-driven LLM harness generator (single-shot):

Given:
  - SA spec JSON describing a target (file, line, rule, etc.)
  - Project source root

Do:
  - Load SA spec
  - Extract:
      * source file
      * line number
      * rule id (if any)
      * assertion expression (if present or inferred)
      * a small code snippet around the target line for context
  - Build a prompt and call `llm_chat` ONCE to generate a full KLEE harness
    in C, which:
      * includes KLEE headers
      * sets up symbolic inputs
      * invokes relevant libxml2 entrypoints so that code near the target
        is on a feasible path
      * uses SAILR_ASSERT(<expr>) if we have an assertion
      * includes a reachability assertion
         klee_assert(0 && "SAILR_REACH_ASSERT");
        close to the vulnerability location

  - Write the resulting C code to --out-c

NOTE:
  - This script assumes you already have a `llm_chat` helper somewhere,
    for example:

      from llm_utils import llm_chat

    Adjust the import below to match your repo structure.
"""

import argparse
import json
import pathlib
import textwrap
from typing import Any, Dict, Optional, Tuple

# Helper with logging + spec_id tagging
from llm_utils import llm_chat  # type: ignore


# --------------------------------------------------------------------
# Basic JSON helpers
# --------------------------------------------------------------------

def read_json(path: pathlib.Path) -> Dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def _nested_lookup(d: Dict[str, Any], paths: Tuple[Tuple[str, ...], ...]) -> Optional[Any]:
    for path in paths:
        cur: Any = d
        ok = True
        for p in path:
            if isinstance(cur, dict) and p in cur:
                cur = cur[p]
            else:
                ok = False
                break
        if ok and cur is not None:
            return cur
    return None


def _first_existing(d: Dict[str, Any], keys: Tuple[str, ...]) -> Optional[Any]:
    for k in keys:
        if k in d and d[k] is not None:
            return d[k]
    return None


# --------------------------------------------------------------------
# Rule-specific assertion inference (same spirit as sa_manual)
# --------------------------------------------------------------------

def infer_assertion_from_rule(spec: Dict[str, Any]) -> Optional[str]:
    """
    Best-effort assertion inference from SA rule.

    Currently: heuristics for local.oob.memfunc.length-misuse[...]
    Returns a C boolean expression *without* trailing ';', or None.
    """
    rule_id = (
        spec.get("rule_id")
        or spec.get("ruleName")
        or spec.get("rule")
        or (spec.get("rule", {}) if isinstance(spec.get("rule"), dict) else None)
    )

    if isinstance(rule_id, dict):
        rule_id = rule_id.get("id") or rule_id.get("name")

    if not isinstance(rule_id, str):
        rule_id = ""
    rule_id = rule_id.lower()

    if "oob" in rule_id and "memfunc" in rule_id and "length-misuse" in rule_id:
        len_var = _first_existing(
            spec,
            ("len_var", "length_var", "size_var", "size_arg", "lenParam"),
        )
        bound_var = _first_existing(
            spec,
            ("buf_len_var", "bound_var", "capacity_var", "max_len_var", "limit_var"),
        )

        memfunc = spec.get("memfunc") or spec.get("call") or spec.get("witness")
        if isinstance(memfunc, dict):
            if len_var is None:
                len_var = _first_existing(
                    memfunc,
                    ("len_var", "length_var", "size_var", "size_arg"),
                )
            if bound_var is None:
                bound_var = _first_existing(
                    memfunc,
                    ("buf_len_var", "bound_var", "capacity_var", "max_len_var", "limit_var"),
                )

        if isinstance(len_var, str) and isinstance(bound_var, str):
            return f"{len_var} <= {bound_var}"
        if isinstance(len_var, str):
            return f"{len_var} >= 0"

    return None


# --------------------------------------------------------------------
# Spec parsing + context extraction
# --------------------------------------------------------------------

def parse_spec(spec_path: pathlib.Path) -> Dict[str, Any]:
    spec = read_json(spec_path)

    file_paths = (
        ("file",),
        ("source_file",),
        ("location", "file"),
        ("target", "file"),
        ("vuln", "file"),
    )
    line_paths = (
        ("line",),
        ("location", "line"),
        ("target", "line"),
        ("vuln", "line"),
    )
    rule_paths = (
        ("rule_id",),
        ("ruleName",),
        ("rule", "id"),
        ("rule", "name"),
    )
    assert_paths = (
        ("assert_expr",),
        ("assertion",),
        ("assertion_expr",),
        ("assert", "expr"),
        ("assert", "c_expr"),
        ("vuln", "assert_expr"),
        ("vuln", "assertion", "c_expr"),
    )

    src_file = _nested_lookup(spec, file_paths)
    line_val = _nested_lookup(spec, line_paths)
    rule_id = _nested_lookup(spec, rule_paths)
    assert_val = _nested_lookup(spec, assert_paths)

    if not isinstance(src_file, str):
        raise ValueError(f"Spec {spec_path} missing file; got: {src_file}")
    if isinstance(line_val, int):
        line_no = line_val
    elif isinstance(line_val, str):
        line_no = int(line_val)
    else:
        raise ValueError(f"Spec {spec_path} missing/invalid line; got: {line_val}")

    if not isinstance(rule_id, str):
        rule_id = ""

    assert_expr: Optional[str] = None
    if isinstance(assert_val, str) and assert_val.strip():
        assert_expr = assert_val.strip()

    if assert_expr is None:
        auto_expr = infer_assertion_from_rule(spec)
        if auto_expr is not None:
            assert_expr = auto_expr

    return {
        "src_file": src_file,
        "line_no": line_no,
        "rule_id": rule_id,
        "assert_expr": assert_expr,
        "raw_spec": spec,
    }


def extract_code_context(
    src_root: pathlib.Path,
    rel_file: str,
    line_no: int,
    radius: int = 8,
) -> str:
    src_path = (src_root / rel_file).resolve()
    if not src_path.is_file():
        return f"// WARNING: could not find source file at {src_path}\n"

    lines = src_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    idx = max(0, line_no - 1)
    start = max(0, idx - radius)
    end = min(len(lines), idx + radius + 1)

    snippet_lines = []
    for i in range(start, end):
        prefix = ">> " if (i + 1) == line_no else "   "
        snippet_lines.append(f"{prefix}{i+1:5d}: {lines[i]}")
    return "\n".join(snippet_lines)


# --------------------------------------------------------------------
# LLM call + response handling
# --------------------------------------------------------------------

SYSTEM_PROMPT = """\
You are an expert in C, libxml2, static analysis, and KLEE-based symbolic execution.
Your task is to generate a SINGLE C FILE harness for KLEE, given:
  - an SA (static analysis) spec describing a suspected vulnerability
  - a file name and line number
  - a small code snippet around that line

The harness must:
  - be valid C99
  - compile with clang -emit-llvm -g -O0 -c harness.c
  - link against the libxml2 project, which is compiled separately
  - include "klee/klee.h"
  - NOT define SAILR_ASSERT itself; instead, assume SAILR_ASSERT(cond)
    is provided by a header passed via compiler flags.
  - use SAILR_ASSERT(<expr>) if an assertion expression is given.
  - place SAILR_ASSERT and a reachability marker:
        klee_assert(0 && "SAILR_REACH_ASSERT");
    on or near the path that reaches the target line.
  - create any symbolic inputs via klee_make_symbolic
  - call appropriate libxml2 functions (e.g., xmlReadMemory, parser APIs)
    so that the target file/line is plausibly reachable.

IMPORTANT RULES:
  - Output ONLY the C code (no markdown, no comments outside C, no explanations).
  - Use a single entrypoint function: int main(void).
  - Do not call exit(), abort(), or similar; just return from main.
"""


def build_user_prompt(
    src_file: str,
    line_no: int,
    rule_id: str,
    assert_expr: Optional[str],
    snippet: str,
    raw_spec: Dict[str, Any],
) -> str:
    spec_pretty = json.dumps(raw_spec, indent=2, sort_keys=True)
    assert_part = assert_expr or "<NONE>"

    return textwrap.dedent(
        f"""\
        SA-DRIVEN LLM HARNESS REQUEST

        Target:
          - source file: {src_file}
          - line: {line_no}
          - rule id: {rule_id}

        Suggested assertion expression (if any, in C):
          {assert_part}

        Relevant code snippet:
        ----------------------
        {snippet}
        ----------------------

        Full SA spec (JSON):
        --------------------
        {spec_pretty}
        --------------------

        Please generate a single C harness file for KLEE, following the system
        instructions. Remember:
          * include "klee/klee.h"
          * DO NOT define SAILR_ASSERT; assume it comes from a header
          * use SAILR_ASSERT(<expr>) if the suggested assertion is not <NONE>
          * insert klee_assert(0 && "SAILR_REACH_ASSERT"); near the vulnerable path
          * produce ONLY C code as the final answer (no ``` fences).
        """
    )


def extract_c_code(text: str) -> str:
    """
    If the model returns ```c ... ``` or ``` ... ```, strip the fences.
    Otherwise, return the text as-is.
    """
    stripped = text.strip()
    if stripped.startswith("```"):
        lines = stripped.splitlines()
        if len(lines) >= 2:
            if lines[0].startswith("```"):
                lines = lines[1:]
            if lines and lines[-1].startswith("```"):
                lines = lines[:-1]
            return "\n".join(lines).strip()
    return stripped


# --------------------------------------------------------------------
# Main
# --------------------------------------------------------------------

def main() -> None:
    ap = argparse.ArgumentParser(
        description="Generate a single-shot LLM harness from an SA spec."
    )
    ap.add_argument(
        "--src-root",
        required=True,
        help="Project source root (prefix for spec-relative file paths)",
    )
    ap.add_argument(
        "--spec",
        required=True,
        help="Path to SA spec JSON",
    )
    ap.add_argument(
        "--out-c",
        required=True,
        help="Path to write generated harness C file",
    )
    args = ap.parse_args()

    src_root = pathlib.Path(args.src_root).resolve()
    spec_path = pathlib.Path(args.spec).resolve()
    out_c = pathlib.Path(args.out_c).resolve()
    out_c.parent.mkdir(parents=True, exist_ok=True)

    # This id is used for LLM logging (llm_usage.tsv)
    spec_id = spec_path.stem

    parsed = parse_spec(spec_path)
    src_file = parsed["src_file"]
    line_no = parsed["line_no"]
    rule_id = parsed["rule_id"]
    assert_expr = parsed["assert_expr"]
    raw_spec = parsed["raw_spec"]

    snippet = extract_code_context(src_root, src_file, line_no)

    user_prompt = build_user_prompt(
        src_file=src_file,
        line_no=line_no,
        rule_id=rule_id,
        assert_expr=assert_expr,
        snippet=snippet,
        raw_spec=raw_spec,
    )

    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user", "content": user_prompt},
    ]

    print(f"[i] Calling LLM for spec: {spec_path.name}", flush=True)
    # Pass spec_id so llm_utils can log usage per finding
    resp = llm_chat(messages, spec_id=spec_id)

    # llm_chat currently returns a string, but keep this defensive check
    if isinstance(resp, dict):
        text = resp["choices"][0]["message"]["content"]
    else:
        text = str(resp)

    c_code = extract_c_code(text)
    if not c_code.strip():
        raise RuntimeError(f"Empty harness generated for spec {spec_path}")

    out_c.write_text(c_code, encoding="utf-8")
    print(f"[i] LLM harness written to: {out_c}", flush=True)


if __name__ == "__main__":
    main()
