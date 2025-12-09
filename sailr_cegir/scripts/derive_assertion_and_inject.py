#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""

Goal:
  - Infer a *bug-preventing* assertion from the static-analysis spec (ruleId + message).
  - Inject it into the *instrumented / minimal TU* immediately BEFORE the target statement.
  - Also inject a reachability assertion (klee_assert(0)) right after it, for CEGIR.

Behavior:
  - Reads:
      --spec        : SA finding / spec (various shapes supported).
      --plan        : LLMSE plan (must have generated.minimal_tu_c, in_path, target_func).
      --src-root    : original project source tree.
      --build-root  : build dir (used only for debug dumps).
  - Creates a snapshot of the TU before injection: <minimal_tu_c>.pre_assert.c
  - Writes either in-place or <minimal_tu_c>.with_assert.c

LLM:
  - Provider: deepseek|openai|openrouter|azure|none
  - Output format: {"assertion":"<C boolean expression>"}
"""

import argparse
import json
import os
import pathlib
import re
import sys
from typing import Dict, Any, Optional, List

# =============== I/O ===============
def read(p: pathlib.Path) -> str:
    return p.read_text(encoding="utf-8", errors="ignore")

def write(p: pathlib.Path, s: str) -> None:
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(s, encoding="utf-8")

def read_json(p: pathlib.Path) -> Dict[str, Any]:
    return json.loads(read(p))

def write_json(p: pathlib.Path, obj: Dict[str, Any]) -> None:
    write(p, json.dumps(obj, indent=2))


# =============== Spec normalize ===============
def _first(d, keys, default=None):
    for k in keys:
        if isinstance(k, tuple):
            cur = d
            ok = True
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
    return default

def normalize_spec(spec_raw: Dict[str, Any], spec_path: pathlib.Path) -> Dict[str, Any]:
    # flat / aliases
    f = _first(spec_raw, ["file","path","filePath","uri",
                          ("physicalLocation","artifactLocation","uri")])
    l = _first(spec_raw, ["line","startLine",("region","startLine")])
    r = _first(spec_raw, ["ruleId",("rule","id"),"rule","id"])
    m = _first(spec_raw, ["message",("message","text")])
    if f and l:
        print(f"[i] normalize_spec: flat/aliases → file={f} line={int(l)} ruleId={r or ''}")
        return {"file": str(f), "line": int(l), "ruleId": r or "", "message": m or ""}

    # nested finding
    if isinstance(spec_raw.get("finding"), dict):
        fr = spec_raw["finding"]
        f = _first(fr, ["file","uri"])
        l = _first(fr, ["line","startLine",("region","startLine")])
        r = _first(fr, ["ruleId",("rule","id"),"rule","id"])
        m = _first(fr, ["message",("message","text")])
        if f and l:
            print(f"[i] normalize_spec: finding-wrapper → file={f} line={int(l)} ruleId={r or ''}")
            return {"file": str(f), "line": int(l), "ruleId": r or "", "message": m or ""}

    # filename fallback: <anything>/<file>.c_<line>_...json
    m = re.search(r'([^/\\]+\.c)_(\d+)[^/\\]*\.json$', spec_path.name)
    if m:
        file_, line_ = m.group(1), int(m.group(2))
        print(f"[i] normalize_spec: filename-fallback → file={file_} line={line_}")
        return {"file": file_, "line": line_, "ruleId": "", "message": ""}

    raise ValueError("Spec missing file/line")


# =============== Paths ===============
def resolve_src_path(spec_file: str, src_root: pathlib.Path) -> pathlib.Path:
    sfp = pathlib.Path(spec_file)
    if sfp.is_absolute() and sfp.exists():
        return sfp.resolve()
    for p in src_root.rglob(sfp.name):
        return p.resolve()
    raise FileNotFoundError(f"Cannot map {spec_file} under {src_root}")


# =============== Statement extraction ===============
SEMI_OR_BRACE_RX = re.compile(r';\s*$|{\s*$')

def grab_statement_around_line(text: str, line_no: int, window: int = 80) -> str:
    lines = text.splitlines()
    if line_no < 1:
        line_no = 1
    if line_no > len(lines):
        line_no = len(lines)

    i = max(0, line_no - 1)
    j = min(len(lines), i + window)
    chunk = lines[i:j]

    # extend upward if we are in the middle of a multi-line condition
    up = i
    while up > 0:
        prev = lines[up-1]
        if SEMI_OR_BRACE_RX.search(prev):
            break
        if prev.strip().startswith("#"):
            break
        up -= 1
        chunk.insert(0, prev)

    # extend downward until we hit ';' or '{'
    k = 0
    acc = []
    while k < len(chunk):
        acc.append(chunk[k])
        if SEMI_OR_BRACE_RX.search(chunk[k]):
            break
        k += 1

    return "\n".join(acc).strip()


def find_anchor(instrumented_text: str, original_stmt: str) -> Optional[int]:
    """
    Return insertion offset BEFORE the matched statement.
    Tolerant to whitespace differences.

    Strategy:
      - Fuzzy match entire statement with collapsed whitespace.
      - Fallback: match core 'if/while/for(...)' or call header 'foo(...)'.
    """
    if not original_stmt.strip():
        return None

    # collapse whitespace
    norm = re.sub(r'\s+', ' ', original_stmt.strip())
    pattern = re.escape(norm).replace(r'\ ', r'\s+')
    rx = re.compile(pattern, re.S)
    m = rx.search(instrumented_text)
    if m:
        start = m.start()
        bol = instrumented_text.rfind('\n', 0, start) + 1
        return bol

    # fallback: control / call header
    core = None
    m2 = re.search(r'\b(if|while|for)\s*\([^;{}]*\)', original_stmt, re.S)
    if m2:
        core = m2.group(0)
    else:
        m3 = re.search(r'\b([a-zA-Z_]\w*)\s*\([^;{}]*\)', original_stmt, re.S)
        if m3:
            core = m3.group(0)

    if core:
        core_norm = re.sub(r'\s+', ' ', core.strip())
        core_pat = re.escape(core_norm).replace(r'\ ', r'\s+')
        rx2 = re.compile(core_pat, re.S)
        m4 = rx2.search(instrumented_text)
        if m4:
            start = m4.start()
            bol = instrumented_text.rfind('\n', 0, start) + 1
            return bol

    return None


# =============== LLM clients ===============
def call_openai(model, system, user, api_key, api_base=None):
    try:
        import openai
    except Exception:
        sys.stderr.write("[!] pip install openai\n")
        sys.exit(2)
    kw = {}
    if api_base:
        kw["base_url"] = api_base
    client = openai.OpenAI(api_key=api_key, **kw)
    r = client.chat.completions.create(
        model=model,
        temperature=0.1,
        response_format={"type": "json_object"},
        messages=[
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ],
    )
    return r.choices[0].message.content

def call_openrouter(model, system, user, api_key, api_base=None):
    import requests, json as _json
    base = api_base or "https://openrouter.ai/api/v1"
    j = {
        "model": model,
        "temperature": 0.1,
        "response_format": {"type": "json_object"},
        "messages": [
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ],
    }
    r = requests.post(
        f"{base}/chat/completions",
        headers={"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"},
        data=_json.dumps(j),
        timeout=120,
    )
    r.raise_for_status()
    return r.json()["choices"][0]["message"]["content"]

def call_azure(model, system, user, api_key, api_base):
    import requests, json as _json
    j = {
        "temperature": 0.1,
        "response_format": {"type": "json_object"},
        "messages": [
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ],
    }
    r = requests.post(
        api_base,
        headers={"api-key": api_key, "Content-Type": "application/json"},
        data=_json.dumps(j),
        timeout=120,
    )
    r.raise_for_status()
    J = r.json()
    if "choices" in J:
        return J["choices"][0]["message"]["content"]
    if "output_text" in J:
        return J["output_text"]
    raise RuntimeError("Unexpected Azure response")

def call_deepseek(model, system, user, api_key, api_base=None):
    import requests, json as _json
    base = (api_base or "https://api.deepseek.com").rstrip("/")
    j = {
        "model": model,
        "temperature": 0.1,
        "response_format": {"type": "json_object"},
        "messages": [
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ],
    }
    r = requests.post(
        f"{base}/v1/chat/completions",
        headers={"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"},
        data=_json.dumps(j),
        timeout=120,
    )
    r.raise_for_status()
    return r.json()["choices"][0]["message"]["content"]


# =============== Prompting ===============
SYS_PROMPT = (
    "You generate EXACT C boolean assertions that prevent a flagged bug.\n"
    "RULES:\n"
    "- Output JSON only: {\"assertion\":\"<C_EXPR>\"} . No comments or trailing commas.\n"
    "- Use ONLY identifiers present in the snippet; avoid inventing fields/types.\n"
    "- No side effects, no casts to unrelated structs, no macros.\n"
    "- Keep conditions minimal but sufficient to avoid the misuse in the target statement.\n"
)

def fmt_examples_block(examples: List[Dict[str, Any]]) -> str:
    rows = []
    for ex in examples:
        title = ex.get("title","example")
        stmt  = ex.get("target_stmt","")
        ctx   = ex.get("ctx","")
        asrt  = ex.get("assertion","(1)")
        rows.append(json.dumps({
            "title": title,
            "target_stmt": stmt,
            "ctx": ctx,
            "assertion": asrt
        }, indent=2))
    return "\n\n".join(rows) if rows else "(none)"

def build_user_prompt(ruleId: str, message: str, stmt: str, func_src: str,
                      examples: List[Dict[str,Any]]) -> str:
    return (
        f"Finding:\nruleId: {ruleId}\nmessage: {message}\n\n"
        "Target statement (assert immediately BEFORE this line in the instrumented TU):\n"
        f"{stmt}\n\n"
        "Function context (trimmed):\n"
        f"{func_src}\n\n"
        "PROJECT-AGNOSTIC FEW-SHOTS (follow the style exactly):\n"
        f"{fmt_examples_block(examples)}\n\n"
        "Return only JSON with a single key 'assertion'."
    )

def parse_llm_json(s: str) -> Optional[str]:
    try:
        j = json.loads(s)
        a = j.get("assertion")
        if isinstance(a, str) and a.strip():
            return a.strip()
    except Exception:
        return None
    return None


# =============== Main ===============
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--spec", required=True)
    ap.add_argument("--plan", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--build-root", required=True)
    ap.add_argument("--inplace", action="store_true", default=False)
    ap.add_argument("--maxn", type=int, default=2048)

    # LLM + examples
    ap.add_argument("--provider", default="deepseek",
                    choices=["deepseek","openai","openrouter","azure","none"])
    ap.add_argument("--model", default="deepseek-chat")
    ap.add_argument("--api-base", default=None)
    ap.add_argument("--api-key-env", default=None)
    ap.add_argument("--examples", default=None,
                    help="JSON list or {\"examples\":[...]}; each with title, target_stmt, ctx, assertion")
    ap.add_argument("--strict", action="store_true", default=False,
                    help="Fail if LLM cannot produce a valid assertion")
    ap.add_argument("--no-trivial", action="store_true", default=False,
                    help="Disallow trivial fallback '(1)'")

    args = ap.parse_args()

    spec_raw   = read_json(pathlib.Path(args.spec))
    spec       = normalize_spec(spec_raw, pathlib.Path(args.spec))
    src_root   = pathlib.Path(args.src_root).resolve()
    plan       = read_json(pathlib.Path(args.plan))
    build_root = pathlib.Path(args.build_root).resolve()

    # Resolve files
    orig_path = resolve_src_path(spec["file"], src_root)
    gen_obj = plan.get("generated", {})
    inst_path_str = gen_obj.get("minimal_tu_c") or gen_obj.get("instrumented_c")
    if not inst_path_str:
        raise SystemExit("[!] plan.generated.minimal_tu_c or instrumented_c missing")
    inst_path = pathlib.Path(inst_path_str).resolve()

    orig_text = read(orig_path)
    inst_text = read(inst_path)

    # Avoid double injection
    if "LLMSE/CEGIR injected assertions" in inst_text:
        print(f"[i] Assertions already injected in {inst_path}; nothing to do.")
        return

    # ---- Snapshot the whole instrumented TU BEFORE injection ----
    snapshot_path = inst_path.with_suffix(inst_path.suffix + ".pre_assert.c")
    write(snapshot_path, inst_text)
    print(f"[i] Snapshot of instrumented TU (pre-assert) → {snapshot_path}")

    # Extract original target statement from UNinstrumented TU
    orig_stmt = grab_statement_around_line(orig_text, spec["line"], window=96)
    print("[i] Original target statement:\n" + orig_stmt)

    # Narrow function context from the INSTRUMENTED TU (for LLM)
    func_src = inst_text
    target_fn = plan.get("target_func") or None
    if target_fn:
        pat = rf'(^|\n)[^\n]*\b{re.escape(target_fn)}\s*\([^)]*\)\s*\{{'
    else:
        # fallback: first in-path function name that appears in original file
        func_name = None
        for nm in plan.get("in_path", []):
            if re.search(rf'\b{re.escape(nm)}\s*\(', orig_text):
                func_name = nm
                break
        if func_name:
            pat = rf'(^|\n)[^\n]*\b{re.escape(func_name)}\s*\([^)]*\)\s*\{{'
        else:
            pat = None

    if pat:
        mfun = re.search(pat, inst_text)
        if mfun:
            i = mfun.end()-1
            depth = 0
            while i < len(inst_text):
                ch = inst_text[i]
                if ch == '{':
                    depth += 1
                elif ch == '}':
                    depth -= 1
                    if depth == 0:
                        func_src = inst_text[mfun.start(): i+1]
                        break
                elif ch == '"':
                    i += 1
                    while i < len(inst_text) and not (inst_text[i] == '"' and inst_text[i-1] != '\\'):
                        i += 1
                i += 1

    # Find anchor in the INSTRUMENTED TU
    insert_off = find_anchor(inst_text, orig_stmt)
    if insert_off is None:
        dbg = build_root / "anchor_debug.json"
        write_json(dbg, {"original_stmt": orig_stmt, "snippet": inst_text[:2000]})
        raise SystemExit(f"[!] Anchor failed (no line-based fallback). Debug → {dbg}")

    # Load examples
    examples: List[Dict[str,Any]] = []
    if args.examples:
        ex_path = pathlib.Path(args.examples)
        if ex_path.exists():
            raw = read_json(ex_path)
            examples = raw if isinstance(raw, list) else raw.get("examples", [])
        else:
            print(f"[w] examples file not found: {ex_path}; continuing without few-shots")

    # ---- LLM assertion synthesis from spec ----
    assertion = None
    if args.provider != "none":
        env_var = args.api_key_env or {
            "deepseek":"DEEPSEEK_API_KEY",
            "openai":"OPENAI_API_KEY",
            "openrouter":"OPENROUTER_API_KEY",
            "azure":"AZURE_OPENAI_API_KEY"
        }[args.provider]
        api_key = os.getenv(env_var, "")
        if not api_key and args.strict:
            raise SystemExit(f"[!] Missing API key env: {env_var} and --strict set.")
        if api_key:
            system = SYS_PROMPT
            user   = build_user_prompt(spec.get("ruleId",""), spec.get("message",""),
                                       orig_stmt, func_src, examples)
            try:
                if args.provider == "deepseek":
                    raw = call_deepseek(args.model, system, user, api_key, args.api_base)
                elif args.provider == "openai":
                    raw = call_openai(args.model, system, user, api_key, args.api_base)
                elif args.provider == "openrouter":
                    raw = call_openrouter(args.model, system, user, api_key, args.api_base)
                else:  # azure
                    if not args.api_base:
                        raise SystemExit("[!] Azure needs --api-base chat completions URL with api-version")
                    raw = call_azure(args.model, system, user, api_key, args.api_base)
                assertion = parse_llm_json(raw)
            except Exception as e:
                print(f"[w] LLM error: {e}")

    if not assertion:
        if args.strict:
            raise SystemExit("[!] LLM did not return a valid assertion and --strict set.")
        if args.no_trivial:
            raise SystemExit("[!] No assertion synthesized and trivial fallback disabled by --no-trivial.")
        assertion = "(1)"  # minimal safe fallback
        print(f"[i] Falling back to trivial assertion: {assertion}")

    # ---- Build injected block: vulnerability + reachability assertions ----
    banner = (
        "/* === LLMSE/CEGIR injected assertions ===\n"
        f" * ruleId : {spec.get('ruleId','')}\n"
        f" * file   : {spec.get('file','')}\n"
        f" * line   : {spec.get('line','')}\n"
        " * klee_assert(assertion) encodes the bug precondition from SA.\n"
        " * klee_assert(0) is a reachability sentinel for CEGIR loops.\n"
        " */\n"
    )
    block = (
        banner
        + f"klee_assert({assertion}); /* vulnerability condition */\n"
        + "klee_assert(0);      /* reachability check */\n\n"
    )

    # -------- injection, not overwrite ----------
    new_text = inst_text[:insert_off] + block + inst_text[insert_off:]
    out_path = inst_path if args.inplace else inst_path.with_suffix(".with_assert.c")
    write(out_path, new_text)

    # small sidecar metadata
    meta_path = out_path.with_suffix(out_path.suffix + ".llmse.json")
    write_json(meta_path, {
        "instrumented_file": str(out_path),
        "anchor_start": insert_off,
        "original_stmt": orig_stmt,
        "assertion": assertion,
        "provider": args.provider,
        "model": args.model
    })

    print(f"[i] Assertion injected → {out_path}")
    print(f"[i] Assertion:\n    klee_assert({assertion});")
    print(f"[i] Reachability sentinel: klee_assert(0);")
    print(f"[i] Metadata → {meta_path}")

if __name__ == "__main__":
    main()
