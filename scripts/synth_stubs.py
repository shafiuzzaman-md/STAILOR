#!/usr/bin/env python3
import argparse, json, os, pathlib, re, textwrap

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

# --------------------------- prompt rendering --------------------------------

def render_prompt(system_t, user_t, ctx):
    sys = read(system_t)

    usr = read(user_t)
    usr = (usr
        .replace("{{tu_path}}", ctx["tu_path"])
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

    # Append constructor hints + shallow-groom guidance for the LLM
    ctor_block = ctx.get("constructors", "(none found)")
    extra = textwrap.dedent(f"""
       

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
    """).rstrip()

    usr = usr + "\n\n" + extra
    return sys, usr

# --------------------------- LLM glue ----------------------------------------

def openai_compat_chat(model, api_base, api_key, system_msg, user_msg,
                       temperature=0.2, max_tokens=1600):
    import requests
    headers = {"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"}
    payload = {
        "model": model,
        "messages": [
            {"role": "system", "content": system_msg},
            {"role": "user", "content": user_msg},
        ],
        "temperature": temperature,
        "max_tokens": max_tokens,
    }
    r = requests.post(f"{api_base.rstrip('/')}/chat/completions",
                      json=payload, headers=headers, timeout=120)
    r.raise_for_status()
    data = r.json()
    return data["choices"][0]["message"]["content"]

def try_parse_json(s: str):
    # First try: last {...} blob
    m = re.search(r'\{.*\}\s*$', s, re.S)
    if not m:
        # Fallback: scan for first balanced {...}
        braces, start = 0, -1
        for i, ch in enumerate(s):
            if ch == '{':
                braces += 1
                if start < 0:
                    start = i
            elif ch == '}':
                braces -= 1
                if braces == 0 and start >= 0:
                    s = s[start:i+1]
                    break
        else:
            return None
    else:
        s = m.group(0)

    try:
        return json.loads(s)
    except Exception:
        return None

# --------------------------- heuristic fallback ------------------------------

def heuristic_fallback(helpers, entry_sig):
    """
    If the LLM fails, we still want a usable stub_plan:
      - stub memcpy/memmove/memcmp/bcmp in a sane way
      - groom args with simple pointer vs scalar classification
    """
    out = {"helpers": {}, "groom": {"args": [], "globals": []}}

    for h in helpers:
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
                    "return diff;"
                ],
            }
        elif h in ("memmove", "memcpy"):
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
                    "return dst;"
                ],
            }
        else:
            out["helpers"][h] = {
                "signature": f"int {h}(void)",
                "ret": "int",
                "body": [
                    "int r = 0;",
                    f"klee_make_symbolic(&r, sizeof(r), \"{h}_ret\");",
                    "return r;",
                ],
            }

    # Very simple parameter scraping: identify pointer-ish vs scalar-ish params
    names = re.findall(
        r'[A-Za-z_][A-Za-z0-9_]*\s*\*\s*([A-Za-z_][A-Za-z0-9_]*)'
        r'|([A-Za-z_][A-Za-z0-9_]*)\s*(?:,|\)|$)',
        entry_sig or "",
    )
    seen = set()
    for tup in names:
        nm = [x for x in tup if x]
        if not nm:
            continue
        v = nm[-1]
        if v in seen or v in ("int", "char", "size_t", "void", "const"):
            continue
        seen.add(v)

        # BUGFIX: correct pointer detection regex (no stray backslashes)
        if re.search(r'\*\s*' + re.escape(v) + r'(?:\s*[,)])', entry_sig or ""):
            kind = "ptr"
        else:
            kind = "scalar"

        out["groom"]["args"].append({
            "name": v,
            "kind": kind,
            "elem_bytes": 1 if kind == "ptr" else 4,
            "alloc_bytes": 64 if kind == "ptr" else None,
            "symbolic": True,
            "nul_terminate": True if kind == "ptr" else False,
            "assume": ["len >= 0", "len <= 64"] if v == "len" else [],
        })

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
    ap.add_argument("--model",    default=os.getenv("LLM_MODEL", "deepseek-chat"))
    ap.add_argument("--api-base", default=os.getenv("LLM_API_BASE", "https://api.deepseek.com/v1"))
    ap.add_argument("--api-key",
                    default=os.getenv("DEEPSEEK_API_KEY") or os.getenv("OPENAI_API_KEY"))
    ap.add_argument("--out", required=True)
    # accept (and ignore) for CLI compatibility with your pipeline
    ap.add_argument("--rewrite-driver", action="store_true", default=False)
    args = ap.parse_args()

    plan  = jload(args.plan)
    spec  = jload(args.spec)
    facts = jload(args.facts)

    entry   = plan["entrypoint"]
    in_path = plan.get("in_path", [])
    helpers = plan.get("helpers", [])

    typedefs_src, structs_src, struct_names = collect_typedefs_and_structs(facts)
    driver_params = build_driver_params_block(entry.get("signature", ""))
    ctor_block    = find_constructor_summaries(facts, struct_names)

    ctx = {
        "tu_path": str(pathlib.Path(args.src_root) / plan["entrypoint"]["file"]),
        "entry": entry,
        "in_path": in_path,
        "helpers": helpers,
        "typedefs": typedefs_src or "(none)",
        "structs": structs_src or "(none)",
        "driver_params": driver_params,
        "finding": plan.get("finding", {}),
        "constructors": ctor_block,
    }

    sys_msg, usr_msg = render_prompt(
        args.system_prompt,
        args.user_prompt,
        ctx,
    )

    result = None
    if args.api_key:
        try:
            txt = openai_compat_chat(
                args.model,
                args.api_base,
                args.api_key,
                sys_msg,
                usr_msg,
            )
            result = try_parse_json(txt)
        except Exception as e:
            print(f"[!] LLM call failed, using heuristic fallback: {e}")

    if result is None:
        print("[i] Using heuristic fallback stub plan.")
        result = heuristic_fallback(helpers, entry.get("signature", "int f(void)"))

    jdump(args.out, result)
    print(f"[+] Stub plan written → {args.out}")
    print(f"[i] helpers: {list(result.get('helpers', {}).keys())}")
    print(f"[i] groom args: {[a.get('name') for a in result.get('groom', {}).get('args', [])]}")

if __name__ == "__main__":
    main()
