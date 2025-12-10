#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_sa_llm_harness.py

Baseline: SA-driven LLM Harness (single-shot).

Given:
  - SA spec JSON describing a target (file, line, rule, etc.)
  - Project source root

Do (per spec):
  - Load SA spec
  - Extract:
      * source file (relative path)
      * line number
      * rule id (if any)
      * assertion expression (if present or inferred)
      * a small code snippet around the target line for context
  - Build a prompt using external prompt templates:
      * system prompt text file
      * user prompt template text file with simple placeholders
  - Call `llm_chat` ONCE to generate a full KLEE harness TU in C, which:
      * includes "klee/klee.h"
      * sets up symbolic inputs
      * calls appropriate project/libxml2 entrypoints so that code near the
        target is plausibly reachable
      * uses SAILR_ASSERT(<expr>) (if an assertion expression is given)
      * inserts a reachability assertion:
            klee_assert(0 && "SAILR_REACH_ASSERT");
  - Write the resulting C code to --out-c (this TU is the file KLEE runs on).

Additionally:
  - Save the prompt + response under:
        <SPEC_OUT_DIR>/prompts/phase_single/messages.json
        <SPEC_OUT_DIR>/prompts/phase_single/response.txt
  - Append a JSONL trace record to:
        <SPEC_OUT_DIR>/debug/llm_trace.jsonl
  - Record where SAILR_ASSERT / SAILR_VULN_ASSERT and reachability markers
    appear in harness.c:
        <SPEC_OUT_DIR>/debug/assert_locations.json
"""

import argparse
import json
import pathlib
import textwrap
from datetime import datetime, timezone
from typing import Any, Dict, Optional, Tuple, List

from llm_utils import llm_chat  # type: ignore


# --------------------------------------------------------------------
# Generic helpers for dirs + logging
# --------------------------------------------------------------------

def ensure_dir(p: pathlib.Path) -> pathlib.Path:
    p.mkdir(parents=True, exist_ok=True)
    return p


def log_llm_step(
    trace_path: pathlib.Path,
    *,
    spec_id: str,
    phase: str,
    messages: List[Dict[str, str]],
    response_text: str,
) -> None:
    """Append a single LLM interaction to JSONL trace."""
    record: Dict[str, Any] = {
        "timestamp": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "spec_id": spec_id,
        "phase": phase,
        "messages": messages,
        "response": response_text,
    }
    with trace_path.open("a", encoding="utf-8") as f:
        f.write(json.dumps(record, ensure_ascii=False))
        f.write("\n")


def save_prompts(
    prompts_root: pathlib.Path,
    phase: str,
    messages: List[Dict[str, str]],
    response_text: str,
) -> None:
    """
    Save prompts and responses in a separate prompts/ directory:

      prompts/phase_single/messages.json
      prompts/phase_single/response.txt
    """
    phase_dir = prompts_root / phase
    ensure_dir(phase_dir)

    (phase_dir / "messages.json").write_text(
        json.dumps(messages, indent=2, ensure_ascii=False),
        encoding="utf-8",
    )
    (phase_dir / "response.txt").write_text(response_text, encoding="utf-8")


def traced_llm_chat(
    messages: List[Dict[str, str]],
    *,
    trace_path: pathlib.Path,
    prompts_root: pathlib.Path,
    spec_id: str,
    phase: str,
) -> str:
    """Wrapper around llm_chat that logs prompt/response and writes prompt files."""
    # Single-shot call, but fully traced
    text = llm_chat(messages, spec_id=spec_id)  # type: ignore
    log_llm_step(trace_path, spec_id=spec_id, phase=phase, messages=messages, response_text=text)
    save_prompts(prompts_root, phase, messages, text)
    return text


def find_assert_locations(c_code: str) -> Dict[str, Any]:
    """
    Scan the generated harness for:
      - SAILR_ASSERT(...) or SAILR_VULN_ASSERT(...) => 'vuln' assertions
      - klee_assert(... "SAILR_REACH_ASSERT" ...)   => 'reach' assertions

    Returns a dict with line numbers and snippets for debugging.
    """
    lines = c_code.splitlines()
    vuln_sites = []
    reach_sites = []

    for idx, line in enumerate(lines, start=1):
        stripped = line.strip()
        if ("SAILR_ASSERT" in stripped or "SAILR_VULN_ASSERT" in stripped) and "SAILR_REACH_ASSERT" not in stripped:
            vuln_sites.append({"line": idx, "text": stripped})
        if "SAILR_REACH_ASSERT" in stripped:
            reach_sites.append({"line": idx, "text": stripped})

    return {
        "vuln_asserts": vuln_sites,
        "reach_asserts": reach_sites,
    }


# --------------------------------------------------------------------
# Basic JSON helpers (as in your old script)
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
# Prompt loading + construction
# --------------------------------------------------------------------

def load_text(path: pathlib.Path) -> str:
    return path.read_text(encoding="utf-8")


def build_user_prompt_from_template(
    template_text: str,
    *,
    src_root: pathlib.Path,
    src_file: str,
    line_no: int,
    rule_id: str,
    assert_expr: Optional[str],
    snippet: str,
    raw_spec: Dict[str, Any],
) -> str:
    """
    Simple token-based templating (no .format() to avoid conflicts with JSON braces).

    Supported tokens in the template:
      __SRC_ROOT__
      __SRC_FILE__
      __LINE_NO__
      __RULE_ID__
      __ASSERT_EXPR__
      __SNIPPET__
      __SPEC_JSON__
    """
    spec_pretty = json.dumps(raw_spec, indent=2, sort_keys=True)
    assert_part = assert_expr or "<NONE>"

    prompt = template_text
    prompt = prompt.replace("__SRC_ROOT__", str(src_root))
    prompt = prompt.replace("__SRC_FILE__", src_file)
    prompt = prompt.replace("__LINE_NO__", str(line_no))
    prompt = prompt.replace("__RULE_ID__", rule_id)
    prompt = prompt.replace("__ASSERT_EXPR__", assert_part)
    prompt = prompt.replace("__SNIPPET__", snippet)
    prompt = prompt.replace("__SPEC_JSON__", spec_pretty)
    return prompt


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

def maybe_inject_vuln_assert(
    c_code: str,
    assert_expr: Optional[str],
) -> str:
    """
    If we have an assertion expression from the spec AND the harness
    has no SAILR_ASSERT/SAILR_VULN_ASSERT call, inject:

        SAILR_ASSERT(<assert_expr>);

    immediately before the reachability assertion:

        klee_assert(0 && "SAILR_REACH_ASSERT");

    This guarantees a vuln assertion site for KLEE, without manual edits.
    """
    if not assert_expr:
        # No expression to enforce
        return c_code

    # If model already inserted SAILR_ASSERT or SAILR_VULN_ASSERT, do nothing
    if "SAILR_ASSERT" in c_code or "SAILR_VULN_ASSERT" in c_code:
        return c_code

    marker = 'klee_assert(0 && "SAILR_REACH_ASSERT");'
    idx = c_code.find(marker)

    vuln_line = f"    SAILR_ASSERT({assert_expr});\n"

    if idx != -1:
        # Insert vuln assertion immediately before reach marker
        return c_code[:idx] + vuln_line + c_code[idx:]
    else:
        # Fallback: insert near end of main, before 'return 0;'
        ret_idx = c_code.rfind("return 0;")
        if ret_idx != -1:
            return c_code[:ret_idx] + vuln_line + c_code[ret_idx:]
        # Worst-case: just append at the end
        return c_code + "\n" + vuln_line

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
    ap.add_argument(
        "--system-prompt",
        default=None,
        help="Path to system prompt text file (default: sa_llm/prompts/sa_llm_system.txt)",
    )
    ap.add_argument(
        "--user-prompt",
        default=None,
        help="Path to user prompt template text file (default: sa_llm/prompts/sa_llm_user_single_shot.txt)",
    )
    args = ap.parse_args()

    src_root = pathlib.Path(args.src_root).resolve()
    spec_path = pathlib.Path(args.spec).resolve()
    out_c = pathlib.Path(args.out_c).resolve()
    out_c.parent.mkdir(parents=True, exist_ok=True)

    # Per-spec dirs (based on harness location)
    spec_root = out_c.parent
    debug_dir = ensure_dir(spec_root / "debug")
    prompts_root = ensure_dir(spec_root / "prompts")
    trace_path = debug_dir / "llm_trace.jsonl"
    assert_loc_path = debug_dir / "assert_locations.json"

    # Default prompt paths (if not overridden)
    script_dir = pathlib.Path(__file__).resolve().parent
    system_prompt_path = (
        pathlib.Path(args.system_prompt).resolve()
        if args.system_prompt
        else script_dir / "prompts" / "sa_llm_system.txt"
    )
    user_prompt_path = (
        pathlib.Path(args.user_prompt).resolve()
        if args.user_prompt
        else script_dir / "prompts" / "sa_llm_user_single_shot.txt"
    )

    system_prompt = load_text(system_prompt_path)
    user_template = load_text(user_prompt_path)

    # This id is used for LLM logging (llm_usage.tsv)
    spec_id = spec_path.stem

    parsed = parse_spec(spec_path)
    src_file = parsed["src_file"]
    line_no = parsed["line_no"]
    rule_id = parsed["rule_id"]
    assert_expr = parsed["assert_expr"]
    raw_spec = parsed["raw_spec"]

    # Extract local snippet around target line for context
    snippet = extract_code_context(src_root, src_file, line_no)

    user_prompt = build_user_prompt_from_template(
        user_template,
        src_root=src_root,
        src_file=src_file,
        line_no=line_no,
        rule_id=rule_id,
        assert_expr=assert_expr,
        snippet=snippet,
        raw_spec=raw_spec,
    )

    messages: List[Dict[str, str]] = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt},
    ]

    print(f"[i] Calling LLM for spec: {spec_path.name}", flush=True)

    # Single-shot LLM call, but traced + saved
    resp = traced_llm_chat(
        messages,
        trace_path=trace_path,
        prompts_root=prompts_root,
        spec_id=spec_id,
        phase="phase_single",
    )

    # llm_chat returns a string in your setup; keep this defensive check
    if isinstance(resp, dict):
        text = resp["choices"][0]["message"]["content"]
    else:
        text = str(resp)

    c_code = extract_c_code(text)
    if not c_code.strip():
        raise RuntimeError(f"Empty harness generated for spec {spec_path}")

    # ------------------------------------------------------------------
    # Fallback: define SAILR_ASSERT if the model used it but did not
    # provide a definition in the TU.
    # ------------------------------------------------------------------
    if "SAILR_ASSERT" in c_code:
        prolog = (
            "#ifndef SAILR_ASSERT\n"
            "#define SAILR_ASSERT(cond) "
            "klee_assert((cond) && \"SAILR_VULN_ASSERT\")\n"
            "#endif\n\n"
        )
        c_code = prolog + c_code

    # ------------------------------------------------------------------
    # If we have an assertion expression from the spec AND the model
    # didn't create any vuln assertion, inject one right before the
    # reachability assertion.
    # ------------------------------------------------------------------
    c_code = maybe_inject_vuln_assert(c_code, assert_expr)

    # Write harness.c (single TU: main + assertions + harness logic)
    out_c.write_text(c_code, encoding="utf-8")

    print(f"[i] LLM harness written to: {out_c}", flush=True)

    # Find and record assertion locations for debugging
    locs = find_assert_locations(c_code)
    meta = {
        "spec_id": spec_id,
        "src_file": src_file,
        "target_line": line_no,
        "rule_id": rule_id,
        "assert_expr": assert_expr,
        "harness_asserts": locs,
    }
    assert_loc_path.write_text(json.dumps(meta, indent=2, ensure_ascii=False), encoding="utf-8")

    num_v = len(locs["vuln_asserts"])
    num_r = len(locs["reach_asserts"])
    print(f"[i] Assert locations: vuln={num_v}, reach={num_r}. Details in {assert_loc_path}", flush=True)


if __name__ == "__main__":
    main()
