#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
rule_validators.py

Generic, data-driven validation layer for SAILR-CEGIR.
Logic is defined entirely in `rules.yaml`. This script simply executes that policy.
"""

from __future__ import annotations

import re
import yaml
from pathlib import Path
from dataclasses import dataclass
from typing import Any, Dict, List, Optional

# Path to rules.yaml (relative to this script)
SCRIPT_DIR = Path(__file__).resolve().parent
RULES_YAML_PATH = SCRIPT_DIR / "rules.yaml"

@dataclass
class ValidationOutcome:
    ok: bool
    reason: str = ""

class GenericYamlValidator:
    """
    A validator that enforces constraints defined entirely in rules.yaml.
    """
    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.id_pattern = config.get("id_pattern", ".*")
        self.description = config.get("description", "Generic Rule")
        self.validator_policy = config.get("validator", {})

    def match(self, rule_id: str) -> bool:
        """Checks if this validator applies to the given rule_id."""
        return bool(re.match(self.id_pattern, rule_id))

    def validate_plan(self, plan: Dict[str, Any], **kwargs) -> List[str]:
        """Validates the JSON plan against YAML-defined regexes."""
        errors = []
        bug_asserts = plan.get("bug_assertions", [])
        
        # 1. Check Plan Regexes (e.g., banning NULL checks in conditions)
        forbidden = self.validator_policy.get("plan_forbidden_patterns", [])
        
        for assertion in bug_asserts:
            cond = assertion.get("condition", "")
            for pattern in forbidden:
                if re.search(pattern["regex"], cond):
                    errors.append(f"REJECTED ({self.description}): {pattern['message']}")
                    
        return errors

    def validate_harness(self, harness_src: str, **kwargs) -> ValidationOutcome:
        """Validates the C harness source code against YAML-defined regexes."""
        
        # 1. Check Forbidden Patterns (e.g., magic numbers, pointer checks)
        forbidden = self.validator_policy.get("forbidden_patterns", [])
        for pattern in forbidden:
            if re.search(pattern["regex"], harness_src, flags=re.MULTILINE):
                return ValidationOutcome(False, f"REJECTED ({self.description}): {pattern['message']}")

        # 2. Check Required Patterns (e.g., specific setup calls)
        required = self.validator_policy.get("required_patterns", [])
        for pattern in required:
            if not re.search(pattern["regex"], harness_src, flags=re.MULTILINE):
                return ValidationOutcome(False, f"REJECTED ({self.description}): {pattern['message']}")

        # 3. Placement Heuristics (Optional Sink Checks)
        # If the YAML defines a list of 'sinks', we check that the reach marker is reasonably
        # aligned with either (a) the sink call itself, or (b) the original vulnerable statement.
        #
        # Important: For "sink-in-condition" patterns (e.g., if (memcmp(...) == 0 && ...)),
        # the sink executes *before* control enters the branch where REACH_ASSERT is often placed.
        # A tight +/-N window is therefore insufficient and can reject true positives.
        sinks = self.validator_policy.get("sinks", [])
        if sinks:
            lines = harness_src.splitlines()

            # Find REACH_ASSERT (ignore preprocessor macro definitions)
            reach_idx = next(
                (i for i, ln in enumerate(lines)
                 if "REACH_ASSERT" in ln and not ln.strip().startswith("#")),
                None
            )
            if reach_idx is None:
                return ValidationOutcome(False, "REJECTED: REACH_ASSERT not found in executable code.")

            # (1) Tight window: the common case (REACH_ASSERT near sink)
            tight_lo = max(0, reach_idx - 15)
            tight_hi = min(len(lines), reach_idx + 15)
            tight_window = "\n".join(lines[tight_lo:tight_hi])
            found_sink = any(re.search(rf"\b{re.escape(s)}\s*\(", tight_window) for s in sinks)

            if not found_sink:
                # (2) Secondary window: allow sink-in-condition and multiline statements.
                lookback = int(self.validator_policy.get("placement_lookback", 120))
                lookahead = int(self.validator_policy.get("placement_lookahead", 30))
                ext_lo = max(0, reach_idx - lookback)
                ext_hi = min(len(lines), reach_idx + lookahead)
                ext_text = "\n".join(lines[ext_lo:ext_hi])

                def _norm(s: str) -> str:
                    return re.sub(r"\s+", "", s or "")

                # 2a) If we have the original vulnerable statement text, accept if it appears
                # near REACH_ASSERT (robust to multiline / formatting).
                ctx = kwargs.get("ctx") or {}
                vul_stmt = (ctx.get("vul_statement_text") or "").strip()
                if vul_stmt and _norm(vul_stmt) in _norm(ext_text):
                    found_sink = True

                # 2b) Otherwise, accept if any sink call appears in the extended window AND
                # is plausibly part of an 'if (...)' condition before the reach marker.
                if not found_sink:
                    for i in range(ext_lo, min(reach_idx + 1, ext_hi)):
                        ln = lines[i]
                        if any(re.search(rf"\b{re.escape(s)}\s*\(", ln) for s in sinks):
                            neighborhood = " ".join(lines[max(0, i - 2): min(len(lines), i + 1)])
                            if "if" in neighborhood:
                                found_sink = True
                                break

                # 2c) Fallback: accept if a sink appears anywhere in the extended window.
                if not found_sink:
                    found_sink = any(
                        re.search(rf"\b{re.escape(s)}\s*\(", ext_text)
                        for s in sinks
                    )

            if not found_sink:
                return ValidationOutcome(
                    False,
                    f"REJECTED ({self.description}): REACH_ASSERT is not aligned with a known sink or target statement "
                    f"({', '.join(sinks[:3])}...)."
                )

        return ValidationOutcome(True, "")

# --- Loader ---

def load_validators() -> List[GenericYamlValidator]:
    """Parses rules.yaml and creates validator instances."""
    if not RULES_YAML_PATH.exists():
        return []
    
    try:
        with open(RULES_YAML_PATH, "r") as f:
            data = yaml.safe_load(f)
        
        validators = []
        for rule_conf in data.get("rules", []):
            validators.append(GenericYamlValidator(rule_conf))
        return validators
    except Exception as e:
        print(f"[!] Failed to load rules.yaml: {e}")
        return []

_VALIDATORS = load_validators()

def get_validator(rule_id: str) -> Optional[GenericYamlValidator]:
    for v in _VALIDATORS:
        if v.match(rule_id):
            return v
    return None

def validate_plan_rule_specific(plan: Dict[str, Any], *, rule_id: str, spec: Optional[Dict[str, Any]] = None) -> List[str]:
    v = get_validator(rule_id)
    if not v: return []
    return v.validate_plan(plan)

def validate_harness_rule_specific(harness_src: str, *, rule_id: str, spec: Optional[Dict[str, Any]] = None, ctx: Optional[Dict[str, Any]] = None) -> ValidationOutcome:
    v = get_validator(rule_id)
    if not v: return ValidationOutcome(True, "")
    return v.validate_harness(harness_src)