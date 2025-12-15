#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
validate_plan_contract.py

Deterministic Contract Validator (DCV) for the Planner output.
Enforces semantic correctness, assertion fidelity, and project heuristics.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import textwrap
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

MARK_BUG = "BUG_ASSERT"
MARK_REACH = "REACH_ASSERT"

def _read_json(path: Optional[Path]) -> Optional[Any]:
    if not path: return None
    try: return json.loads(path.read_text(encoding="utf-8", errors="replace"))
    except Exception: return None

def _norm_path(p: str) -> str: return p.replace("\\", "/")

def _rel_to_root(p: str, src_root: Optional[Path]) -> str:
    p = _norm_path(p)
    if not src_root: return p
    try:
        rp = Path(p)
        if not rp.is_absolute(): return _norm_path(str(rp))
        return _norm_path(str(rp.relative_to(src_root)))
    except Exception:
        root_name = src_root.name
        idx = p.find("/" + root_name + "/")
        if idx != -1: return p[idx + len(root_name) + 2 :]
        return p

def _load_text(path: Path) -> str:
    try: return path.read_text(encoding="utf-8", errors="replace")
    except Exception: return ""

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

    plan = plan_obj["plan"] if "plan" in plan_obj and isinstance(plan_obj["plan"], dict) and len(plan_obj) <= 3 else plan_obj
    
    # --- 1. Assertion Fidelity ---
    marker_hits = _find_marker_strings(plan)
    if not marker_hits[MARK_BUG]: hard.append("Missing BUG_ASSERT in plan.")
    if not marker_hits[MARK_REACH]: hard.append("Missing REACH_ASSERT in plan.")

    rule = rule_id or (spec.get("rule_id") if spec else "") or ""
    info["rule"] = rule

    bug_str = marker_hits[MARK_BUG][0][1] if marker_hits[MARK_BUG] else ""
    
    # Semantic Check: OOB Rule must constrain length/capacity
    if "oob.memfunc.length-misuse" in rule:
        facts = (spec.get("facts") if spec else {}) or (fact_pack.get("facts", {}) if fact_pack else {})
        length_vars = facts.get("length_vars", []) if isinstance(facts, dict) else []
        
        # Check for safety operators (<, <=)
        if not any(op in bug_str for op in ["<", "<="]):
             warn.append("OOB Rule Heuristic: BUG_ASSERT should likely use '<' or '<=' to check bounds.")
        
        # Check for null checks (common hallucination)
        if "!= NULL" in bug_str or "== NULL" in bug_str:
             warn.append("OOB Rule Heuristic: BUG_ASSERT appears to check for NULL, but rule is Length Misuse (OOB).")

    # --- 2. Harness Fidelity ---
    harness_shape = plan.get("harness_shape", {})
    call_seq = harness_shape.get("call_sequence", [])
    
    if not any("klee_make_symbolic" in s for s in call_seq):
        hard.append("Harness must include 'klee_make_symbolic' in call_sequence.")

    # --- 3. Project Heuristics (LibXML2) ---
    # proj = project_name or (spec.get("project") if spec else "") or ""
    # if "libxml2" in proj.lower() and "dict.c" in (spec.get("file") or ""):
    #     if not any("memset" in s and "dict" in s for s in call_seq):
    #          warn.append("LibXML2 Heuristic: Dictionary functions usually require explicit struct initialization (memset).")

    ok = len(hard) == 0
    feedback = ""
    if hard: feedback += "DCV ERRORS:\n- " + "\n- ".join(hard) + "\n"
    if warn: feedback += "DCV WARNINGS:\n- " + "\n- ".join(warn[:5])
    
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
        print(rep.suggested_feedback, file=sys.stderr)
        return 1
    return 0

if __name__ == "__main__":
    sys.exit(main())