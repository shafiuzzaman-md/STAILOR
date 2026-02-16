#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
validate_plan_contract.py

Deterministic Contract Validator (DCV) for the Planner output.
Enforces strict schema and logical consistency between the Strategy and the generated Plan.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple


MARK_BUG = "BUG_ASSERT"
MARK_REACH = "REACH_ASSERT"


# ---------------- Utilities ----------------

def _read_json(path: Optional[Path]) -> Optional[Any]:
    if not path:
        return None
    try:
        return json.loads(path.read_text(encoding="utf-8", errors="replace"))
    except Exception:
        return None


_simple_cmp_re = re.compile(r"^\s*(?P<a>.+?)\s*(?P<op><=|>=|==|!=|<|>)\s*(?P<b>.+?)\s*$")


def invert_simple_comparison(cond: str) -> Optional[str]:
    """Invert a simple binary comparison, e.g., 'x <= y' -> 'x > y'."""
    m = _simple_cmp_re.match(cond.strip())
    if not m:
        return None
    a, op, b = m.group("a").strip(), m.group("op"), m.group("b").strip()
    inv = {"<": ">=", "<=": ">", ">": "<=", ">=": "<", "==": "!=", "!=": "=="}.get(op)
    if not inv:
        return None
    return f"{a} {inv} {b}"


def _norm_ws(s: str) -> str:
    return "".join((s or "").split())


def _extract_assume_expr(s: str) -> Optional[str]:
    """Extract the expression inside klee_assume(<expr>) if present."""
    m = re.search(r"klee_assume\s*\(\s*(.*?)\s*\)\s*;?", s)
    if not m:
        return None
    return m.group(1).strip()


def normalize_assertions(assertions: Any) -> List[Dict[str, Any]]:
    """
    Normalize planner assertions into a canonical shape.
    """
    out: List[Dict[str, Any]] = []
    if not isinstance(assertions, list):
        return out

    for a in assertions:
        if not isinstance(a, dict):
            continue

        aa = dict(a)  # preserve all extra keys
        kind = (aa.get("kind") or "").strip().lower()
        aid = (aa.get("id") or "").strip()

        if not kind:
            if aid == MARK_BUG:
                kind = "bug"
            elif aid == MARK_REACH:
                kind = "reach"

        if not aid:
            if kind == "bug":
                aid = MARK_BUG
            elif kind == "reach":
                aid = MARK_REACH

        # Prefer explicit condition/expr; fall back to legacy predicate if needed.
        cond = (aa.get("condition") or aa.get("expr") or "").strip()
        if not cond:
            legacy_pred = (aa.get("predicate") or "").strip()
            if legacy_pred:
                cond = legacy_pred

        if (not cond) and kind == "reach":
            cond = "1"

        aa["kind"] = kind
        aa["id"] = aid
        aa["condition"] = cond
        out.append(aa)

    return out


# ---------------- Core checks ----------------

def validate_entrypoint(plan: Dict[str, Any]) -> List[str]:
    errs: List[str] = []
    ep = plan.get("entrypoint")
    if not isinstance(ep, dict):
        return ["Plan must contain an 'entrypoint' object."]
    name = (ep.get("name") or "").strip()
    if not name:
        errs.append("entrypoint.name is required and must be non-empty.")
    args = ep.get("arguments", [])
    if args is not None and not isinstance(args, list):
        errs.append("entrypoint.arguments must be a list if provided.")
    cons = ep.get("constraints", [])
    if cons is not None and not isinstance(cons, list):
        errs.append("entrypoint.constraints must be a list if provided.")
    return errs


def validate_symbolic_setup(plan: Dict[str, Any]) -> List[str]:
    errs: List[str] = []
    inputs = plan.get("symbolic_inputs", [])
    if not isinstance(inputs, list) or not inputs:
        return ["Plan must define non-empty 'symbolic_inputs' list."]

    for item in inputs:
        if not isinstance(item, dict):
            errs.append("Each entry in 'symbolic_inputs' must be an object.")
            continue

        name = item.get("name")
        typ = (item.get("type") or "").strip()
        mode = (item.get("mode") or "symbolic").strip()

        if not name or not isinstance(name, str):
            errs.append("Each symbolic input must have a string 'name'.")
            continue
        if not typ:
            errs.append(f"Input '{name}': missing 'type'.")
            continue
        if mode not in ("symbolic", "concrete"):
            errs.append(f"Input '{name}': invalid mode '{mode}' (must be 'symbolic' or 'concrete').")
            continue

        is_pointer_like = ("*" in typ) or typ.endswith("[]") or typ.lower().endswith("*") or typ.lower().startswith("char *")

        if mode == "symbolic":
            if "value" in item and item.get("value") is not None:
                errs.append(f"Input '{name}': symbolic inputs must not provide a concrete 'value'.")
            if is_pointer_like:
                alloc_strategy = item.get("allocation_strategy")
                alloc_size = item.get("allocation_size")
                if alloc_strategy is None and alloc_size is None:
                    errs.append(
                        f"Input '{name}': pointer-like symbolic input must specify 'allocation_strategy' "
                        f"or explicit integer 'allocation_size'."
                    )
                if alloc_size is not None and (not isinstance(alloc_size, int) or alloc_size <= 0):
                    errs.append(f"Input '{name}': allocation_size must be a positive integer (found {alloc_size}).")
                if alloc_strategy is not None and not isinstance(alloc_strategy, str):
                    errs.append(f"Input '{name}': allocation_strategy must be a string.")
        else:
            if "value" not in item:
                errs.append(f"Input '{name}': concrete mode requires a 'value' field.")
    return errs

def validate_assertions(plan: Dict[str, Any], strategy: str = None) -> List[str]:
    """
    Validate assertion schema and strategy-specific oracle requirements.
    This ensures the Agent uses the correct BUG_ASSERT format (0 vs predicate) for the vulnerability type.
    """
    errs: List[str] = []
    assertions = normalize_assertions(plan.get("assertions", []))
    strategy_u = (strategy or "").strip().upper()

    # Frozen oracle enforcement (Phase I).
    fm = plan.get("frozen_meta", {}) if isinstance(plan, dict) else {}
    if isinstance(fm, dict) and fm.get("frozen_assertion_id"):
        fid = str(fm.get("frozen_assertion_id"))
        bugs = [a for a in assertions if isinstance(a, dict) and (a.get("kind") == "bug" or a.get("id") == MARK_BUG)]
        if not bugs:
            return [f"Plan must include the frozen bug oracle '{fid}' in 'assertions'."]
        bad = [a for a in bugs if str(a.get("id") or "") != fid]
        if bad or len(bugs) != 1:
            return [f"Plan bug oracle must be exactly one assertion with id '{fid}' (frozen)."]

    if not assertions:
        return ["Plan must define a non-empty 'assertions' list."]

    bugs = [a for a in assertions if a.get("id") == MARK_BUG or a.get("kind") == "bug"]
    reach = [a for a in assertions if a.get("id") == MARK_REACH or a.get("kind") == "reach"]

    if not bugs:
        errs.append("Plan is missing BUG_ASSERT.")
    else:
        bug_node = bugs[0]
        bid = (bug_node.get("id") or "").strip()
        bc = (bug_node.get("condition") or "").strip()
        bc_l = bc.lower()

        if bid != MARK_BUG:
            errs.append(f"Bug oracle id must be '{MARK_BUG}' (found '{bid or '<empty>'}').")

        # Strategy-specific enforcement
        if strategy_u == "OOB_READ":
            # Must be a semantic predicate at the vuln site
            if bc_l in {"0", "1", "true", "false"}:
                errs.append("Strategy 'OOB_READ' requires a non-trivial predicate BUG_ASSERT(<expr>), not BUG_ASSERT(0/1).")
            # Require instrumentation directive
            inst = plan.get("instrumentation", [])
            if not isinstance(inst, list) or not inst:
                errs.append("Strategy 'OOB_READ' requires plan.instrumentation with a target-site BUG_ASSERT insertion.")
            else:
                # Basic sanity: at least one entry includes BUG_ASSERT
                if not any(isinstance(x, dict) and "BUG_ASSERT" in str(x.get("code") or "") for x in inst):
                    errs.append("plan.instrumentation must include code containing 'BUG_ASSERT(...)' for OOB_READ.")
        
        elif strategy_u in {"OOB_WRITE", "UAF", "DOUBLE_FREE", "BUFFER_OVERFLOW"}:
            # Crash oracle: safe landing at BUG_ASSERT(0) implies we survived the vuln line (which should have crashed)
            if bc_l not in {"0", "false"}:
                errs.append(f"Strategy '{strategy_u}' requires a crash oracle: BUG_ASSERT condition must be '0' (or 'false').")
        
        elif strategy_u == "LOGIC" or strategy_u == "INT_OVERFLOW":
            # Semantic predicate oracle
            if bc_l in {"0", "false"}:
                errs.append(f"Strategy '{strategy_u}' requires a semantic predicate; BUG_ASSERT(0) is invalid here.")
        
        else:
            # Generic: require non-empty condition
            if not bc:
                errs.append("BUG_ASSERT must include a non-empty predicate/condition.")

        if bc_l in {"1", "true"}:
            errs.append(
                "BUG_ASSERT(1) is invalid: it triggers an unconditional crash (or no-op depending on macro). "
                "Use a meaningful predicate for semantic bugs, or BUG_ASSERT(0) only for crash-oracle strategies."
            )

    if not reach:
        errs.append("Plan is missing REACH_ASSERT (required).")
    else:
        rc = (reach[0].get("condition") or "").strip()
        if not rc:
            errs.append("REACH_ASSERT predicate/condition cannot be empty (use '1').")

    # Ordering check
    by_target: Dict[str, List[Tuple[int, Dict[str, Any]]]] = {}
    for idx, a in enumerate(assertions):
        tgt = (a.get("placement_target") or "").strip()
        by_target.setdefault(tgt, []).append((idx, a))

    for tgt, items in by_target.items():
        bug_idxs = [i for i, a in items if (a.get("id") == MARK_BUG or a.get("kind") == "bug")]
        reach_idxs = [i for i, a in items if (a.get("id") == MARK_REACH or a.get("kind") == "reach")]
        if bug_idxs and reach_idxs and min(reach_idxs) < min(bug_idxs):
            errs.append(
                f"Assertion ordering violation at placement_target='{tgt}': "
                "REACH_ASSERT appears before BUG_ASSERT. The Bug Oracle must come first."
            )

    return errs


def validate_no_safety_assume(plan: Dict[str, Any]) -> List[str]:
    """Reject plans that assume the negation of the BUG predicate (which makes bug unreachable)."""
    errs: List[str] = []

    assertions = normalize_assertions(plan.get("assertions", []))
    bugs = [a for a in assertions if (a.get("id") == MARK_BUG or a.get("kind") == "bug")]
    if not bugs:
        return errs
    bug = (bugs[0].get("condition") or "").strip()
    if not bug:
        return errs

    if bug == "1" or bug.lower() == "true":
        return errs

    inv = invert_simple_comparison(bug)

    ep = plan.get("entrypoint", {}) if isinstance(plan.get("entrypoint"), dict) else {}
    constraints = ep.get("constraints", []) if isinstance(ep.get("constraints", []), list) else []
    # Allow additional locations for assumptions (future-proofing)
    constraints += plan.get("steering_assumptions", []) if isinstance(plan.get("steering_assumptions"), list) else []

    bug_n = _norm_ws(bug)
    inv_n = _norm_ws(inv) if inv else None

    for c in constraints:
        if not isinstance(c, str):
            continue
        expr = _extract_assume_expr(c) or ""
        if not expr:
            continue
        expr_n = _norm_ws(expr)

        if bug_n and (expr_n == f"!({bug_n})" or expr_n == f"!(%s)" % bug_n):
            errs.append(
                "Plan blocks the bug: it assumes the negation of the BUG_ASSERT predicate via klee_assume(!bug_pred). "
                "Remove safety assumptions; allow the unsafe region so BUG_ASSERT can fail."
            )
            continue

        if inv_n and expr_n == inv_n:
            errs.append(
                "Plan blocks the bug: it assumes the safety condition that is the logical negation of the BUG predicate "
                f"(assume({expr}) vs bug({bug})). Remove/relax that assumption."
            )

    return errs


# ---------------- Report ----------------

@dataclass
class DCVReport:
    ok: bool
    hard_errors: List[str]
    warnings: List[str]
    info: Dict[str, Any]
    suggested_feedback: str

    def to_dict(self) -> Dict[str, Any]:
        return asdict(self)


def validate_plan_against_contract(
    plan_obj: Dict[str, Any],
    *,
    spec: Optional[Dict[str, Any]] = None,
    src_root: Optional[Path] = None,
    fact_pack: Optional[Dict[str, Any]] = None,
    project_name: Optional[str] = None,
    rule_id: Optional[str] = None,
    strategy: Optional[str] = None,  # FIX: thread strategy through DCV
) -> DCVReport:
    hard: List[str] = []
    warn: List[str] = []
    info: Dict[str, Any] = {}

    if not isinstance(plan_obj, dict) or not plan_obj:
        hard.append("Planner output is empty or not a JSON object.")
        return DCVReport(False, hard, warn, info, "Planner output invalid.")

    # Support both wrapped {"plan": {...}} and flat structures
    plan = plan_obj.get("plan", plan_obj)
    if not isinstance(plan, dict) or not plan:
        hard.append("Planner output missing a plan object.")
        return DCVReport(False, hard, warn, info, "Planner output invalid.")

    # Hard checks
    hard.extend(validate_entrypoint(plan))
    hard.extend(validate_symbolic_setup(plan))
    
    # FIX: enforce strategy-specific oracle rules
    hard.extend(validate_assertions(plan, strategy=strategy))
    
    hard.extend(validate_no_safety_assume(plan))

    # Soft guidance
    plan_text = json.dumps(plan_obj)
    if "klee_make_symbolic" not in plan_text:
        warn.append("Plan should mention 'klee_make_symbolic' (or equivalent) to ensure symbolic inputs are created.")

    ok = len(hard) == 0
    feedback = ""
    if hard:
        feedback += "DCV ERRORS:\n- " + "\n- ".join(hard) + "\n"
    if warn:
        feedback += "DCV SUGGESTIONS:\n- " + "\n- ".join(warn[:8])

    return DCVReport(ok, hard, warn, info, feedback)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--spec", default=None)
    ap.add_argument("--src-root", default=None)
    ap.add_argument("--fact-pack", default=None)
    ap.add_argument("--project-name", default=None)
    ap.add_argument("--rule-id", default=None)
    ap.add_argument("--strategy", default=None, help="Strategy name (OOB_READ, OOB_WRITE, UAF, LOGIC)")
    ap.add_argument("--out", default=None)
    args = ap.parse_args()

    plan_obj = _read_json(Path(args.plan))
    if not plan_obj:
        return 2

    spec = _read_json(Path(args.spec)) if args.spec else None
    fact_pack = _read_json(Path(args.fact_pack)) if args.fact_pack else None

    rep = validate_plan_against_contract(
        plan_obj,
        spec=spec,
        src_root=Path(args.src_root) if args.src_root else None,
        fact_pack=fact_pack,
        project_name=args.project_name,
        rule_id=args.rule_id,
        strategy=args.strategy,  # FIX: pass CLI strategy into DCV core
    )

    if args.out:
        Path(args.out).write_text(json.dumps(rep.to_dict(), indent=2), encoding="utf-8")

    if not rep.ok:
        print(rep.suggested_feedback, file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())