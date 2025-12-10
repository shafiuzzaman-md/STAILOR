#!/usr/bin/env python3
import argparse, json, os, pathlib, re, textwrap
from typing import Optional

# --------------------------- small io helpers --------------------------------

def jload(p):
    return json.loads(pathlib.Path(p).read_text(encoding="utf-8", errors="ignore"))

def jdump(p, obj):
    p = pathlib.Path(p)
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(json.dumps(obj, indent=2), encoding="utf-8")

def read(p):
    return pathlib.Path(p).read_text(encoding="utf-8", errors="ignore")

# --------------------------- fact helpers ------------------------------------

def collect_typedefs_and_structs(facts):
    """
    Return:
      typedefs_src: string with typedefs
      structs_src:  string with struct definitions
      struct_names: list of struct names
    """
    typedefs, structs, struct_names = [], [], []
    for td in facts.get("typedefs", []):
        name, aliasto = td.get("name"), td.get("aliasto")
        if name and aliasto:
            typedefs.append(f"typedef {aliasto} {name};")

    for st in facts.get("structs", []):
        nm, fields = st.get("name"), st.get("fields", [])
        if nm and fields:
            struct_names.append(nm)
            body = "; ".join(
                f"{f.get('type', 'int')} {f.get('name', 'f')}"
                for f in fields if f.get("name")
            ) + ";"
            structs.append(f"struct {nm} {{ {body} }};")

    return "\n".join(typedefs), "\n".join(structs), struct_names

def find_constructor_summaries(facts, struct_names):
    """
    Heuristic: pick functions that look like initializers/constructors:
      - name ends with _init/_new/_create/_alloc/_constructor
      - or name contains a struct name
    We only need a human-/LLM-readable summary block.
    """
    funcs = facts.get("functions") or facts.get("funcs") or []
    if not isinstance(funcs, list):
        return "(none found)"

    ctor_lines = []
    ctor_suffixes = ("_init", "_Init", "_INIT",
                     "_new", "_create", "_alloc", "_constructor")
    struct_names = struct_names or []

    for f in funcs:
        name = f.get("name")
        if not name:
            continue
        sig = f.get("signature") or f.get("decl") or ""
        file = f.get("file") or f.get("path") or ""

        is_ctor = False

        # Suffix-based heuristic
        if any(name.endswith(suf) for suf in ctor_suffixes):
            is_ctor = True

        # Struct-name heuristic: function name mentions struct name
        if not is_ctor and any(sn and sn in name for sn in struct_names):
            is_ctor = True

        if not is_ctor:
            continue

        line = f"- `{name}`: {sig or '(no signature available)'}"
        if file:
            line += f"   // file: {file}"
        ctor_lines.append(line)

    if not ctor_lines:
        return "(none found)"

    header = "The following functions likely *construct or initialize* key data structures:\n"
    return header + "\n".join(ctor_lines)

def build_driver_params_block(entry_sig):
    m = re.search(r'\((.*)\)', entry_sig or "")
    params = []
    if m:
        for chunk in m.group(1).split(","):
            if chunk.strip():
                params.append(chunk.strip())
    return "\n".join(f"- {p}" for p in params) if params else "(none)"

# --------------------------- source-tree signature extraction ----------------

def extract_signature_from_facts(func_name, facts) -> Optional[str]:
    """
    Try to get a usable 'return_type name(args...)' signature from the fact pack,
    if it has one.
    """
    funcs = facts.get("functions") or facts.get("funcs") or []
    if not isinstance(funcs, list):
        return None

    for f in funcs:
        if f.get("name") != func_name:
            continue
        sig = f.get("signature") or f.get("decl")
        if sig and func_name in sig:
            # Assume sig already looks like 'ret_type name(args...)'
            return sig.strip()
    return None

def extract_signature_from_tree(func_name, src_root) -> Optional[str]:
    """
    Search the source tree under src_root for a definition or declaration
    of 'func_name' and reconstruct a single-line C prototype:

        <return_type> func_name(<args...>)

    This is intentionally conservative and best-effort: we only need something
    that is type-compatible enough to compile, not perfect formatting.
    """
    root = pathlib.Path(src_root)
    exts = {".c", ".h", ".hpp", ".hh", ".hxx"}

    for path in root.rglob("*"):
        if not path.is_file() or path.suffix not in exts:
            continue

        try:
            text = path.read_text(encoding="utf-8", errors="ignore")
        except Exception:
            continue

        # Look for `<func_name>(` pattern
        for m in re.finditer(r'\b' + re.escape(func_name) + r'\s*\(', text):
            idx = m.start()

            # Find the start of the line / decl before the name
            line_start = text.rfind('\n', 0, idx)
            if line_start < 0:
                line_start = 0
            else:
                line_start += 1

            prefix = text[line_start:idx].strip()
            if not prefix:
                continue

            # Scan forward to match parentheses, including newlines
            parens = 0
            j = m.start()
            while j < len(text):
                ch = text[j]
                if ch == '(':
                    parens += 1
                elif ch == ')':
                    parens -= 1
                    if parens == 0:
                        j += 1  # include ')'
                        break
                j += 1
            else:
                # unmatched parentheses
                continue

            args_str = text[m.end():j-1]  # between '(' and ')'
            args_str = " ".join(args_str.split())  # normalize whitespace

            if len(args_str) > 1024:
                continue

            signature = f"{prefix}{func_name}({args_str})"
            return signature.strip()

    return None

def guess_return_type_from_signature(func_name, sig):
    """
    Given 'ret_type func_name(args...)', return 'ret_type' as a string.
    """
    if not sig or func_name not in sig:
        return "int"
    head = sig.split(func_name, 1)[0].strip()
    head = " ".join(head.split())
    return head if head else "int"

def get_helper_prototype(func_name, src_root, facts) -> Optional[str]:
    """
    Try facts first, then scan the source tree. Return a single-line prototype
    'ret_type func_name(args...)', or None if we find nothing.
    """
    sig = extract_signature_from_facts(func_name, facts)
    if sig:
        return sig

    sig = extract_signature_from_tree(func_name, src_root)
    if sig:
        return sig

    return None

# --------------------------- prompt rendering (optional/debug) ---------------

def render_prompt(system_t, user_t, ctx):
    # We keep this so the same prompts can be reused later if we want,
    # but the core of this script no longer calls the LLM.
    sys_t = read(system_t)

    usr = read(user_t)
    usr = (
        usr.replace("{{tu_path}}", ctx["tu_path"])
        .replace("{{entry.name}}", ctx["entry"]["name"])
        .replace("{{entry.signature}}", ctx["entry"]["signature"])
        .replace("{{in_path|join(\", \")}}", ", ".join(ctx["in_path"]))
        .replace("{{helpers|join(\", \")}}", ", ".join(ctx["helpers"]))
        .replace("{{typedefs_block}}", ctx["typedefs"])
        .replace("{{structs_block}}", ctx["structs"])
        .replace("{{driver_params_block}}", ctx["driver_params"])
        .replace("{{finding.file}}", ctx["finding"].get("file", ""))
        .replace("{{finding.line}}", str(ctx["finding"].get("line", "")))
        .replace("{{finding.ruleId}}", ctx["finding"].get("ruleId", ""))
        .replace("{{finding.message}}", ctx["finding"].get("message", ""))
    )

    ctor_block = ctx.get("constructors", "(none found)")
    extra = textwrap.dedent(
        f"""
       

        ---
        ### Candidate constructors / initializers for grooming

        {ctor_block}

        When you synthesize stubs and groomed data structures:

        - Prefer to **inline a miniature version** of at most **one constructor** per key struct.
        - Allocate only the **top-level struct** and **one level of pointer fields**.
        - Avoid deep recursive construction or unbounded loops.
        - Avoid calling non-trivial helpers from inside stubs other than `malloc`, `free`,
          `klee_make_symbolic`, or very small, local helper functions you define in the stub.
        - The goal is to produce a **small, depth-limited but realistic** instance that keeps
          code paths feasible for KLEE without exploding path space.
    """
    ).rstrip()

    usr = usr + "\n\n" + extra
    return sys_t, usr

# --------------------------- signature safety --------------------------------

def ensure_valid_signature(entry_name: str, sig: Optional[str]) -> str:
    """
    Ensure we always have a syntactically valid C prototype string for the entry.

    For this script we only need it to be parseable; downstream (plan_enrich)
    already tries to make it realistic.
    """
    if isinstance(sig, str):
        s = sig.strip()
        if "(" in s and ")" in s:
            return s
    return f"int {entry_name}(void)"

# --------------------------- heuristic (now the *only* path) -----------------

def build_stub_plan_from_source(helpers, entry_sig, src_root, facts):
    """
    Build a stub_plan using only:
      - fact pack
      - source tree
      - simple pointer/scalar classification for grooming
    """
    out = {"helpers": {}, "groom": {"args": [], "globals": []}}

    for h in helpers:
        # Fixed prototypes for standard library helpers
        if h in ("memcmp", "bcmp"):
            out["helpers"][h] = {
                "signature": f"int {h}(const void *s1, const void *s2, size_t n)",
                "ret": "int",
                "body": [
                    "if (!s1 || !s2) return 0;",
                    "const unsigned char *a = (const unsigned char*)s1;",
                    "const unsigned char *b = (const unsigned char*)s2;",
                    "int diff = 0;",
                    "for (size_t i = 0; i < n; ++i) {",
                    "  int d = (int)a[i] - (int)b[i];",
                    "  if (d) { diff = d; break; }",
                    "}",
                    "return diff;",
                ],
            }
            continue
        if h in ("memmove", "memcpy"):
            out["helpers"][h] = {
                "signature": f"void *{h}(void *dst, const void *src, size_t n)",
                "ret": "void*",
                "body": [
                    "if (!dst || !src) return dst;",
                    "unsigned char *d = (unsigned char*)dst;",
                    "const unsigned char *s = (const unsigned char*)src;",
                    "if (d == s) return dst;",
                    "if (d < s) {",
                    "  for (size_t i = 0; i < n; ++i) d[i] = s[i];",
                    "} else {",
                    "  for (size_t i = n; i > 0; --i) d[i-1] = s[i-1];",
                    "}",
                    "return dst;",
                ],
            }
            continue

        # Project-specific helpers → prototype from facts/source tree
        proto = get_helper_prototype(h, src_root, facts)
        if proto is None:
            proto = f"int {h}(void)"
            ret_type = "int"
        else:
            proto = " ".join(proto.split())  # normalize whitespace
            ret_type = guess_return_type_from_signature(h, proto)

        if ret_type.strip() == "void":
            body = ["/* no-op stub */", "return;"]
        else:
            body = [
                f"{ret_type} __llmse_ret = 0;",
                f'klee_make_symbolic(&__llmse_ret, sizeof(__llmse_ret), "{h}_ret");',
                "return __llmse_ret;",
            ]

        out["helpers"][h] = {
            "signature": proto,
            "ret": ret_type,
            "body": body,
        }

    # Pointer vs scalar arg grooming for the entrypoint
    sig_for_parse = entry_sig or ""
    names = re.findall(
        r'[A-Za-z_][A-Za-z0-9_]*\s*\*\s*([A-Za-z_][A-Za-z0-9_]*)'
        r'|([A-Za-z_][A-Za-z0-9_]*)\s*(?:,|\)|$)',
        sig_for_parse,
    )
    seen = set()
    for tup in names:
        nm = [x for x in tup if x]
        if not nm:
            continue
        v = nm[-1]
        if v in seen or v in {"int", "char", "size_t", "void", "const"}:
            continue
        seen.add(v)

        if re.search(r'\*\s*' + re.escape(v) + r'(?:\s*[,)])', sig_for_parse):
            kind = "ptr"
        else:
            kind = "scalar"

        out["groom"]["args"].append(
            {
                "name": v,
                "kind": kind,
                "elem_bytes": 1 if kind == "ptr" else 4,
                "alloc_bytes": 64 if kind == "ptr" else None,
                "symbolic": True,
                "nul_terminate": True if kind == "ptr" else False,
                "assume": ["len >= 0", "len <= 64"] if v == "len" else [],
            }
        )

    return out

# --------------------------- main -------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--spec", required=True)
    ap.add_argument("--facts", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--system-prompt", default="prompts/stub_synthesis.system.md")
    ap.add_argument("--user-prompt",   default="prompts/stub_synthesis.user.md")
    # model/api args kept for compatibility but not used anymore
    ap.add_argument("--model",    default=os.getenv("LLM_MODEL", "deepseek-chat"))
    ap.add_argument("--api-base", default=os.getenv("LLM_API_BASE", "https://api.deepseek.com/v1"))
    ap.add_argument(
        "--api-key",
        default=os.getenv("DEEPSEEK_API_KEY") or os.getenv("OPENAI_API_KEY"),
    )
    ap.add_argument("--out", required=True)
    ap.add_argument("--rewrite-driver", action="store_true", default=False)
    args = ap.parse_args()

    plan  = jload(args.plan)
    spec  = jload(args.spec)   # currently unused, but kept for future extensions
    facts = jload(args.facts)

    entry   = plan["entrypoint"]
    entry_name = entry["name"]
    entry_sig  = ensure_valid_signature(entry_name, entry.get("signature"))

    in_path = plan.get("in_path", [])
    helpers = plan.get("helpers", [])

    typedefs_src, structs_src, struct_names = collect_typedefs_and_structs(facts)
    driver_params = build_driver_params_block(entry_sig)
    ctor_block    = find_constructor_summaries(facts, struct_names)

    ctx = {
        "tu_path": str(pathlib.Path(args.src_root) / plan["entrypoint"]["file"]),
        "entry": {"name": entry_name, "signature": entry_sig},
        "in_path": in_path,
        "helpers": helpers,
        "typedefs": typedefs_src or "(none)",
        "structs": structs_src or "(none)",
        "driver_params": driver_params,
        "finding": plan.get("finding", {}),
        "constructors": ctor_block,
    }

    # Prompt rendering is optional and should never break the pipeline.
    try:
        sys_p = pathlib.Path(args.system_prompt)
        usr_p = pathlib.Path(args.user_prompt)
        if sys_p.exists() and usr_p.exists():
            _sys_msg, _usr_msg = render_prompt(sys_p, usr_p, ctx)
            # Not used downstream, but handy for debugging if you want to log it.
        else:
            # Silently skip if templates aren't there
            pass
    except Exception as e:
        # Don't let missing/bad templates kill stub synthesis
        print(f"[i] Skipping prompt rendering due to error: {e!r}", flush=True)

    result = build_stub_plan_from_source(
        helpers,
        entry_sig,
        args.src_root,
        facts,
    )

    jdump(args.out, result)
    print(f"[+] Stub plan written → {args.out}")
    print(f"[i] helpers: {list(result.get('helpers', {}).keys())}")
    print(f"[i] groom args: {[a.get('name') for a in result.get('groom', {}).get('args', [])]}")

if __name__ == "__main__":
    main()
