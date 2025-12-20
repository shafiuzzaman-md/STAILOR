# -*- coding: utf-8 -*-
"""
validators/registry.py

Plugin registry. Auto-discovers validators under validators/rules/*.py.

Usage:
    from validators.registry import get_rule_validator
    v = get_rule_validator(rule_id)
"""
from __future__ import annotations

from importlib import import_module
from pathlib import Path
from typing import Optional, List

from .base import BaseRuleValidator

_VALIDATORS: List[BaseRuleValidator] = []
_DISCOVERED = False


def _discover() -> None:
    global _DISCOVERED, _VALIDATORS
    if _DISCOVERED:
        return
    _DISCOVERED = True

    rules_dir = Path(__file__).resolve().parent / "rules"
    if not rules_dir.exists():
        return

    # Import each module (skip private/dunder)
    for py in sorted(rules_dir.glob("*.py")):
        if py.name.startswith("_") or py.name == "__init__.py":
            continue
        mod_name = f"{__package__}.rules.{py.stem}"
        try:
            import_module(mod_name)
        except Exception:
            # Fail open: pipeline continues without this plugin.
            # (The main pipeline should treat missing plugin as "no extra rule checks".)
            continue

    # Modules register validators via register_validator()
    # (See below)


def register_validator(v: BaseRuleValidator) -> None:
    _VALIDATORS.append(v)


def get_rule_validator(rule_id: str) -> Optional[BaseRuleValidator]:
    _discover()
    for v in _VALIDATORS:
        try:
            if v.match(rule_id):
                return v
        except Exception:
            continue
    return None
