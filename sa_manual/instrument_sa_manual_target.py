#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
instrument_sa_manual_target.py

Injects SA-Driven Manual Harness assertions into a single source file:

  - Uses SA spec JSON to find:
      * source file
      * line number
      * assertion expression (if available or inferred)
  - If spec has no assertion:
      * Try to infer one from rule-specific metadata (e.g., memfunc length misuse)
      * If inference succeeds, write it back into the spec as "assert_expr"
  - Inserts:
      * SAILR_ASSERT(<expr>);                 // if assertion is present
      * klee_assert(0 && "SAILR_REACH_ASSERT");
    immediately BEFORE the target line.

If we still have no assertion after inference, we instrument a reachability-only
target (no SAILR_ASSERT, only the reachability marker).

Exit codes:
  0 = success
  non-zero = hard failure (missing file/line, I/O errors, etc.)
"""

import argparse
import json
import pathlib
from typing import Any, Dict, Optional, Tuple


# --------------------------------------------------------------------
# Generic helpers
# --------------------------------------------------------------------

def read_json(path: pathlib.Path) -> Dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: pathlib.Path, obj: Dict[str, Any]) -> None:
    path.write_text(json.dumps(obj, indent=2, sort_keys=True), encoding="utf-8")


def _first_existing(d: Dict[str, Any], keys: Tuple[str, ...]) -> Optional[Any]:
    for k in keys:
        if k in d and d[k] is not None:
            return d[k]
    return None


def _nested_lookup(d: Dict[str, Any], paths: Tuple[Tuple[str, ...], ...]) -> Optional[Any]:
    """
    Try multiple candidate nested paths like:
      ("location", "file"), ("target", "file"), ...
    Return the first non-None value found.
    """
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


# --------------------------------------------------------------------
# Rule-specific assertion inference
# --------------------------------------------------------------------

def infer_assertion_from_rule(spec: Dict[str, Any]) -> Optional[str]:
    """
    Best-effort inference of an assertion expression from the SA spec.

    For now we implement a heuristic for:
      - local.oob.memfunc.length-misuse[.maxcover[.v5]]

    The return value should be a C boolean expression (no trailing ';').
    """
    # Try to get some sort of rule id
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

    # Normalize
    rule_id = rule_id.lower()

    # ----------------------------------------------------------------
    # Example: local.oob.memfunc.length-misuse.maxcover.v5
    #  We want something like:  len_var <= bound_var
    # ----------------------------------------------------------------
    if "oob" in rule_id and "memfunc" in rule_id and "length-misuse" in rule_id:
        # Heuristic: look for obvious length / bound variables in the spec.
        len_var = _first_existing(
            spec,
            (
                "len_var",
                "length_var",
                "size_var",
                "size_arg",
                "lenParam",
            ),
        )

        bound_var = _first_existing(
            spec,
            (
                "buf_len_var",
                "bound_var",
                "capacity_var",
                "max_len_var",
                "limit_var",
            ),
        )

        # Sometimes these live under a "memfunc" / "call" / "witness" node
        if len_var is None or bound_var is None:
            memfunc = spec.get("memfunc") or spec.get("call") or spec.get("witness")
            if isinstance(memfunc, dict):
                if len_var is None:
                    len_var = _first_existing(
                        memfunc,
                        (
                            "len_var",
                            "length_var",
                            "size_var",
                            "size_arg",
                        ),
                    )
                if bound_var is None:
                    bound_var = _first_existing(
                        memfunc,
                        (
                            "buf_len_var",
                            "bound_var",
                            "capacity_var",
                            "max_len_var",
                            "limit_var",
                        ),
                    )

        if isinstance(len_var, str) and isinstance(bound_var, str):
            expr = f"{len_var} <= {bound_var}"
            return expr

        if isinstance(len_var, str):
            expr = f"{len_var} >= 0"
            return expr

        return None

    # ----------------------------------------------------------------
    # Other rule families can be added here in the future.
    # ----------------------------------------------------------------
    return None


# --------------------------------------------------------------------
# Spec loader (with assertion inference + in-place spec update)
# --------------------------------------------------------------------

def load_spec(spec_path: pathlib.Path) -> Tuple[str, int, Optional[str]]:
    """
    Extract:
      - src file (absolute or project-relative path)
      - line number
      - assertion expression (if present or inferred)

    If no assertion is present:
      - attempt to infer one from the rule
      - if successful, write it back into the spec as "assert_expr"
    """
    spec = read_json(spec_path)

    # --- File ----------------------------------------------------------------
    file_candidates_paths = (
        ("file",),
        ("source_file",),
        ("location", "file"),
        ("target", "file"),
        ("vuln", "file"),
    )
    src_file = _nested_lookup(spec, file_candidates_paths)

    # --- Line ----------------------------------------------------------------
    line_candidates_paths = (
        ("line",),
        ("location", "line"),
        ("target", "line"),
        ("vuln", "line"),
    )
    line_val = _nested_lookup(spec, line_candidates_paths)
    line_no: Optional[int] = None
    if isinstance(line_val, int):
        line_no = line_val
    elif isinstance(line_val, str):
        try:
            line_no = int(line_val)
        except ValueError:
            line_no = None

    # --- Assertion expression (may be missing) -------------------------------
    assert_candidates_paths = (
        ("assert_expr",),
        ("assertion",),
        ("assertion_expr",),
        ("assert", "expr"),
        ("assert", "c_expr"),
        ("assertion", "c_expr"),
        ("vuln", "assert_expr"),
        ("vuln", "assertion", "c_expr"),
        ("vuln", "assertion", "expr"),
        ("property", "c_expr"),
    )
    assert_expr_val = _nested_lookup(spec, assert_candidates_paths)
    assert_expr: Optional[str] = None
    if isinstance(assert_expr_val, str):
        assert_expr = assert_expr_val.strip()
        if assert_expr == "":
            assert_expr = None

    # If assertion missing, try to infer from rule and update spec JSON
    if assert_expr is None:
        auto_expr = infer_assertion_from_rule(spec)
        if auto_expr is not None:
            assert_expr = auto_expr
            print(
                f"[i] Inferred assertion for {spec_path.name}: {assert_expr}",
                flush=True,
            )
            spec["assert_expr"] = assert_expr
            write_json(spec_path, spec)
        else:
            print(
                f"[warn] No assertion found or inferred for {spec_path.name}; "
                f"will instrument reachability-only target.",
                flush=True,
            )

    if not src_file or line_no is None:
        raise ValueError(
            f"Spec {spec_path} missing file/line.\n"
            f"  file={src_file}, line={line_no}"
        )

    return str(src_file), int(line_no), assert_expr


# --------------------------------------------------------------------
# Injection of assertions into source
# --------------------------------------------------------------------

def inject_assertions(
    src_root: pathlib.Path,
    src_file: str,
    line_no: int,
    assert_expr: Optional[str],
    out_c_path: pathlib.Path,
) -> pathlib.Path:
    """
    Read `src_root/src_file` and write an instrumented copy to `out_c_path`,
    injecting:

      if assert_expr is not None:
          SAILR_ASSERT(assert_expr);
      klee_assert(0 && "SAILR_REACH_ASSERT");

    *before* the specified line_no (1-based).
    """
    src_path = (src_root / src_file).resolve()
    if not src_path.is_file():
        raise FileNotFoundError(f"Source file not found: {src_path}")

    out_c_path.parent.mkdir(parents=True, exist_ok=True)

    lines = src_path.read_text(encoding="utf-8", errors="ignore").splitlines(keepends=True)

    if line_no < 1 or line_no > len(lines) + 1:
        raise ValueError(f"Invalid line number {line_no} for file {src_path} (len={len(lines)})")

    insert_idx = line_no - 1  # list is 0-based

    injected: list[str] = []

    if assert_expr is not None:
        injected.append(f"    SAILR_ASSERT({assert_expr});\n")
    else:
        injected.append("    /* SAILR: no assertion found/inferred; reachability-only target */\n")

    injected.append('    klee_assert(0 && "SAILR_REACH_ASSERT");\n')

    new_lines = lines[:insert_idx] + injected + lines[insert_idx:]
    out_c_path.write_text("".join(new_lines), encoding="utf-8")

    return out_c_path


# --------------------------------------------------------------------
# Main
# --------------------------------------------------------------------

def main() -> None:
    ap = argparse.ArgumentParser(
        description="Instrument a single SA target with SAILR/KLEE assertions (SA-driven manual harness)."
    )
    ap.add_argument(
        "--src-root",
        required=True,
        help="Project source root (prefix for spec file paths)",
    )
    ap.add_argument(
        "--spec",
        required=True,
        help="Path to SA spec JSON",
    )
    ap.add_argument(
        "--out-c",
        required=True,
        help="Path to write the instrumented C file",
    )
    args = ap.parse_args()

    src_root = pathlib.Path(args.src_root).resolve()
    spec_path = pathlib.Path(args.spec).resolve()
    out_c = pathlib.Path(args.out_c).resolve()

    src_file, line_no, assert_expr = load_spec(spec_path)

    if assert_expr is not None:
        print(
            f"[i] Using assertion for {spec_path.name}: file={src_file}, line={line_no}, "
            f"assert_expr={assert_expr}",
            flush=True,
        )

    inst_path = inject_assertions(
        src_root=src_root,
        src_file=src_file,
        line_no=line_no,
        assert_expr=assert_expr,
        out_c_path=out_c,
    )

    print(f"[i] Instrumented file written to: {inst_path}", flush=True)


if __name__ == "__main__":
    main()
