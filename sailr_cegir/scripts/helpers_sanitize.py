#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
helpers_sanitize.py

Small utilities to clean up obviously bogus lines in helper stub headers
and other generated C artifacts before we ask clang (or the LLM) to deal
with them.

This is *intentionally conservative*: it only strips lines that are
clearly invalid at top level and have no reasonable chance of being
part of a function/struct/enum definition.
"""

from __future__ import annotations
import sys
from pathlib import Path


def _read_text(path: Path) -> str | None:
    try:
        return path.read_text(encoding="utf-8", errors="ignore")
    except Exception:
        return None


def sanitize_helper_stubs_header(path: str = "out/build/instrumented/llmse_helper_stubs.h") -> None:
    """
    Very light sanitizer for llmse_helper_stubs.h.

    Behaviors:
      - Remove obviously bogus top-level statements that leaked into the header
        (e.g., 'ret = xmlDictAddQString(...)', 'ret = xmlDictAddString(...)',
        '(xmlStrQEqual(prefix, name, entry->key);', 'if (xmlDictGrow();').
      - Ensure '#endif' is on its own line.
      - If we see a header guard start but no '#endif', append one.

    This avoids destroying LLM-added prototypes or helper definitions, while
    cleaning up broken lines produced by earlier autofix passes.
    """
    p = Path(path)
    if not p.exists():
        return

    txt = _read_text(p)
    if txt is None:
        return

    changed = False
    lines = txt.splitlines()

    cleaned: list[str] = []
    for line in lines:
        stripped = line.lstrip()

        # 1) Lines like:
        #    ret =xmlDictAddQString(dict, prefix, plen, name, len);
        #    ret = xmlDictAddQString(...)
        #    ret =xmlDictAddString(dict, name, len);
        if stripped.startswith("ret =xmlDictAddQString(") \
           or stripped.startswith("ret = xmlDictAddQString(") \
           or stripped.startswith("ret =xmlDictAddString(") \
           or stripped.startswith("ret = xmlDictAddString("):
            changed = True
            continue

        # 2) Lines like:
        #    if (xmlDictGrow();
        if stripped.startswith("if (xmlDictGrow(") and stripped.rstrip().endswith(");") is False:
            changed = True
            continue

        # 3) Bare call lines accidentally pasted at header scope, e.g.:
        #    (xmlStrQEqual(prefix, name, entry->key);
        if stripped.startswith("(") and "xmlStrQEqual" in stripped and stripped.rstrip().endswith(");"):
            changed = True
            continue

        cleaned.append(line)

    lines = cleaned

    # Ensure '#endif' is on its own line
    fixed_lines: list[str] = []
    for line in lines:
        if "#endif" in line and not line.strip().startswith("#endif"):
            before, after = line.split("#endif", 1)
            if before.strip():
                fixed_lines.append(before.rstrip())
            fixed_lines.append("#endif" + after.rstrip())
            changed = True
        else:
            fixed_lines.append(line)
    lines = fixed_lines

    # If we saw a guard but no #endif, append one
    has_guard = any("LLMSE_HELPER_STUBS_H" in ln and "#ifndef" in ln for ln in lines)
    has_endif = any("#endif" in ln for ln in lines)
    if has_guard and not has_endif:
        lines.append("")
        lines.append("#endif /* LLMSE_HELPER_STUBS_H */")
        changed = True

    if changed:
        try:
            p.write_text("\n".join(lines) + "\n", encoding="utf-8")
            print(f"[sanitize_helper_stubs_header] patched {p}")
        except Exception as e:
            print(f"[sanitize_helper_stubs_header] failed to write {p}: {e}", file=sys.stderr)


def main() -> None:
    """
    Tiny CLI wrapper for debugging:

        python3 helpers_sanitize.py out/build/instrumented/llmse_helper_stubs.h
    """
    path = sys.argv[1] if len(sys.argv) > 1 else "out/build/instrumented/llmse_helper_stubs.h"
    sanitize_helper_stubs_header(path)


if __name__ == "__main__":
    main()
