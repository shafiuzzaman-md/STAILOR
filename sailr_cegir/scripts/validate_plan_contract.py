#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
validate_plan_contract.py

Deterministic Contract Validator (DCV) for the Planner output.

Purpose
- Reject plans that violate the Frozen-Plan contract (missing entrypoint, missing assertions, bad ordering, unsafe assumptions).
- Provide actionable feedback so the Planner can repair the plan in the next turn.
- Be backward compatible with older planner schemas.

Accepted assertion schemas (per assertion object)
A) Canonical:
   { "id":"BUG_ASSERT", "kind":"bug", "condition":"<expr>", "placement_target":"..." }
B) Legacy:
   { "id":"BUG_ASSERT", "predicate":"<expr>", "placement_target":"..." }
The validator normalizes both into a canonical internal form.

This validator is intentionally conservative on *logic inference* (rule semantics) to avoid false rejections.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

# Optional rule-plugin system (if present in repo)
try:
    from validators.registry import get_rule_validator
except Exception:
    get_rule_validator = None  # type: ignore

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
    out: List[Dict[str, Any]] = []
    if not isinstance(assertions, list):
        return out
    for a in assertions:
        if not isinstance(a, dict):
            continue

        aa = dict(a)
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

        cond = (aa.get("condition") or aa.get("predicate") or aa.get("expr") or "").strip()
        if not cond and kind == "reach":
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


def validate_assertions(plan: Dict[str, Any]) -> List[str]:
    errs: List[str] = []
    assertions = normalize_assertions(plan.get("assertions", []))
    if not assertions:
        return ["Plan must define a non-empty 'assertions' list."]

    bugs = [a for a in assertions if a.get("id") == MARK_BUG or a.get("kind") == "bug"]
    reach = [a for a in assertions if a.get("id") == MARK_REACH or a.get("kind") == "reach"]

    if not bugs:
        errs.append("Plan is missing BUG_ASSERT (required).")
    else:
        bc = (bugs[0].get("condition") or "").strip()
        if not bc:
            errs.append("BUG_ASSERT must include a non-empty predicate/condition.")
        if bc == "1" or bc.lower() == "true":
            errs.append("BUG_ASSERT predicate cannot be a constant true; it must encode the bug condition.")

    if not reach:
        errs.append("Plan is missing REACH_ASSERT (required).")
    else:
        rc = (reach[0].get("condition") or "").strip()
        if not rc:
            errs.append("REACH_ASSERT predicate/condition cannot be empty (use '1').")

    # Ordering: if BUG and REACH share the same placement_target, BUG must appear first in list.
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
                "REACH_ASSERT appears before BUG_ASSERT. BUG_ASSERT must come first."
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

        # Hard reject: explicit negation of bug predicate
        if bug_n and (expr_n == f"!({bug_n})" or expr_n == f"!(%s)" % bug_n):
            errs.append(
                "Plan blocks the bug: it assumes the negation of the BUG_ASSERT predicate via klee_assume(!bug_pred). "
                "Remove safety assumptions; allow the unsafe region so BUG_ASSERT can fail."
            )
            continue

        # Hard reject: assume matches an invertible negation of bug condition (simple comparisons)
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
    hard.extend(validate_assertions(plan))
    hard.extend(validate_no_safety_assume(plan))

    # Soft guidance
    plan_text = json.dumps(plan_obj)
    if "klee_make_symbolic" not in plan_text:
        warn.append("Plan should mention 'klee_make_symbolic' (or equivalent) to ensure symbolic inputs are created.")

    # Optional rule plugins
    if get_rule_validator is not None and rule_id:
        v = get_rule_validator(rule_id)
        if v is not None:
            try:
                out = v.validate_plan(
                    plan_obj,
                    rule_id=rule_id,
                    spec=spec,
                    ctx={"spec": spec, "fact_pack": fact_pack, "src_root": str(src_root) if src_root else None},
                )
                hard.extend(list(out.hard_errors or []))
                warn.extend(list(out.warnings or []))
                if (out.reason or "").strip() and not out.hard_errors:
                    warn.append(out.reason.strip())
            except Exception as e:
                warn.append(f"[Plugin Warning] Rule validator crashed: {e}")

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
    )

    if args.out:
        Path(args.out).write_text(json.dumps(rep.to_dict(), indent=2), encoding="utf-8")

    if not rep.ok:
        print(rep.suggested_feedback, file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())
