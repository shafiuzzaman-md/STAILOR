# -*- coding: utf-8 -*-
"""validators.memsafety

Memory-safety rule-family validator plugin.

Matches rule ids that contain: oob | memfunc | buffer-overflow | length-misuse

Primary objective:
  - Reduce false positives caused by unsound harnesses (symbolic pointer values,
    rigged allocator failures, BUG_ASSERT used as pointer-validity or as a bug predicate).
  - Avoid dropping true positives: do NOT globally ban numeric literals or small allocations.
"""

from __future__ import annotations

from typing import Any, Dict
import re

from .base import BaseRuleValidator, ValidationResult


class MemSafetyValidator(BaseRuleValidator):
    RULE_ID_PATTERN = r".*(oob|memfunc|buffer-overflow|length-misuse).*"

    # -----------------------
    # Plan validation (WARN)
    # -----------------------
    def validate_plan(self, plan: Dict[str, Any], ctx: Dict[str, Any]) -> ValidationResult:
        """
        Planner validation for memory-safety rules.
        Keep warning-oriented to avoid rejecting legitimate plans.
        """
        warnings = []

        plan_text = ""
        try:
            import json as _json
            plan_text = _json.dumps(plan)
        except Exception:
            plan_text = str(plan)

        # Pointer-validity asserted as bug condition
        if re.search(r'BUG_ASSERT\s*\(\s*\w+\s*(?:!=|==)\s*(?:NULL|0)\b', plan_text):
            warnings.append(
                "Plan warning: BUG_ASSERT checks pointer validity (ptr != NULL / ptr == NULL). "
                "For memory-safety rules, BUG_ASSERT should encode a bounds SAFETY condition "
                "(e.g., off+len <= capacity). Use klee_assume for bug predicates if needed."
            )

        # Bug-predicate inequality in BUG_ASSERT (len > cap)
        if re.search(r'BUG_ASSERT\s*\(\s*[^;]*\b(len|count|idx|index|offset|nodelen)\b[^;]*\b(>=|>)\b[^;]*\b(capacity|cap|size|alloc|mem|nodemem)\b[^;]*\)', plan_text):
            warnings.append(
                "Plan warning: BUG_ASSERT encodes a bug predicate (len/idx >= capacity). "
                "BUG_ASSERT should encode a SAFETY bound (off+len <= capacity). "
                "If searching for witnesses, use klee_assume(bug_condition) + REACH_ASSERT."
            )

        res = ValidationResult.accept()
        res.warnings.extend(warnings)
        return res

    # -------------------------
    # Harness validation (HARD)
    # -------------------------
    def validate_harness(self, harness_src: str, ctx: Dict[str, Any]) -> ValidationResult:
        """
        Hard reject harnesses that manufacture false positives.
        """

        # 0) Duplicate macro definitions are a strong signal of pasted fragments.
        if self._count_defines(harness_src, "REACH_ASSERT") > 1:
            return ValidationResult.reject("REJECTED: REACH_ASSERT macro defined multiple times (pasted fragments).")
        if self._count_defines(harness_src, "BUG_ASSERT") > 1:
            return ValidationResult.reject("REJECTED: BUG_ASSERT macro defined multiple times (pasted fragments).")

        # 1) Unsound: symbolic pointer VALUE (reject only if the symbol is a pointer)
        ptr_syms = self._extract_pointer_decls(harness_src)
        if ptr_syms:
            m = re.search(r'klee_make_symbolic\s*\(\s*&\s*(\w+)\s*,\s*sizeof\s*\(\s*\1\s*\)\s*,', harness_src)
            if m and (m.group(1) in ptr_syms):
                return ValidationResult.reject(
                    f"REJECTED: Pointer value made symbolic for '{m.group(1)}'. "
                    "Make the pointee/object symbolic, not the pointer value."
                )

        # 2) Not a vulnerability condition for these rules
        if re.search(r'BUG_ASSERT\s*\(\s*\w+\s*(?:!=|==)\s*(?:NULL|0)\b', harness_src):
            return ValidationResult.reject(
                "REJECTED: BUG_ASSERT checks pointer validity (ptr != NULL / ptr == NULL). "
                "For memory-safety rules, BUG_ASSERT must encode a bounds SAFETY condition."
            )

        # 3) BUG predicate asserted via BUG_ASSERT (wrong semantics)
        if re.search(r'BUG_ASSERT\s*\(\s*[^;]*\b(len|count|nodelen|idx|index|offset)\b[^;]*\b(>=|>)\b[^;]*\b(nodemem|capacity|cap|bufsz|buf_size|size|alloc|mem)\b[^;]*\)', harness_src):
            return ValidationResult.reject(
                "REJECTED: BUG_ASSERT encodes a bug-condition inequality (len/off/idx >= capacity). "
                "BUG_ASSERT must encode a SAFETY bound (off+len <= capacity). "
                "Use klee_assume for bug predicates if needed."
            )

        # 4) Rigged allocator-threshold failure policy (FP generator)
        if re.search(r'if\s*\(\s*(?:size|len|n)\s*(?:>=|>)\s*\d+\s*\)\s*[^;{]*\breturn\s+NULL\s*;', harness_src):
            return ValidationResult.reject(
                "REJECTED: Allocator stub appears rigged to fail on a size threshold (e.g., if (size > 64) return NULL;). "
                "Remove size-threshold failure policies; they create false positives."
            )

        return ValidationResult.accept()

    # -------------------------
    # Helpers
    # -------------------------
    def _count_defines(self, src: str, macro: str) -> int:
        return len(re.findall(rf'^\s*#\s*define\s+{re.escape(macro)}\b', src, flags=re.MULTILINE))

    def _extract_pointer_decls(self, src: str) -> set[str]:
        """
        Best-effort extraction of pointer variable declarations.
        Conservative; used only to avoid rejecting scalar vars.
        """
        ptrs: set[str] = set()
        # match patterns like: TYPE *name;  or  TYPE* name;
        for m in re.finditer(r'^\s*(?:[A-Za-z_]\w*\s+)+\*\s*(\w+)\s*(?:=|;|\[)', src, flags=re.MULTILINE):
            ptrs.add(m.group(1))
        return ptrs
