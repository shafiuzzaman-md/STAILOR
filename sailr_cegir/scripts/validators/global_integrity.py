# -*- coding: utf-8 -*-
"""
validators/global_integrity.py

Global TP-safe harness integrity checks (soundness / anti-fabrication).
These checks are NOT rule-specific and should be applied to every harness.
"""
from __future__ import annotations

import re
from typing import Tuple, Optional, Dict, Any


def _count_macro_defs(src: str, macro: str) -> int:
    return len(re.findall(rf'^\s*#\s*define\s+{re.escape(macro)}\b', src, flags=re.M))


def _has_rigged_allocator_threshold(src: str) -> bool:
    # Reject patterns like: if (size > 64) return NULL; (or >=)
    # Narrow by requiring a return NULL in the same if-body.
    pat = r'if\s*\(\s*(?:size|len|n|count|bytes)\s*(?:>=|>)\s*\d+\s*\)\s*[^;{]*\breturn\s+NULL\s*;'
    return bool(re.search(pat, src))


def _symbolic_scalar_vars(src: str) -> set[str]:
    # Identify scalars made symbolic: klee_make_symbolic(&x, sizeof(x), "x")
    out = set()
    for m in re.finditer(r'klee_make_symbolic\s*\(\s*&\s*([A-Za-z_]\w*)\s*,\s*sizeof\s*\(\s*\1\s*\)', src):
        out.add(m.group(1))
    return out


def _is_pointer_var(src: str, var: str) -> bool:
    # Declared with a '*' in a declaration line
    if re.search(rf'^\s*[^;\n]*\*\s*{re.escape(var)}\b[^;\n]*;', src, flags=re.M):
        return True
    # Used like var-> or var[ ... ]
    if re.search(rf'\b{re.escape(var)}\s*->', src) or re.search(rf'\b{re.escape(var)}\s*\[', src):
        return True
    return False


def validate_global_harness_integrity(
    harness_src: str,
    *,
    ctx: Optional[Dict[str, Any]] = None,
) -> Tuple[bool, str]:
    """
    Returns (ok, reason).
    """
    # 0) Duplicate marker macro definitions usually indicate concatenated snippets
    for macro in ("REACH_ASSERT", "BUG_ASSERT"):
        if _count_macro_defs(harness_src, macro) > 1:
            return False, f"REJECTED: Duplicate macro definition detected for {macro}. Clean duplicated prologue blocks."

    # 1) Rigged allocator failure based on numeric threshold
    if _has_rigged_allocator_threshold(harness_src):
        return False, (
            "REJECTED: Allocator stub appears rigged to fail on size thresholds (e.g., if (size > 64) return NULL;). "
            "Remove such policies; they manufacture false positives."
        )

    # 2) Reject symbolic POINTER VALUE (TP-safe: allow scalar &len, reject &ptr where ptr is pointer)
    sym_vars = _symbolic_scalar_vars(harness_src)
    for var in sorted(sym_vars):
        if _is_pointer_var(harness_src, var):
            return False, (
                f"REJECTED: Symbolic pointer VALUE detected for '{var}' via klee_make_symbolic(&{var}, sizeof({var}), ...). "
                "Make the pointee/object symbolic, not the pointer."
            )

    return True, ""
