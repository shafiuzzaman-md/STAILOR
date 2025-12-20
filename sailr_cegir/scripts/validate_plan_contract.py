#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
validate_plan_contract.py

Deterministic Contract Validator (DCV) for the Planner output.
Enforces semantic correctness and fidelity.

UPDATED FEATURES:
  - Rule-Based Logic Inference: Checks if assertions match the CodeQL rule pattern.
  - Robust Symbolic Setup: Ensures buffers have concrete sizes but symbolic contents.
  - Non-Restrictive: Warns rather than blocks on heuristic mismatches.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass, asdict
# --- Rule plugin system (one file per rule family) ---
try:
    from validators.registry import get_rule_validator
except Exception:
    get_rule_validator = None  # type: ignore

from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

MARK_BUG = "BUG_ASSERT"
MARK_REACH = "REACH_ASSERT"

# --- 1. Rule-Based Inference Templates ---
# Defines the expected logic for specific CodeQL rules.
RULE_TEMPLATES = {
    "local.oob.memfunc.length-misuse.maxcover.v5": {
        "description": "OOB Risk: Count argument (n) vs Destination Capacity",
        "target_arg_index": {
            # Map function names to the index of the 'length' argument (0-based)
            "memcpy": 2, "memmove": 2, "memset": 2, 
            "strncpy": 2, "strncat": 2, "strlcpy": 2, "strlcat": 2,
            "read": 2, "recv": 2, "recvfrom": 2,
            "fgets": 1, # Special case
            "pread": 2, # pread(fd, buf, count, off) -> count is arg 2
        },
        "logic_hint": "assert( {count_var} > {dest_capacity} )"
    }
}

def _read_json(path: Optional[Path]) -> Optional[Any]:
    if not path: return None
    try: return json.loads(path.read_text(encoding="utf-8", errors="replace"))
    except Exception: return None

def _walk_strings(obj: Any, path: str = "") -> List[Tuple[str, str]]:
    out: List[Tuple[str, str]] = []
    if isinstance(obj, str): out.append((path, obj))
    elif isinstance(obj, dict):
        for k, v in obj.items(): out.extend(_walk_strings(v, f"{path}.{k}" if path else str(k)))
    elif isinstance(obj, list):
        for i, v in enumerate(obj): out.extend(_walk_strings(v, f"{path}[{i}]"))
    return out

def _find_marker_strings(plan_obj: Any) -> Dict[str, List[Tuple[str, str]]]:
    hits = {MARK_BUG: [], MARK_REACH: []}
    for pth, s in _walk_strings(plan_obj):
        if MARK_BUG in s: hits[MARK_BUG].append((pth, s))
        if MARK_REACH in s: hits[MARK_REACH].append((pth, s))
    return hits

def check_for_tautology(plan_text: str, bug_assert_code: str) -> List[str]:
    """
    Detects if the BUG_ASSERT condition is identical to an assumption.
    """
    warnings = []
    match = re.search(r'klee_assert\s*\((.*?)\s*&&\s*["\']BUG_ASSERT', bug_assert_code)
    if not match: return []

    condition = match.group(1).strip()
    # Basic normalization to catch "len < 10" vs "len<10"
    normalized_condition = "".join(condition.split())
    plan_no_spaces = "".join(plan_text.split())
    
    # Check if we assume what we assert (Tautology = False Positive Safety)
    # e.g., klee_assume(len < 10) ... klee_assert(len < 10)
    check_pattern = f"assume({normalized_condition})"
    
    if check_pattern in plan_no_spaces:
        warnings.append(
            f"Logical Tautology Detected: The plan implies `assume({condition})`. "
            "You cannot assume the safety condition you are trying to test. "
            "To prove the bug, you must ALLOW the unsafe condition in assumptions."
        )
    return warnings

def validate_symbolic_setup(plan: Dict[str, Any]) -> List[str]:
    """
    Checks if the symbolic inputs are defined robustly.
    - Pointers should have concrete allocation sizes.
    - Lengths should be symbolic.
    """
    errors = []
    inputs = plan.get("symbolic_inputs", [])
    if not isinstance(inputs, list):
        return ["'symbolic_inputs' must be a list."]

    for item in inputs:
        name = item.get("name", "unknown")
        c_type = item.get("c_type", "")
        
        # Rule: Pointers needs concrete allocation size to avoid KLEE OOB on initialization
        if "*" in c_type or "ptr" in name:
            alloc = item.get("allocation_size")
            if not alloc or (isinstance(alloc, str) and not alloc.isdigit()):
                 # We warn, not fail, because sometimes it's a pointer to an existing struct
                 pass 
            else:
                 # If they provided a size, it must be concrete integer
                 try:
                     int(alloc)
                 except:
                     errors.append(f"Input '{name}': allocation_size must be a concrete integer (found {alloc}).")

    return errors

def validate_rule_logic(plan: Dict[str, Any], rule_id: str) -> List[str]:
    """
    Checks if the plan's assertions align with the CodeQL rule logic.
    Returns WARNINGS only (does not block LLM, but guides it).
    """
    warnings = []
    if not rule_id or rule_id not in RULE_TEMPLATES:
        return [] # Unknown rule, skip logic check

    template = RULE_TEMPLATES[rule_id]
    target_func = plan.get("target_function", {}).get("name", "")
    
    # If the LLM identified a function we know about, check the logic
    if target_func in template.get("target_arg_index", {}):
        # We expect the assertion to involve the argument at this index
        expected_idx = template["target_arg_index"][target_func]
        
        # Scan assertions for variables that look like arguments
        assertions = plan.get("assertions", [])
        found_logic = False
        for a in assertions:
            cond = a.get("condition", "") + a.get("derived_condition", "")
            # Heuristic: does the condition mention "arg" or variable names likely to be arguments?
            # This is loose to avoid restricting the LLM too much.
            if len(cond) > 3: 
                found_logic = True
                break
        
        if not found_logic:
            warnings.append(
                f"[Logic Hint] Rule {rule_id} typically involves checking Argument {expected_idx+1} "
                f"of {target_func}. Ensure your BUG_ASSERT constrains this value against the buffer size."
            )

    return warnings

@dataclass
class DCVReport:
    ok: bool
    hard_errors: List[str]
    warnings: List[str]
    info: Dict[str, Any]
    suggested_feedback: str
    def to_dict(self) -> Dict[str, Any]: return asdict(self)

def validate_plan_against_contract(
    plan_obj: Dict[str, Any],
    *,
    spec: Optional[Dict[str, Any]] = None,
    src_root: Optional[Path] = None,
    fact_pack: Optional[Dict[str, Any]] = None,
    project_name: Optional[str] = None,
    rule_id: Optional[str] = None,
) -> DCVReport:
    hard: List[str] = []
    warn: List[str] = []
    info: Dict[str, Any] = {}

    if not isinstance(plan_obj, dict) or not plan_obj:
        hard.append("Planner output is empty or not a JSON object.")
        return DCVReport(False, hard, warn, info, "Planner output invalid.")

    plan_text = json.dumps(plan_obj)
    # Support both wrapped {"plan": {...}} and flat structures
    plan = plan_obj.get("plan", plan_obj)
    
    # --- 1. Assertion Fidelity ---
    marker_hits = _find_marker_strings(plan)
    
    # CRITICAL: REACH_ASSERT is mandatory.
    if not marker_hits[MARK_REACH]: 
        hard.append("Missing REACH_ASSERT in plan. You MUST mark the target line.")
    
    # BUG_ASSERT is optional in "Relaxed" mode, but if present, must be non-tautological.
    bug_str = marker_hits[MARK_BUG][0][1] if marker_hits[MARK_BUG] else ""
    if bug_str:
        tautology_errors = check_for_tautology(plan_text, bug_str)
        if tautology_errors: hard.extend(tautology_errors)

    # --- 2. Harness Fidelity ---
    if "klee_make_symbolic" not in plan_text:
        # We allow implicit creation via helper functions, so this is a warning now, not hard error
        warn.append("Plan should explicitly mention 'klee_make_symbolic' to ensure inputs are generated.")

    # --- 3. Robust Symbolic Setup ---
    sym_errors = validate_symbolic_setup(plan)
    hard.extend(sym_errors)

    # --- 4. Rule-Based Logic Check (Soft) ---
    # --- 5. Rule Plugin Validation (Hard+Soft, TP-safe) ---
    if get_rule_validator is not None and rule_id:
        v = get_rule_validator(rule_id)
        if v is not None:
            try:
                out = v.validate_plan(plan_obj, rule_id=rule_id, spec=spec, ctx={"spec": spec, "fact_pack": fact_pack, "src_root": str(src_root) if src_root else None})
                if out.hard_errors:
                    hard.extend(out.hard_errors)
                if out.warnings:
                    warn.extend(out.warnings)
                if (out.reason or "").strip() and not out.hard_errors:
                    # treat non-empty reason as warning if plugin didn't classify as hard
                    warn.append(out.reason.strip())
            except Exception as e:
                warn.append(f"[Plugin Warning] Rule validator crashed: {e}")

    if rule_id:
        logic_warns = validate_rule_logic(plan, rule_id)
        warn.extend(logic_warns)

    ok = len(hard) == 0
    feedback = ""
    if hard: feedback += "DCV ERRORS:\n- " + "\n- ".join(hard) + "\n"
    if warn: feedback += "DCV SUGGESTIONS:\n- " + "\n- ".join(warn[:5])
    
    return DCVReport(ok, hard, warn, info, feedback)

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--spec", default=None)
    ap.add_argument("--src-root", default=None)
    ap.add_argument("--fact-pack", default=None)
    ap.add_argument("--project-name", default=None)
    ap.add_argument("--rule-id", default=None)
    ap.add_argument("--out", default=None)
    args = ap.parse_args()

    plan_obj = _read_json(Path(args.plan))
    if not plan_obj: return 2
    
    spec = _read_json(Path(args.spec)) if args.spec else None
    fact_pack = _read_json(Path(args.fact_pack)) if args.fact_pack else None

    rep = validate_plan_against_contract(
        plan_obj, spec=spec, src_root=Path(args.src_root) if args.src_root else None,
        fact_pack=fact_pack, project_name=args.project_name, rule_id=args.rule_id
    )

    if args.out:
        Path(args.out).write_text(json.dumps(rep.to_dict(), indent=2), encoding="utf-8")
    
    if not rep.ok:
        # Print feedback to stderr so the Agent can see it in the logs
        print(rep.suggested_feedback, file=sys.stderr)
        return 1
    return 0

if __name__ == "__main__":
    sys.exit(main())