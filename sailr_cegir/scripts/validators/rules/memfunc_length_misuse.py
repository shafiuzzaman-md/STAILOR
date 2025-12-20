# -*- coding: utf-8 -*-
"""
validators/rules/memfunc_length_misuse.py

Rule plugin for the memfunc / length-misuse / OOB family.

This validator is designed to:
- Reject classic fabricated "bugs" (pointer validity, allocator failure) used as BUG_ASSERT.
- Be TP-safe for targets where the CodeQL "target line" is a guard/condition containing a sink call.
- Avoid brittle "must be within N lines" constraints; use multiple anchors:
    (a) REACH_ASSERT location
    (b) sink call presence near REACH_ASSERT
    (c) sink call presence at/near target statement (from spec)
"""
from __future__ import annotations

import re
from typing import Any, Dict, Optional, List, Set

from ..base import BaseRuleValidator, ValidationOutcome
from ..registry import register_validator


SINKS = [
    "memcpy","memmove","memset","memcmp",
    "strlen","strcmp","strncmp","strcpy","strncpy","strcat","strncat",
]

RULE_PATTERN = r".*(oob|memfunc|buffer-overflow|length-misuse).*"


def _extract_spec_loc(spec: Optional[Dict[str, Any]]) -> tuple[Optional[str], Optional[int], Optional[str]]:
    if not spec:
        return None, None, None
    # Common shapes: {"vul_file": "...", "vul_line": 123, "vul_statement": "..."}
    vul_file = spec.get("vul_file") or spec.get("file") or spec.get("target_file")
    vul_line = spec.get("vul_line") or spec.get("line") or spec.get("target_line")
    try:
        vul_line = int(vul_line) if vul_line is not None else None
    except Exception:
        vul_line = None
    vul_stmt = spec.get("vul_statement") or spec.get("statement") or spec.get("target_statement")
    return vul_file, vul_line, vul_stmt


def _sink_tokens_in_text(text: str) -> Set[str]:
    hits = set()
    for s in SINKS:
        if re.search(rf"\b{re.escape(s)}\s*\(", text):
            hits.add(s)
    return hits


def _nearby_window(lines: List[str], idx: int, before: int, after: int) -> str:
    return "\n".join(lines[max(0, idx-before): min(len(lines), idx+after+1)])


def _symbolic_vars(src: str) -> Set[str]:
    out = set()
    for m in re.finditer(r'klee_make_symbolic\s*\(\s*&\s*([A-Za-z_]\w*)\s*,\s*sizeof\s*\(\s*\1\s*\)', src):
        out.add(m.group(1))
    for m in re.finditer(r'klee_make_symbolic\s*\(\s*([A-Za-z_]\w*)\s*,', src):
        out.add(m.group(1))
    return out


class MemfuncLengthMisuseValidator(BaseRuleValidator):
    RULE_ID_PATTERN = RULE_PATTERN

    def validate_plan(self, plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None, ctx: Optional[Dict[str, Any]] = None) -> ValidationOutcome:
        hard: List[str] = []
        warns: List[str] = []

        # Require REACH marker
        plan_text = json_dumps(plan)
        if "REACH_ASSERT" not in plan_text:
            hard.append("Missing REACH_ASSERT in plan. You MUST mark the target line (or the guard containing the sink).")

        # BUG_ASSERT semantics: must be a safety bound, not a bug predicate and not pointer validity
        if "BUG_ASSERT" in plan_text:
            # pointer validity
            if re.search(r'BUG_ASSERT\s*\(\s*\w+\s*(?:!=|==)\s*(?:NULL|0)\b', plan_text):
                hard.append(
                    "BUG_ASSERT checks pointer validity (ptr != NULL / ptr == NULL). "
                    "For memfunc/OOB rules, BUG_ASSERT must encode a bounds SAFETY condition."
                )
            # bug predicate inequality (len > cap) asserted
            if re.search(r'BUG_ASSERT\s*\(\s*[^;]*\b(len|count|nodelen|idx|index|offset)\b[^;]*\b(>=|>)\b[^;]*\b(nodemem|capacity|cap|bufsz|buf_size|size|alloc|mem)\b', plan_text):
                hard.append(
                    "BUG_ASSERT encodes a bug-condition inequality (len/off/idx >= capacity). "
                    "BUG_ASSERT must encode a SAFETY bound (e.g., off+len <= capacity). "
                    "If you need to search for bug states, use klee_assume(bug_condition) and then REACH_ASSERT."
                )

        return ValidationOutcome(ok=(len(hard)==0), reason="; ".join(hard) if hard else "", hard_errors=hard or None, warnings=warns or None)

    def validate_harness(self, harness_src: str, *, rule_id: str, spec: Optional[Dict[str, Any]] = None, ctx: Optional[Dict[str, Any]] = None) -> ValidationOutcome:
        # 1) Disallow BUG_ASSERT as pointer validity / allocator success
        if re.search(r'BUG_ASSERT\s*\(\s*\w+\s*(?:!=|==)\s*(?:NULL|0)\b', harness_src):
            return ValidationOutcome(False,
                "REJECTED (memsafety): BUG_ASSERT is checking pointer validity/allocation success. "
                "BUG_ASSERT must encode a bounds SAFETY condition (off+len <= cap, idx < cap)."
            )

        # 2) BUG_ASSERT must not encode bug predicate inequality
        if re.search(r'BUG_ASSERT\s*\(\s*[^;]*\b(len|count|nodelen|idx|index|offset)\b[^;]*\b(>=|>)\b[^;]*\b(nodemem|capacity|cap|bufsz|buf_size|size|alloc|mem)\b', harness_src):
            return ValidationOutcome(False,
                "REJECTED (memsafety): BUG_ASSERT encodes a bug-condition (len/off/idx >= capacity). "
                "BUG_ASSERT must encode a SAFETY bound (e.g., off+len <= capacity)."
            )

        # 3) Avoid malloc(symbolic_var) only when actually symbolic
        sym = _symbolic_vars(harness_src)
        for m in re.finditer(r'\bmalloc\s*\(\s*([A-Za-z_]\w*)\s*\)', harness_src):
            var = m.group(1)
            # allow sizeof(X) handled separately
            if var in sym:
                return ValidationOutcome(False,
                    f"REJECTED (memsafety): malloc({var}) where '{var}' is symbolic. "
                    "Use a concrete allocation size and constrain the length/index against that capacity."
                )

        # 4) Placement: accept if REACH_ASSERT is close to a sink call OR target statement contains a sink
        lines = harness_src.splitlines()
        reach_idx = next((i for i, ln in enumerate(lines) if "REACH_ASSERT" in ln), None)
        if reach_idx is None:
            return ValidationOutcome(False, "REJECTED: REACH_ASSERT not found in harness.")

        # window around reach
        reach_window = _nearby_window(lines, reach_idx, before=20, after=40)
        reach_sinks = _sink_tokens_in_text(reach_window)

        vul_file, vul_line, vul_stmt = _extract_spec_loc(spec or (ctx or {}).get("spec") if ctx else None)
        stmt_sinks = _sink_tokens_in_text(vul_stmt or "")

        # If statement indicates a sink, we accept even if REACH is on guard line not the call line
        if stmt_sinks:
            return ValidationOutcome(True)

        # Otherwise, require sink near reach
        if not reach_sinks:
            # One more TP-safe fallback: allow if memcpy/memcmp/etc appears anywhere in harness AND reach within +/- 120 of callsite
            any_sink_positions = [i for i, ln in enumerate(lines) if any(re.search(rf"\b{re.escape(s)}\s*\(", ln) for s in SINKS)]
            if any_sink_positions:
                closest = min(any_sink_positions, key=lambda i: abs(i - reach_idx))
                if abs(closest - reach_idx) <= 120:
                    return ValidationOutcome(True)
            return ValidationOutcome(False,
                "REJECTED (memsafety): REACH_ASSERT is not colocated with any mem* / str* sink call, and the target statement does not contain a sink. "
                "Place REACH_ASSERT immediately before the sink call, or mark the guard that contains the sink call on the target line."
            )

        return ValidationOutcome(True)


def json_dumps(obj: Any) -> str:
    try:
        import json
        return json.dumps(obj, ensure_ascii=False)
    except Exception:
        return str(obj)


# Register plugin
register_validator(MemfuncLengthMisuseValidator())
