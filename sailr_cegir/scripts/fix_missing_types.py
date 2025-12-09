#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
fix_missing_types.py

Goal: make the minimal TU compile by fixing *type* definitions only, before any LLM editing.

Behavior:
  - Reads llmse_min_shims.h (the shim header you already generated from facts).
  - Uses the source tree to find *real* struct definitions (and optionally typedefs).
  - Replaces any stubbed struct definitions in the shims with the real ones.
  - DOES NOT touch function declarations or add new function prototypes.

Usage:
  python3 fix_missing_types.py \
    --tu out/build/instrumented/llmse_min_tu.c \
    --shims out/build/instrumented/llmse_min_shims.h \
    --src-root ../../../dataset/62911/libxml2_62911_vul \
    --facts sa/facts.json \
    --max-rounds 1
"""

import argparse
import json
import pathlib
import re
from typing import Dict, List, Optional


# ---------- I/O helpers ----------

def read_text(p: pathlib.Path) -> str:
    return p.read_text(encoding="utf-8", errors="ignore")


def write_text(p: pathlib.Path, s: str) -> None:
    p.write_text(s, encoding="utf-8")


def read_json(p: pathlib.Path) -> Dict:
    return json.loads(read_text(p))


# ---------- Struct extraction from files ----------

# Handles:
#   struct Foo { ... };
#   struct Foo { ... } Bar;
STRUCT_DEF_RX_TEMPLATE = r"""
(
    struct\s+{name}\s*                  # 'struct Foo'
    \{                                  # opening brace
        .*?                             # body (non-greedy)
    \}                                  # closing brace
    (?:\s+[A-Za-z_]\w*)?                # optional trailing typedef name
    \s*;                                # semicolon
)
"""

def extract_struct_from_text(text: str, struct_name: str) -> Optional[str]:
    """
    Extract 'struct <struct_name> { ... };' (optionally with trailing typedef)
    from a file. Matches across multiple lines.
    """
    rx = re.compile(
        STRUCT_DEF_RX_TEMPLATE.format(name=re.escape(struct_name)),
        re.S | re.X,
    )
    m = rx.search(text)
    return m.group(1) if m else None


def extract_struct_from_file(path: pathlib.Path, struct_name: str) -> Optional[str]:
    try:
        text = read_text(path)
    except OSError:
        return None
    return extract_struct_from_text(text, struct_name)


def find_struct_in_tree(src_root: pathlib.Path, struct_name: str) -> Optional[str]:
    """
    Search for a definition of 'struct struct_name { ... };' (with optional
    trailing typedef) in the source tree. We look in both .h and .c files,
    preferring headers first.
    """
    # Prefer headers first, then .c
    for ext in (".h", ".hpp", ".hh", ".hxx", ".c"):
        for p in src_root.rglob(f"*{ext}"):
            body = extract_struct_from_file(p, struct_name)
            if body:
                print(f"[i] Found struct {struct_name} in {p}")
                return body
    return None


# ---------- Patching the shims header ----------

def replace_or_append_struct(shims_text: str, struct_name: str, new_def: str) -> str:
    """
    In shims_text, replace any existing definition of struct struct_name
    with new_def. If none exists, append new_def at the end.

    We deliberately match both:
      struct Foo { ... };
      struct Foo { ... } Bar;
    """
    rx = re.compile(
        STRUCT_DEF_RX_TEMPLATE.format(name=re.escape(struct_name)),
        re.S | re.X,
    )
    if rx.search(shims_text):
        shims_text = rx.sub(new_def, shims_text)
    else:
        if not shims_text.endswith("\n"):
            shims_text += "\n"
        shims_text += "\n/* Auto-imported type from source tree */\n"
        shims_text += new_def + "\n"
    return shims_text


# ---------- Collect candidate struct names ----------

def collect_struct_names_from_facts(facts: Dict) -> List[str]:
    """
    If you pass a facts.json, use facts['structs'][i]['name'] as candidates.
    """
    names = []
    for st in facts.get("structs", []):
        nm = st.get("name")
        if nm and nm not in names:
            names.append(nm)
    return names


def collect_struct_names_from_tu(tu_text: str) -> List[str]:
    """
    Fallback: heuristically collect struct names referenced in the TU
    of the form 'struct Foo' or 'struct _Foo'.

    This helps when no facts are available, or to intersect with facts.
    """
    names = set()
    for m in re.finditer(r"\bstruct\s+([A-Za-z_]\w*)", tu_text):
        names.add(m.group(1))
    return sorted(names)


def filter_struct_names_used_in_tu(candidate_names: List[str], tu_text: str) -> List[str]:
    """
    Restrict candidate struct names to those actually mentioned in the TU,
    to avoid scanning the entire tree for irrelevant types.
    """
    used = set()
    for nm in candidate_names:
        # Look for 'struct nm' or 'nm *', 'nm;' etc. in the TU
        if re.search(rf"\bstruct\s+{re.escape(nm)}\b", tu_text):
            used.add(nm)
        elif re.search(rf"\b{re.escape(nm)}\s*\*", tu_text):
            used.add(nm)
        elif re.search(rf"\b{re.escape(nm)}\s*[;,)]", tu_text):
            used.add(nm)
    return sorted(used)


# ---------- Main logic ----------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tu", required=True, help="Minimal TU C file (llmse_min_tu.c)")
    ap.add_argument("--shims", required=True, help="Shim header (llmse_min_shims.h)")
    ap.add_argument("--src-root", required=True, help="Source tree root")
    ap.add_argument("--facts", required=False, help="Optional static-analysis facts JSON")
    ap.add_argument("--extra-clang-arg", action="append", default=[],
                    help="(reserved) kept for compatibility; not used here")
    ap.add_argument("--max-rounds", type=int, default=1,
                    help="(reserved) kept for compatibility; not used here")
    args = ap.parse_args()

    tu_path = pathlib.Path(args.tu)
    shims_path = pathlib.Path(args.shims)
    src_root = pathlib.Path(args.src_root).resolve()

    tu_text = read_text(tu_path)
    shims_text = read_text(shims_path)

    facts = {}
    if args.facts:
        try:
            facts = read_json(pathlib.Path(args.facts))
        except Exception as e:
            print(f"[i] Warning: failed to read facts '{args.facts}': {e}")
            facts = {}

    # 1) Get candidate struct names from facts and/or TU
    fact_names = collect_struct_names_from_facts(facts)
    tu_names = collect_struct_names_from_tu(tu_text)

    if fact_names:
        # Prefer intersection: only types that are both in facts and actually used in TU
        candidate = filter_struct_names_used_in_tu(fact_names, tu_text)
        if not candidate:
            # If intersection is empty, fall back to TU-derived names
            candidate = tu_names
    else:
        candidate = tu_names

    if not candidate:
        print("[i] No struct names discovered; nothing to do.")
        return

    print(f"[i] fix_missing_types: candidate struct names (used in TU) = {candidate}")

    # 2) For each struct name, try to find real definition in tree and patch shims
    patched_any = False
    for nm in candidate:
        body = find_struct_in_tree(src_root, nm)
        if not body:
            # no real definition found; keep existing shim version
            continue
        old_shims_text = shims_text
        shims_text = replace_or_append_struct(shims_text, nm, body)
        if shims_text != old_shims_text:
            print(f"[i] Patched struct {nm} in shims header")
            patched_any = True

    if patched_any:
        write_text(shims_path, shims_text)
        print(f"[i] Updated shims header → {shims_path}")
    else:
        print("[i] No structs patched; shims header unchanged.")

if __name__ == "__main__":
    main()
