# -*- coding: utf-8 -*-
"""
validators/base.py

Rule plugin interface for SAILR-CEGIR.

Design goals
- Keep rule policy in small, testable Python plugins (one file per rule family).
- Keep the pipeline generic: it selects a plugin by rule_id and calls validate_plan / validate_harness.
- Keep outputs structured to support deterministic feedback to the LLM.
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import Any, Dict, Optional, List, Pattern
import re


@dataclass
class ValidationOutcome:
    ok: bool
    reason: str = ""
    hard_errors: Optional[List[str]] = None
    warnings: Optional[List[str]] = None


class BaseRuleValidator:
    """
    Implementations should override:
      - RULE_ID_PATTERN (regex string)
      - validate_plan(...)
      - validate_harness(...)
    """
    RULE_ID_PATTERN: str = r".*"

    def __init__(self) -> None:
        self._compiled: Pattern[str] = re.compile(self.RULE_ID_PATTERN)

    def match(self, rule_id: str) -> bool:
        return bool(self._compiled.match(rule_id or ""))

    # Plan-level checks (Planner output JSON)
    def validate_plan(self, plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None, ctx: Optional[Dict[str, Any]] = None) -> ValidationOutcome:
        return ValidationOutcome(True)

    # Harness-level checks (generated harness.c)
    def validate_harness(self, harness_src: str, *, rule_id: str, spec: Optional[Dict[str, Any]] = None, ctx: Optional[Dict[str, Any]] = None) -> ValidationOutcome:
        return ValidationOutcome(True)
