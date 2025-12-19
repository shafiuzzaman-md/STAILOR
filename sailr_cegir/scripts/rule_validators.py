#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
rule_validators.py

Rule-specific validation layer for SAILR-CEGIR.
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Any, Dict, List, Optional, Tuple
import re


@dataclass
class ValidationOutcome:
    ok: bool
    reason: str = ""


class BaseRuleValidator:
    def match(self, rule_id: str) -> bool:
        return False

    def validate_plan(self, plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None) -> List[str]:
        return []

    def validate_harness(
        self,
        harness_src: str,
        *,
        rule_id: str,
        spec: Optional[Dict[str, Any]] = None,
        ctx: Optional[Dict[str, Any]] = None,
    ) -> ValidationOutcome:
        return ValidationOutcome(True, "")


class MemfuncLengthMisuseValidator(BaseRuleValidator):
    def match(self, rule_id: str) -> bool:
        return "memfunc.length-misuse" in (rule_id or "")

    def validate_plan(self, plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None) -> List[str]:
        hard: List[str] = []
        bug_asserts = plan.get("bug_assertions", []) or []
        conds = []
        for a in bug_asserts:
            c = (a.get("condition") or "").strip()
            if c:
                conds.append(c)

        for c in conds:
            if re.search(r"\b\w+\s*!=\s*NULL\b", c) and ("BUG_ASSERT" in c or True):
                hard.append(
                    "Rule-specific rejection (memfunc.length-misuse): BUG_ASSERT is only checking non-NULL allocation. "
                    "For this rule family, BUG_ASSERT must encode an OOB condition (count/offset vs capacity)."
                )
                break
        return hard

    def validate_harness(
        self,
        harness_src: str,
        *,
        rule_id: str,
        spec: Optional[Dict[str, Any]] = None,
        ctx: Optional[Dict[str, Any]] = None,
    ) -> ValidationOutcome:

        # 1) BUG_ASSERT must not be allocator-success check
        if re.search(r"BUG_ASSERT\s*\(\s*\w+\s*!=\s*NULL", harness_src):
            return ValidationOutcome(
                False,
                "REJECTED (memfunc.length-misuse): BUG_ASSERT is asserting allocation success (ptr != NULL). "
                "For memfunc OOB rules, BUG_ASSERT must encode an OOB condition (count/offset vs capacity).",
            )

        # 2) Placement: REACH_ASSERT should be in the neighborhood of the sink call.
        sinks = set()
        try:
            suspect_calls = ((spec or {}).get("facts") or {}).get("suspect_calls") or []
            if isinstance(suspect_calls, list):
                sinks.update({str(x) for x in suspect_calls if x})
        except Exception:
            pass

        if not sinks:
            sinks.update(
                {
                    "memcpy",
                    "memmove",
                    "memset",
                    "strncpy",
                    "strncat",
                    "snprintf",
                    "vsnprintf",
                    "strlcpy",
                    "strlcat",
                    "read",
                    "recv",
                    "recvfrom",
                    "fgets",
                    "pread",
                    "memcmp"  # Ensure memcmp is included
                }
            )

        lines = harness_src.splitlines()
        
        # [FIX] Ignore lines starting with '#' to avoid matching the macro definition
        # instead of the actual usage.
        reach_idx = next(
            (i for i, ln in enumerate(lines) 
             if "REACH_ASSERT" in ln and not ln.strip().startswith("#")), 
            None
        )
        
        if reach_idx is None:
            # Fallback: maybe they put it on the same line as a macro? 
            # If strictly missing, reject.
            # But double check if we missed it because of whitespace
            return ValidationOutcome(False, "REJECTED: REACH_ASSERT not found in harness code body.")

        # Tight window check (fast path)
        tight = "\n".join(lines[max(0, reach_idx - 8) : min(len(lines), reach_idx + 12)])
        if any(re.search(rf"\b{re.escape(s)}\s*\(", tight) for s in sinks):
            return ValidationOutcome(True, "")

        # Relaxed check: handle multiline conditions.
        lo = max(0, reach_idx - 80)
        span_lines = lines[lo : reach_idx + 1]
        for i, ln in enumerate(span_lines):
            for s in sinks:
                if re.search(rf"\b{re.escape(s)}\s*\(", ln):
                    j0 = max(0, i - 4)
                    if any(re.search(r"\bif\b", span_lines[j]) for j in range(j0, i + 1)):
                        return ValidationOutcome(True, "")

        # Final Fallback: Normalized Source Matching
        back_span = "\n".join(span_lines)
        vul_stmt = ((ctx or {}).get("vul_statement_text") or "").strip()
        
        if vul_stmt:
            def _norm(s: str) -> str:
                return re.sub(r"\s+", " ", s).strip()
            if _norm(vul_stmt) in _norm(back_span):
                return ValidationOutcome(True, "")

        return ValidationOutcome(
            False,
            "REJECTED (memfunc.length-misuse): REACH_ASSERT does not appear aligned with the sink or target statement. "
            "Place REACH_ASSERT at the target statement or within the immediate then-branch when the sink is in a condition.",
        )


# --- Registry ---

_VALIDATORS: List[BaseRuleValidator] = [
    MemfuncLengthMisuseValidator(),
]


def get_validator(rule_id: str) -> Optional[BaseRuleValidator]:
    for v in _VALIDATORS:
        try:
            if v.match(rule_id):
                return v
        except Exception:
            continue
    return None


def validate_plan_rule_specific(plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None) -> List[str]:
    v = get_validator(rule_id)
    if not v:
        return []
    return v.validate_plan(plan, rule_id=rule_id, spec=spec)


def validate_harness_rule_specific(
    harness_src: str,
    *,
    rule_id: str,
    spec: Optional[Dict[str, Any]] = None,
    ctx: Optional[Dict[str, Any]] = None,
) -> ValidationOutcome:
    v = get_validator(rule_id)
    if not v:
        return ValidationOutcome(True, "")
    return v.validate_harness(harness_src, rule_id=rule_id, spec=spec, ctx=ctx)