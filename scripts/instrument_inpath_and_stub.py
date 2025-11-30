#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Minimal TU builder where grooming is LLM-owned.

Behavior:
  - Extract ONLY in-path function bodies from the original TU (includes pruned).
  - Generate helper stubs (rename via macro) and respect groom 'effects' for helpers.
  - Emit shims for minimal typedefs and required prototypes.
  - Grooming is read from --groom-plan (preferred) or --stub-plan.groom.
  - By default, REQUIRE LLM grooming; if missing/incomplete, emit
    build_root/out/groom_requirements.json and exit(2).
  - Optional --fallback-groom allows conservative auto-groom (not default).

New behavior (single-TU mode):
  - Emit a single C file llmse_min_tu.c that contains:
      * in-path function bodies (including entrypoint)
      * a harness 'main()' that uses __llmse_groom_all and calls the entrypoint.
"""

import argparse, json, pathlib, re, bisect, sys
from typing import Dict, Any, List, Tuple, Set, Optional

# ---------- I/O ----------
def read_text(p: pathlib.Path) -> str:
    return p.read_text(encoding="utf-8", errors="ignore")

def write_text(p: pathlib.Path, s: str) -> None:
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(s, encoding="utf-8")

def read_json(p: pathlib.Path) -> Dict[str, Any]:
    return json.loads(read_text(p))

def write_json(p: pathlib.Path, obj: Dict[str, Any]) -> None:
    write_text(p, json.dumps(obj, indent=2))

# ---------- Spec normalize ----------
SPEC_BASENAME_RX = re.compile(r'^\d+_(?P<file>.+)_(?P<line>\d+)_.*\.json$')
def normalize_spec(spec_raw: Dict[str, Any], spec_path: pathlib.Path) -> Dict[str, Any]:
    def first(d, *keys):
        for k in keys:
            if isinstance(k, tuple):
                cur = d; ok = True
                for kk in k:
                    if isinstance(cur, dict) and kk in cur:
                        cur = cur[kk]
                    else:
                        ok = False
                        break
                if ok:
                    return cur
            else:
                if isinstance(d, dict) and k in d:
                    return d[k]
        return None
    f = first(spec_raw, "file", "uri", ("physicalLocation", "artifactLocation", "uri"))
    l = first(spec_raw, "line", "startLine", ("region", "startLine"))
    if f and l:
        return {"file": str(f), "line": int(l)}
    if "finding" in spec_raw:
        fr = spec_raw["finding"]
        f = first(fr, "file", "uri")
        l = first(fr, "line", "startLine")
        if f and l:
            return {"file": str(f), "line": int(l)}
    m = SPEC_BASENAME_RX.match(spec_path.name)
    if m:
        return {"file": m.group("file"), "line": int(m.group("line"))}
    raise ValueError("Spec missing file/line")

# ---------- Map TU ----------
def map_to_src(spec_file: str, src_root: pathlib.Path) -> pathlib.Path:
    sp = pathlib.Path(spec_file)
    if sp.is_absolute() and sp.exists():
        try:
            sp.resolve().relative_to(src_root.resolve())
            return sp.resolve()
        except Exception:
            pass
    for p in src_root.rglob(pathlib.Path(spec_file).name):
        return p.resolve()
    raise FileNotFoundError(f"Cannot map spec file='{spec_file}' under '{src_root}'")

# ---------- Function body extraction ----------
FUNC_HEADER_TEMPLATE = re.compile(
    r"""
    (?P<sig>(?:^|\n)
        (?:(?:static|inline|extern|ATTRIBUTE_[A-Z_]+)\s+)*  # qualifiers/macros
        [\w\*\s\(\)]+?                                      # return-ish
        \s+({name})\s*
        \(
            (?:[^()"]+|"[^"]*"|\([^()]*\))*
        \)\s*)
    \{
    """,
    re.M | re.X,
)

def _build_line_starts(s: str) -> List[int]:
    starts = [0]
    for i, ch in enumerate(s):
        if ch == "\n":
            starts.append(i + 1)
    return starts

def _offset_to_line(starts: List[int], off: int) -> int:
    return bisect.bisect_right(starts, off)

def extract_function_text_by_name(src: str, name: str) -> Tuple[str, int, int]:
    pattern = FUNC_HEADER_TEMPLATE.pattern.replace("{name}", re.escape(name))
    rx = re.compile(pattern, re.M | re.X)
    m = rx.search(src)
    if not m:
        raise ValueError(f"Function '{name}' not found")
    sig_start = m.start("sig")
    i = m.end("sig") - 1
    n = len(src)
    depth = 0
    while i < n:
        ch = src[i]
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                body = src[sig_start : i + 1]
                starts = _build_line_starts(src)
                return (body, _offset_to_line(starts, sig_start), _offset_to_line(starts, i))
        elif ch == '"':
            i += 1
            while i < n:
                if src[i] == '"' and src[i - 1] != "\\":
                    break
                i += 1
        elif ch == "/":
            if i + 1 < n and src[i + 1] == "/":
                i += 2
                while i < n and src[i] != "\n":
                    i += 1
            elif i + 1 < n and src[i + 1] == "*":
                i += 2
                while i + 1 < n and not (src[i] == "*" and src[i + 1] == "/"):
                    i += 1
                i += 1
        i += 1
    raise ValueError(f"Unclosed body for '{name}'")

# ---------- Macro extraction ----------
MACRO_RX = re.compile(
    r'^\s*#\s*define\s+'
    r'(?P<name>[A-Za-z_]\w*)'
    r'\s+'
    r'(?P<value>[^\s/][^\n/]*)',  # value up to comment or EOL
    re.M
)

def extract_macros(tu_text: str, needed: List[str]) -> Dict[str, str]:
    """Find #define NAME VALUE in the original TU for selected names."""
    found: Dict[str, str] = {}
    for m in MACRO_RX.finditer(tu_text):
        name = m.group("name")
        if name not in needed:
            continue
        value = m.group("value").strip()
        # strip trailing comment if any
        value = re.split(r"\s*/\*", value, 1)[0].strip()
        value = re.split(r"\s*//", value, 1)[0].strip()
        found[name] = value
    return found

REQUIRED_MACROS = ["MIN_HASH_SIZE", "MAX_HASH_SIZE", "MAX_FILL_DENOM", "MAX_FILL_NUM"]

# ---------- Shims ----------
def gen_min_shims_h(macros: Dict[str, str]) -> str:
    MIN_HASH_SIZE = macros.get("MIN_HASH_SIZE", "8u")
    MAX_HASH_SIZE = macros.get("MAX_HASH_SIZE", "(1u << 24)")
    MAX_FILL_DENOM = macros.get("MAX_FILL_DENOM", "4u")
    MAX_FILL_NUM = macros.get("MAX_FILL_NUM", "3u")

    return f"""#pragma once
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

#ifndef ATTRIBUTE_NO_SANITIZE_INTEGER
#define ATTRIBUTE_NO_SANITIZE_INTEGER
#endif

typedef unsigned char xmlChar;

typedef struct {{
  unsigned hashValue;
  const xmlChar *name;
}} xmlHashedString, xmlDictEntry;

typedef struct _xmlDict {{
    int ref_counter;
    xmlDictEntry *table;
    size_t size;
    unsigned int nbElems;
    void *strings;
    struct _xmlDict *subdict;
    unsigned seed;
    size_t limit;
}} xmlDict, *xmlDictPtr;

/* Minimal copies of dict.c hash table constants; values are inferred
 * from the original TU when available.
 */
#ifndef MIN_HASH_SIZE
#define MIN_HASH_SIZE {MIN_HASH_SIZE}
#endif

#ifndef MAX_HASH_SIZE
#define MAX_HASH_SIZE {MAX_HASH_SIZE}
#endif

#ifndef MAX_FILL_DENOM
#define MAX_FILL_DENOM {MAX_FILL_DENOM}
#endif

#ifndef MAX_FILL_NUM
#define MAX_FILL_NUM {MAX_FILL_NUM}
#endif
"""

# ---------- Groom introspection ----------
DEREF_ARROW_RX = re.compile(r"\b([a-zA-Z_]\w*)->([a-zA-Z_]\w*)\b")
CALLOP_RX = re.compile(r"\b(memcmp|memcpy|memmove|strlen|strnlen|xmlStrQEqual)\s*\(([^)]*)\)")
ASSIGN_ARROW_RX = re.compile(
    r"\b([a-zA-Z_]\w*)->([a-zA-Z_]\w*)\s*=\s*[^;]+;"
)

def parse_entry_arg_names(entry_sig: str) -> List[str]:
    names = []
    m = re.search(r"\((.*)\)", entry_sig)
    if not m:
        return names
    for t in [x.strip() for x in m.group(1).split(",") if x.strip()]:
        ids = re.findall(r"[a-zA-Z_]\w*", t)
        if ids:
            names.append(ids[-1])
    return names

def collect_requirements(entry_sig: str, inpath_blob: str, tu_text: str) -> Dict[str, Any]:
    req: Dict[str, Any] = {"args": [], "globals": [], "constructors": []}
    argnames = parse_entry_arg_names(entry_sig)

    derefs: Dict[str, Set[str]] = {}
    for v, f in DEREF_ARROW_RX.findall(inpath_blob):
        derefs.setdefault(v, set()).add(f)

    char_users: Set[str] = set()
    for m in CALLOP_RX.finditer(inpath_blob):
        args = m.group(2)
        for v in re.findall(r"\b([a-zA-Z_]\w*)\b", args):
            char_users.add(v)

    constructor_candidates: Set[str] = set()
    FUNC_NAME_RX = re.compile(r"\b([a-zA-Z_]\w*)\s*\(", re.M)
    for m in ASSIGN_ARROW_RX.finditer(tu_text):
        v = m.group(1)
        off = m.start()
        window_start = max(0, off - 500)
        window = tu_text[window_start:off]
        for fn in FUNC_NAME_RX.findall(window):
            if fn not in argnames and fn not in ("if", "while", "for", "switch"):
                constructor_candidates.add(fn)

    for n in argnames:
        entry = {"name": n, "fields": sorted(derefs.get(n, []))}
        if n in char_users:
            entry["byte_buffer"] = True
        if entry["fields"] or entry.get("byte_buffer"):
            req["args"].append(entry)

    if constructor_candidates:
        req["constructors"] = sorted(constructor_candidates)

    return req

# ---------- Helper stubs ----------
def gen_stub_header(helper_specs: Dict[str, Any], rename_prefix="__llmse_stub_") -> str:
    out = []
    out.append("#pragma once\n")
    out.append("#include <stddef.h>\n")
    out.append("#include <stdint.h>\n")
    out.append("#include <klee/klee.h>\n\n")
    for fname, spec in helper_specs.items():
        ret = spec.get("ret", "int").strip()
        sig = spec.get("signature")
        stub_name = f"{rename_prefix}{fname}"
        if sig:
            proto = re.sub(r"\b" + re.escape(fname) + r"\s*\(", f"{stub_name}(", sig.strip())
            if not proto.endswith(";"):
                proto += ";"
            out.append(proto + "\n")
        else:
            out.append(f"{ret} {stub_name}(void);\n")
        out.append(f"#define {fname} {stub_name}\n")
    return "".join(out)

def _helper_effects_for(fname: str, groom_helpers: List[Dict[str, Any]]) -> Dict[str, Any]:
    for h in groom_helpers or []:
        if h.get("name") == fname:
            return h.get("effects", {}) or {}
    return {}

def gen_stub_impl(
    helper_specs: Dict[str, Any],
    groom_helpers: List[Dict[str, Any]],
    rename_prefix="__llmse_stub_",
) -> str:
    out = []
    out.append('#include "llmse_helper_stubs.h"\n')
    out.append("#include <stdarg.h>\n")
    out.append("#include <stdlib.h>\n")
    out.append("#include <string.h>\n\n")
    out.append("extern void* klee_malloc(size_t) __attribute__((weak));\n")
    out.append(
        "static void* __llmse_malloc(size_t n){ if(klee_malloc) return klee_malloc(n); return malloc(n); }\n\n"
    )
    for fname, spec in helper_specs.items():
        ret = spec.get("ret", "int").strip()
        stub_name = f"{rename_prefix}{fname}"
        sig = spec.get("signature")
        body_lines = spec.get("body", [])
        eff = _helper_effects_for(fname, groom_helpers)
        min_len = int(eff.get("min_len", 0) or 0)
        return_nonnull = bool(eff.get("return_nonnull", False))
        return_zero = bool(eff.get("return_zero", False))

        if sig:
            defn = re.sub(r"\b" + re.escape(fname) + r"\s*\(", f"{stub_name}(", sig.strip())
            out.append(defn + " {\n")
        else:
            out.append(f"{ret} {stub_name}(void) {{\n")

        out.append("  /* LLM-provided stub body with effects */\n")
        if body_lines:
            for L in body_lines:
                out.append("  " + L.rstrip() + "\n")
        else:
            if ret.endswith("*"):
                if return_nonnull:
                    out.append(f"  size_t n = {max(min_len, 8)};\n")
                    out.append("  void* p = __llmse_malloc(n);\n")
                    out.append("  if(!p) klee_assert(0);\n")
                    out.append("  memset(p, 0, n);\n")
                    out.append("  return p;\n")
                else:
                    out.append("  return 0;\n")
            else:
                if return_zero:
                    out.append("  return 0;\n")
                else:
                    out.append("  return 0;\n")
        out.append("}\n\n")
    return "".join(out)

# ---------- Groom header/impl ----------
def gen_groom_header_from_plan(groom_plan: Dict[str, Any]) -> str:
    out = []
    out.append("#pragma once\n")
    out.append("#include <stddef.h>\n")
    out.append("#include <stdint.h>\n")
    out.append("#include <klee/klee.h>\n")
    out.append("#include <stdlib.h>\n")
    out.append('#include "llmse_min_shims.h"\n')
    out.append("\n/* LLM-defined groomers */\n")
    for a in groom_plan.get("args", []):
        name = a.get("name")
        if not name:
            continue
        out.append(f"void __llmse_groom_{name}(void **p_out, int *i_out);\n")
    out.append("\nvoid __llmse_groom_all(void **opaque1, void **opaque2, int *scalar);\n")
    return "".join(out)

def _emit_alloc_block(a: Dict[str, Any]) -> List[str]:
    lines = []
    if "alloc_bytes" in a:
        lines.append("size_t __n = (size_t)%d;" % int(a["alloc_bytes"]))
    elif (
        "alloc_range" in a
        and isinstance(a["alloc_range"], list)
        and len(a["alloc_range"]) == 2
    ):
        lo, hi = a["alloc_range"]
        lines.append(f"size_t __n = (size_t){max(int(lo), 1)};")
    else:
        lines.append("size_t __n = 64;")
    lines.append("void* __mem = klee_malloc ? klee_malloc(__n) : malloc(__n);")
    lines.append("klee_assert(__mem != NULL);")
    if a.get("zero"):
        lines.append("memset(__mem, 0, __n);")
    if a.get("symbolic"):
        lines.append(
            f'klee_make_symbolic(__mem, __n, "{a.get("name","buf")}");'
        )
    if a.get("nul_terminate"):
        lines.append("if (__n>0) ((char*)__mem)[__n-1] = 0;")
    lines.append("*p_out = __mem;")
    return lines

def _emit_scalar_block(a: Dict[str, Any]) -> List[str]:
    lines = []
    lines.append("int __v = 0;")
    if a.get("symbolic"):
        lines.append(
            f'klee_make_symbolic(&__v, sizeof(__v), "{a.get("name","scalar")}");'
        )
    for cond in a.get("assume", []) or []:
        c = cond.strip()
        if c:
            nm = a.get("name", "v")
            c = re.sub(rf"\b{re.escape(nm)}\b", "__v", c)
            lines.append(f"klee_assume({c});")
    lines.append("*i_out = __v;")
    return lines

def gen_groom_impl_from_plan(groom_plan: Dict[str, Any]) -> str:
    out = []
    out.append('#include "llmse_groom.h"\n')
    out.append("#include <string.h>\n\n")
    out.append("extern void* klee_malloc(size_t) __attribute__((weak));\n")
    out.append(
        "static void* __llmse_malloc(size_t n){ if(klee_malloc) return klee_malloc(n); return malloc(n); }\n\n"
    )
    for a in groom_plan.get("args", []):
        name = a.get("name")
        if not name:
            continue
        out.append(f"void __llmse_groom_{name}(void **p_out, int *i_out) {{\n")
        out.append("  (void)i_out;\n")
        if ("alloc_bytes" in a) or ("alloc_range" in a) or a.get("nul_terminate"):
            for L in _emit_alloc_block(a):
                out.append("  " + L + "\n")
        else:
            for L in _emit_scalar_block(a):
                out.append("  " + L + "\n")
        out.append("}\n\n")

    out.append("void __llmse_groom_all(void **opaque1, void **opaque2, int *scalar){\n")
    names = [a.get("name") for a in groom_plan.get("args", []) if a.get("name")]
    if names:
        if len(names) >= 1:
            out.append(f"  __llmse_groom_{names[0]}(opaque1, (int*)0);\n")
        if len(names) >= 2:
            out.append(f"  __llmse_groom_{names[1]}(opaque2, (int*)0);\n")
        if len(names) >= 3:
            out.append(f"  __llmse_groom_{names[2]}((void**)0, scalar);\n")
    out.append("}\n")
    return "".join(out)

# ---------- Minimal TU + harness ----------
def gen_harness_main(entry_sig: str) -> str:
    """
    Emit a simple main() that:
      - uses __llmse_groom_all to get three values
      - casts them according to entry_sig
      - makes scalar parameters symbolic
      - calls the entrypoint once
    Assumes entry_sig is like:
      const xmlChar *xmlDictLookup(xmlDict *dict, const xmlChar *name, int len)
    """
    entry_sig = entry_sig.strip()
    if not entry_sig:
        # Fallback trivial main (won't be very useful, but keeps things compilable)
        return (
            "int main(void) {\n"
            "  /* Fallback main: nothing to do */\n"
            "  return 0;\n"
            "}\n"
        )

    # Extract function name and parameter list from signature
    m = re.search(r"(.*\))", entry_sig)
    full = entry_sig if not m else m.group(1)

    fn_m = re.search(r"([a-zA-Z_]\w*)\s*\(", full)
    fn_name = fn_m.group(1) if fn_m else "entrypoint"

    # crude param parse: split by comma, keep up to 3 params
    param_part = ""
    par_m = re.search(r"\((.*)\)", full)
    if par_m:
        param_part = par_m.group(1).strip()
    params = [p.strip() for p in param_part.split(",") if p.strip()]
    params = params[:3]

    cast_lines = []
    sym_lines = []
    arg_names = []

    for idx, p in enumerate(params):
        # identify last identifier as var name
        ids = re.findall(r"[a-zA-Z_]\w*", p)
        varname = ids[-1] if ids else f"arg{idx}"

        # remove the variable name from the type part
        typename = re.sub(rf"\b{re.escape(varname)}\b", "", p).strip()
        typename = re.sub(r"\s+", " ", typename)  # normalize spaces

        src = "opaque1" if idx == 0 else ("opaque2" if idx == 1 else "scalar")

        if not typename:
            typename = "int"  # ultra-conservative fallback

        cast_lines.append(f"  {typename} {varname} = ({typename}){src};")
        arg_names.append(varname)

        # Heuristic: treat non-pointer params as scalar and make them symbolic
        # (pointers/buffers stay groom-owned via __llmse_groom_all).
        if "*" not in typename and "[" not in typename:
            sym_lines.append(
                f'  klee_make_symbolic(&{varname}, sizeof({varname}), "{varname}");'
            )

    call_line = (
        f"  (void){fn_name}({', '.join(arg_names)});"
        if arg_names
        else f"  (void){fn_name}();"
    )

    body = [
        "int main(void) {",
        "  void *opaque1 = 0;",
        "  void *opaque2 = 0;",
        "  int scalar = 0;",
        "  __llmse_groom_all(&opaque1, &opaque2, &scalar);",
        "",
        "  /* Cast groomed values to entrypoint parameters */",
    ]
    body.extend(cast_lines)
    body.append("")
    if sym_lines:
        body.append("  /* Declare scalar parameters symbolic */")
        body.extend(sym_lines)
        body.append("")
    body.append("  /* Call entrypoint once; assertion is inside entrypoint body */")
    body.append(call_line)
    body.append("  return 0;")
    body.append("}")
    return "\n".join(body) + "\n"

def build_minimal_tu(inpath_bodies: List[str], entry_sig: str) -> str:
    bodies = []
    for b in inpath_bodies:
        clean = re.sub(
            r'^\s*#\s*include\s+[<\"].+[>\"].*$', "", b, flags=re.M
        )
        bodies.append(clean.strip() + "\n")
    harness = gen_harness_main(entry_sig)
    return (
        "/* LLMSE minimal TU (in-path + harness main) */\n"
        "#include <stddef.h>\n"
        "#include <stdint.h>\n"
        "#include <string.h>\n"
        "#include <limits.h>\n"
        "#include <klee/klee.h>\n"
        "#include \"llmse_min_shims.h\"\n"
        "#include \"llmse_helper_stubs.h\"\n"
        "#include \"llmse_groom.h\"\n\n"
        "/* in-path function bodies */\n\n"
        + "\n\n".join(bodies)
        + "\n\n/* harness main() */\n\n"
        + harness
    )

# ---------- Main ----------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--spec", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--build-root", required=True)
    ap.add_argument("--stub-plan", required=False)
    ap.add_argument(
        "--groom-plan",
        required=False,
        help="JSON file with top-level 'groom' object (preferred).",
    )
    ap.add_argument("--emit-groom", action="store_true", default=False)
    ap.add_argument(
        "--require-llm-groom",
        action="store_true",
        default=False,
        help="If present, fail when grooming coverage is incomplete.",
    )
    ap.add_argument(
        "--fallback-groom",
        action="store_true",
        default=False,
    )
    ap.add_argument("--update-plan", action="store_true", default=False)
    args = ap.parse_args()

    plan_path = pathlib.Path(args.plan)
    spec_path = pathlib.Path(args.spec)
    src_root = pathlib.Path(args.src_root).resolve()
    build_root = pathlib.Path(args.build_root).resolve()

    plan = read_json(plan_path)
    spec_raw = read_json(spec_path)
    spec = normalize_spec(spec_raw, spec_path)

    tu_src_path = map_to_src(spec["file"], src_root)
    tu_text = read_text(tu_src_path)
    print(f"[i] Instrumenting TU: {tu_src_path} (line {spec['line']})")

    # Infer macro values from TU
    inferred_macros = extract_macros(tu_text, REQUIRED_MACROS)
    print(f"[i] Inferred macros: {inferred_macros}")

    entry = plan.get("entrypoint") or {}
    entry_name = entry.get("name", "")
    entry_sig = entry.get("signature", "")

    in_path = list(dict.fromkeys(plan.get("in_path", [])))
    helpers = list(dict.fromkeys(plan.get("helpers", [])))

    # Ensure entrypoint is in the in-path set
    if entry_name and entry_name not in in_path:
        in_path.append(entry_name)

    print(f"[i] In-path keep: {in_path}")
    print(f"[i] Helpers stub: {helpers}")

    inpath_bodies: List[str] = []
    for fn in in_path:
        body, _, _ = extract_function_text_by_name(tu_text, fn)
        inpath_bodies.append(body)
    inpath_blob = "\n\n".join(inpath_bodies)

    user_stub_plan: Dict[str, Any] = {}
    if args.stub_plan:
        user_stub_plan = read_json(pathlib.Path(args.stub_plan))

    groom_plan_obj: Optional[Dict[str, Any]] = None
    if args.groom_plan:
        gp = read_json(pathlib.Path(args.groom_plan))
        groom_plan_obj = gp.get("groom") if "groom" in gp else gp
    elif "groom" in user_stub_plan:
        groom_plan_obj = user_stub_plan["groom"]

    helper_specs: Dict[str, Any] = {}
    for h in helpers:
        spec_h = (user_stub_plan.get("helpers", {}) or {}).get(h)
        helper_specs[h] = (
            dict(spec_h)
            if spec_h is not None
            else {"ret": "int", "body": ["return 0;"]}
        )

    shim_h_path = build_root / "llmse_min_shims.h"
    stub_h_path = build_root / "llmse_helper_stubs.h"
    stub_c_path = build_root / "llmse_helper_stubs.c"
    write_text(shim_h_path, gen_min_shims_h(inferred_macros))
    write_text(stub_h_path, gen_stub_header(helper_specs))
    write_text(
        stub_c_path,
        gen_stub_impl(helper_specs, (groom_plan_obj or {}).get("helpers", [])),
    )
    print(f"[i] Shim header    → {shim_h_path}")
    print(f"[i] Stub header    → {stub_h_path}")
    print(f"[i] Stub impl      → {stub_c_path}")

    out_tu_path = build_root / "llmse_min_tu.c"
    write_text(out_tu_path, build_minimal_tu(inpath_bodies, entry_sig))
    print(f"[i] Minimal TU+main → {out_tu_path}")

    # Requirements (args / constructors / macro status)
    req = collect_requirements(entry_sig, inpath_blob, tu_text)
    missing_macros = [name for name in REQUIRED_MACROS if name not in inferred_macros]
    if missing_macros:
        req.setdefault("macros", {})
        req["macros"]["missing"] = missing_macros
        req["macros"]["context_tu"] = str(tu_src_path)

    needs_path = build_root / "out" / "groom_requirements.json"

    if groom_plan_obj is None:
        if args.require_llm_groom and not args.fallback_groom:
            write_text(needs_path, json.dumps(req, indent=2))
            print(f"[!] No grooming provided. Wrote requirements → {needs_path}")
            sys.exit(2)
        else:
            groom_plan_obj = {"args": [], "helpers": [], "globals": []}

    provided = {
        a.get("name"): a for a in groom_plan_obj.get("args", []) if a.get("name")
    }
    missing = [
        need["name"]
        for need in req.get("args", [])
        if need["name"] not in provided
    ]

    if (args.require_llm_groom and missing) and not args.fallback_groom:
        write_text(needs_path, json.dumps(req, indent=2))
        print(f"[!] Missing LLM grooming for: {missing}")
        print(f"[!] Wrote requirements → {needs_path}")
        sys.exit(2)

    if args.fallback_groom and missing:
        for nm in missing:
            groom_plan_obj.setdefault("args", []).append(
                {
                    "name": nm,
                    "alloc_range": [8, 64],
                    "zero": True,
                    "symbolic": True,
                    "nul_terminate": True,
                }
            )
        print(f"[i] Fallback groom inserted for: {missing}")

    groom_h = groom_c = None
    if args.emit_groom:
        groom_h = build_root / "llmse_groom.h"
        groom_c = build_root / "llmse_groom.c"
        write_text(groom_h, gen_groom_header_from_plan(groom_plan_obj))
        write_text(groom_c, gen_groom_impl_from_plan(groom_plan_obj))
        print(f"[i] Groom header   → {groom_h}")
        print(f"[i] Groom impl     → {groom_c}")

    # ---- Plan updates (single-TU mode) ----
    gen = plan.setdefault("generated", {})
    gen["minimal_tu_c"] = str(out_tu_path)
    gen["min_shims_h"] = str(shim_h_path)
    gen["helper_stubs_h"] = str(stub_h_path)
    gen["helper_stubs_c"] = str(stub_c_path)
    if groom_h and groom_c:
        gen["groom_h"] = str(groom_h)
        gen["groom_c"] = str(groom_c)

    plan["instrumented_path"] = str(out_tu_path)

    # No separate driver; compile_cmd (if present) is now irrelevant.
    if "compile_cmd" in gen:
        del gen["compile_cmd"]

    if args.update_plan:
        write_json(plan_path, plan)
        print(f"[i] Plan updated   → {plan_path}")

    print(
        "[i] Done: single TU built (in-path + main); helper stubs emitted; grooming integrated."
    )

if __name__ == "__main__":
    main()
