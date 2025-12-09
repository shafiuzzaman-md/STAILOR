#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
autofix_min_tu.py

Post-processing step for the SAILR minimal TU + helper stubs.

Goals:
  1) Avoid duplicate struct definitions between:
       - llmse_min_shims.h  (canonical)
       - llmse_helper_stubs.h (stubs)
     by removing struct definitions from the helper stubs if the same
     struct tag already exists in the shims header.

  2) Relax helper stub prototypes so they don't cause "too many arguments"
     errors when the minimal TU calls them with more parameters than the
     stub header originally declared.
     We do this by converting:

         unsigned int xmlDictHashName(const xmlChar *name);

     into:

         unsigned int xmlDictHashName();

     which in C means "no prototype" and allows any parameter list.

CLI:
  python3 scripts/autofix_min_tu.py \
    --min-shims out/build/instrumented/llmse_min_shims.h \
    --helper-stubs-h out/build/instrumented/llmse_helper_stubs.h \
    --helper-stubs-c out/build/instrumented/llmse_helper_stubs.c \
    --tu out/build/instrumented/llmse_min_tu.c \
    --helpers "xmlDictAddString,xmlDictAddQString,xmlDictHashName,xmlDictHashQName,xmlDictGrow,xmlDictLookupInternal,xmlDictFindEntry"
"""

import argparse
import re
from pathlib import Path
from typing import List, Set


def read_text(p: Path) -> str:
    return p.read_text(encoding="utf-8", errors="ignore")


def write_text(p: Path, s: str) -> None:
    p.write_text(s, encoding="utf-8")


def discover_struct_tags(shims_text: str) -> Set[str]:
    """
    Discover struct tags from the canonical shims header.

    Matches things like:
        struct _xmlDictEntry {
        struct _xmlDict {
    """
    struct_rx = re.compile(r"struct\s+([A-Za-z_]\w*)\s*\{", re.MULTILINE)
    tags = set(m.group(1) for m in struct_rx.finditer(shims_text))
    return tags


def remove_duplicate_structs(helper_h: str, struct_tags: Set[str]) -> str:
    """
    Remove struct definitions in helper_stubs.h that re-declare struct
    tags already defined in the shims header.

    We look for patterns like:
        struct TAG {
            ...
        };

    and erase the whole block.
    """
    out = helper_h
    for tag in struct_tags:
        # very simple greedy block match; good enough for these generated stubs
        pattern = re.compile(
            r"struct\s+"
            + re.escape(tag)
            + r"\s*\{[^}]*\};",
            re.MULTILINE | re.DOTALL,
        )
        new_out, n = pattern.subn("", out)
        if n > 0:
            print(f"[autofix_min_tu] removed {n} duplicate struct definition(s) for '{tag}' from helper stubs")
        out = new_out
    return out

def relax_helper_prototypes(helper_h: str, helpers: List[str]) -> str:
    """
    Convert helper function prototypes from concrete parameter lists to
    "no-parameter" form, so they don't cause "too many arguments to function"
    errors when the TU calls them with additional parameters.

    Example:
        unsigned int xmlDictHashName(const xmlChar *name);

    becomes:
        unsigned int xmlDictHashName();

    This keeps the return type but discards the parameter list.

    IMPORTANT: we only touch *proper prototypes* that start at the beginning
    of the line and we explicitly refuse to match lines starting with 'return'.
    This prevents accidentally rewriting statements like:
        return xmlDictHashName(...);
    or
        return(xmlDictHashName(...));
    into broken pseudo-prototypes.
    """
    out = helper_h
    for name in helpers:
        name = name.strip()
        if not name:
            continue

        # Match only when the function name appears in a prototype at the
        # start of the line, with some return type / qualifiers in front,
        # and NOT when the first token is 'return'.
        #
        # Rough shape:
        #   <ret-and-quals> name ( ... );
        #
        # ^\s*          : start of line + optional spaces
        # (?!return\b)  : first token must not be 'return'
        # ([A-Za-z_][\w\s\*\(\)]*\bname)
        #                : capture up through the function name
        # \s*\([^;{]*\)\s*;
        #                : parameter list and semicolon
        proto_rx = re.compile(
            r"^(\s*(?!return\b)[A-Za-z_][\w\s\*\(\)]*\b"
            + re.escape(name)
            + r")\s*\([^;{]*\)\s*;",
            re.MULTILINE,
        )

        def _repl(m: re.Match) -> str:
            prefix = m.group(1)
            repl = f"{prefix}();"
            print(f"[autofix_min_tu] relaxed prototype for helper '{name}' to: {repl}")
            return repl

        out, n = proto_rx.subn(_repl, out)
        if n == 0:
            # Not fatal; just means we didn't find a prototype for that helper.
            print(f"[autofix_min_tu] no prototype found for helper '{name}' in helper stubs header")
    return out


def ensure_klee_include(tu_text: str) -> str:
    """
    Ensure the minimal TU includes <klee/klee.h> so that klee_* functions
    are declared. This only helps with warnings; build usually still
    succeeds without it, but it's nice to be explicit.

    If an include is already present, we do nothing.
    Otherwise, we add:

        #include <klee/klee.h>

    after the first block of includes.
    """
    if "klee/klee.h" in tu_text:
        return tu_text

    lines = tu_text.splitlines()
    insert_idx = 0
    # Find first non-comment, non-empty line after includes
    for i, line in enumerate(lines):
        stripped = line.strip()
        if stripped.startswith("#include"):
            insert_idx = i + 1
        elif stripped == "" or stripped.startswith("/*") or stripped.startswith("//"):
            continue
        else:
            # stop once we hit real code
            break

    lines.insert(insert_idx, "#include <klee/klee.h>")
    print(f"[autofix_min_tu] injected '#include <klee/klee.h>' into minimal TU")
    return "\n".join(lines)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--min-shims",
        required=True,
        help="Path to llmse_min_shims.h (canonical structs/types).",
    )
    ap.add_argument(
        "--helper-stubs-h",
        required=True,
        help="Path to llmse_helper_stubs.h (helper stub declarations).",
    )
    ap.add_argument(
        "--helper-stubs-c",
        required=True,
        help="Path to llmse_helper_stubs.c (helper stub definitions). "
             "Currently unchanged, but kept for future extensions.",
    )
    ap.add_argument(
        "--tu",
        required=True,
        help="Path to llmse_min_tu.c (minimal TU with in-path + main).",
    )
    ap.add_argument(
        "--helpers",
        required=False,
        default="",
        help="Comma-separated list of helper function names to relax prototypes for.",
    )
    args = ap.parse_args()

    min_shims_path = Path(args.min_shims)
    helper_h_path = Path(args.helper_stubs_h)
    helper_c_path = Path(args.helper_stubs_c)
    tu_path = Path(args.tu)

    # Read inputs
    shims_text = read_text(min_shims_path)
    helper_h_text = read_text(helper_h_path)
    tu_text = read_text(tu_path)

    # 1) Identify struct tags from the shims header and drop duplicates from helper stubs.
    struct_tags = discover_struct_tags(shims_text)
    if struct_tags:
        print(f"[autofix_min_tu] discovered struct tags in shims: {sorted(struct_tags)}")
    else:
        print("[autofix_min_tu] no struct tags discovered in shims header")

    helper_h_text = remove_duplicate_structs(helper_h_text, struct_tags)

    # 2) Relax helper prototypes to accept any argument list.
    helpers = [h.strip() for h in args.helpers.split(",")] if args.helpers else []
    if helpers:
        helper_h_text = relax_helper_prototypes(helper_h_text, helpers)

    # 3) Ensure TU includes klee/klee.h so klee_* are declared.
    tu_text = ensure_klee_include(tu_text)

    # Write back
    write_text(helper_h_path, helper_h_text)
    write_text(tu_path, tu_text)

    print(f"[autofix_min_tu] patched helper stubs header → {helper_h_path}")
    print(f"[autofix_min_tu] patched minimal TU → {tu_path}")


if __name__ == "__main__":
    main()
