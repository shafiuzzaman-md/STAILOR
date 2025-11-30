#!/usr/bin/env python3
import argparse, json, pathlib, re
from collections import defaultdict, deque

# ---------- io ----------
def read_json(p): return json.loads(pathlib.Path(p).read_text(encoding="utf-8", errors="ignore"))
def write_json(p, obj):
    p = pathlib.Path(p); p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(json.dumps(obj, indent=2), encoding="utf-8")
def read_text(p): return pathlib.Path(p).read_text(encoding="utf-8", errors="ignore")

# ---------- spec normalize (robust) ----------
SPEC_ID_RX = re.compile(r'^(?P<file>[^:]+):(?P<line>\d+):(?P<rule>.+)$')
SPEC_BASENAME_RX = re.compile(r'^\d+_(?P<file>.+)_(?P<line>\d+?)_(?P<rule>.+?)\.json$')

def normalize_spec(spec_raw, plan_fallback=None, spec_path=None):
    def ok(d): return d.get("file") and d.get("line") and d.get("ruleId")

    # 1) nested finding
    if isinstance(spec_raw, dict) and "finding" in spec_raw:
        f = spec_raw["finding"]
        out = {"file": f.get("file") or f.get("uri"), "line": f.get("line") or f.get("startLine"),
               "ruleId": f.get("ruleId") or f.get("rule"), "message": f.get("message")}
        if ok(out): return {"file": str(out["file"]), "line": int(out["line"]), "ruleId": str(out["ruleId"]), "message": out.get("message")}

    # 2) flat
    out = {"file": spec_raw.get("file"), "line": spec_raw.get("line"), "ruleId": spec_raw.get("ruleId"), "message": spec_raw.get("message")}
    if ok(out): return {"file": str(out["file"]), "line": int(out["line"]), "ruleId": str(out["ruleId"]), "message": out.get("message")}

    # 3) spec_id
    sid = spec_raw.get("spec_id")
    if isinstance(sid, str):
        m = SPEC_ID_RX.match(sid)
        if m:
            return {"file": m.group("file"), "line": int(m.group("line")), "ruleId": m.group("rule"), "message": spec_raw.get("message")}

    # 4) filename pattern
    if spec_path:
        bn = pathlib.Path(spec_path).name
        m = SPEC_BASENAME_RX.match(bn)
        if m:
            return {"file": m.group("file"), "line": int(m.group("line")), "ruleId": m.group("rule"), "message": spec_raw.get("message")}

    # 5) fallback to plan.finding
    if plan_fallback and isinstance(plan_fallback.get("finding"), dict):
        f = plan_fallback["finding"]
        out = {"file": f.get("file"), "line": f.get("line"), "ruleId": f.get("ruleId"), "message": f.get("message")}
        if ok(out): return {"file": str(out["file"]), "line": int(out["line"]), "ruleId": str(out["ruleId"]), "message": out.get("message")}

    raise ValueError("Spec missing finding fields; expected keys: file, line, ruleId (after all fallbacks)")

# ---------- facts ----------
def facts_index(facts):
    f_by_file = defaultdict(list)
    for f in facts.get("functions", []):
        name, file, start, end = f.get("name"), f.get("file"), int(f.get("start",0)), int(f.get("end",10**9))
        if name and file: f_by_file[pathlib.Path(file).name].append((name, start, end))
    calls = []
    for c in facts.get("calls", []):
        caller, callee = c.get("caller"), c.get("callee")
        cfile = c.get("caller_file") or c.get("file")
        if caller and callee: calls.append((caller, callee, cfile))
    return f_by_file, calls

# ---------- source fallbacks (hardened) ----------
LEADING_MACRO_RX = re.compile(r'^\s*(?:[A-Z_][A-Z0-9_]*\s*)+$')
FUNC_SIG_RX = re.compile(
    r'''
    ^                                   # start of line
    (?:\s*(?:[A-Z_][A-Z0-9_]*\s*)\n)*   # optional macro/attr lines above
    \s*(?:                              # type-ish prefix
        (?:static|inline|extern|const|unsigned|signed)\b
        | struct\s+[A-Za-z_]\w*
        | enum\s+[A-Za-z_]\w*
        | [A-Za-z_]\w*                  # typedef/base type
        | \*+
    )
    [\s\*\w]*                           # spaces/*/words
    \s+([A-Za-z_]\w*)\s*                # function name (capture)
    \(
        [^;{}]*                         # params (rough)
    \)
    \s*\{                               # opening brace of definition
    ''', re.VERBOSE | re.M
)
CALL_RX = re.compile(r'([A-Za-z_]\w*)\s*\(')
CONTROL_KEYWORDS = {"if","for","while","switch","return","sizeof","do","case","else"}

def _strip_leading_macros(block: str) -> str:
    lines = block.splitlines()
    i = 0
    while i < len(lines) and LEADING_MACRO_RX.match(lines[i].strip()):
        i += 1
    return "\n".join(lines[i:])

def scan_functions_with_spans(src_text):
    text = _strip_leading_macros(src_text)
    spans = []
    for m in FUNC_SIG_RX.finditer(text):
        name = m.group(1)
        start_off = m.start()
        start_line = text.count("\n", 0, start_off) + 1
        spans.append((name, start_line))
    lines = text.splitlines()
    out = []
    for i, (name, s) in enumerate(spans):
        e = (spans[i+1][1]-1) if i+1 < len(spans) else len(lines)
        out.append((name, s, e))
    return out

def find_function_by_line_source(src_path, line):
    text = read_text(src_path)
    for (name, s, e) in scan_functions_with_spans(text):
        if s <= line <= e: return name
    return None

def _extract_body(text, sig_match_end_minus1):
    body_start = sig_match_end_minus1
    depth, i, started = 0, body_start, False
    while i < len(text):
        ch = text[i]
        if ch == '{':
            depth += 1; started = True
        elif ch == '}':
            depth -= 1
            if started and depth == 0:
                return text[body_start:i+1]
        i += 1
    return text[body_start:]

def extract_callees_source(src_text, func_name):
    text = _strip_leading_macros(src_text)
    for m in FUNC_SIG_RX.finditer(text):
        if m.group(1) != func_name:
            continue
        body = _extract_body(text, m.end()-1)
        cands = set()
        for cm in CALL_RX.finditer(body):
            cal = cm.group(1)
            if cal in CONTROL_KEYWORDS or cal == func_name:
                continue
            cands.add(cal)
        return list(cands)
    return []

# ---------- graph / path ----------
def build_graph_from_calls(calls):
    g = defaultdict(set)
    for caller, callee, _ in calls: g[caller].add(callee)
    return g

def shortest_path(g, src, dst):
    if src == dst: return [src]
    q, prev = deque([src]), {src: None}
    while q:
        u = q.popleft()
        for v in g.get(u, []):
            if v not in prev:
                prev[v] = u
                if v == dst:
                    path = [v]
                    while u is not None:
                        path.append(u); u = prev[u]
                    return list(reversed(path))
                q.append(v)
    return None

def parse_entry_signature(sig):
    m = re.search(r'\b([A-Za-z_]\w*)\s*\((.*)\)', sig or "")
    if not m: return []
    params = m.group(2)
    names = []
    for chunk in params.split(','):
        chunk = chunk.strip()
        toks = re.findall(r'[A-Za-z_]\w*', chunk)
        if toks: names.append(toks[-1])
    return names

def rewrite_driver(plan):
    drv = plan["generated"]["driver_c"]
    entry = plan["entrypoint"]["name"]
    sig  = plan["entrypoint"]["signature"]
    argnames = parse_entry_signature(sig)

    code = f'''#include <klee/klee.h>
#include <stdint.h>
#include <stddef.h>

extern {sig};

extern void __llmse_link_instrumented(void);
void __llmse_link_instrumented(void) {{}}

int main(void) {{
'''
    for a in argnames:
        if a in {"len","n","size","sz"}:
            code += f'  int {a}; klee_make_symbolic(&{a}, sizeof({a}), "{a}");\n'
        else:
            code += f'  void* {a} = 0; klee_make_symbolic(&{a}, sizeof({a}), "{a}");\n'
    code += f'  (void){entry}({", ".join(argnames)});\n  return 0;\n}}\n'

    pathlib.Path(drv).parent.mkdir(parents=True, exist_ok=True)
    pathlib.Path(drv).write_text(code, encoding="utf-8")
    return drv

# ---------- main ----------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--spec", required=True)
    ap.add_argument("--facts", required=True)
    ap.add_argument("--ccdb", required=False)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--rewrite-driver", action="store_true", default=False)
    args = ap.parse_args()

    plan = read_json(args.plan)
    spec_raw = read_json(args.spec)
    spec_norm = normalize_spec(spec_raw, plan_fallback=plan, spec_path=args.spec)

    facts = read_json(args.facts)
    f_by_file, calls = facts_index(facts)

    src_root = pathlib.Path(args.src_root)
    target_abs = pathlib.Path(spec_norm["file"])
    target_base = target_abs.name

    # entrypoint (must already exist from seed plan)
    entry = plan.get("entrypoint") or {}
    if not entry:
        raise SystemExit("[!] Plan is missing entrypoint; fill it before enrichment (loopA).")
    entry_name, entry_file, entry_sig = entry["name"], entry["file"], entry["signature"]

    # target function: facts first, fallback to source
    target_func = None
    for (name, s, e) in f_by_file.get(target_base, []):
        if s <= spec_norm["line"] <= e:
            target_func = name; break
    if not target_func:
        src_path = src_root / target_base
        if not src_path.exists():
            raise SystemExit(f"[!] Source not found: {src_path}")
        target_func = find_function_by_line_source(src_path, spec_norm["line"])
        if not target_func:
            raise SystemExit(f"[!] Could not find target function in {target_abs} at line {spec_norm['line']}")

    # ---------- Build a COMBINED graph (facts + TU edges) ----------
    g = build_graph_from_calls(calls)

    # Add TU edges for the whole translation unit containing the entry/target
    tu_files = set()
    if (src_root / entry_file).exists(): tu_files.add(src_root / entry_file)
    if (src_root / target_base).exists(): tu_files.add(src_root / target_base)

    for tu_path in tu_files:
        tu_text = read_text(tu_path)
        # collect all function defs in this TU
        defs = [name for (name, _s, _e) in scan_functions_with_spans(tu_text)]
        for fn in defs:
            callees = extract_callees_source(tu_text, fn)
            for cal in callees:
                g[fn].add(cal)

    # Now compute a path entry -> target on the combined graph
    path = shortest_path(g, entry_name, target_func)

    # Last resort: use minimal two-hop attempt via prominent Internal
    if not path:
        # Try entry -> xmlDictLookupInternal -> target
        maybe_mid = entry_name + "Internal"
        if maybe_mid in g.get(entry_name, set()) and target_func in g.get(maybe_mid, set()):
            path = [entry_name, maybe_mid, target_func]

    # Still nothing? fall back to direct pair; later loops refine
    if not path:
        path = [entry_name, target_func]

    # helpers = (callees of any in-path) - in-path
    in_set = set(path)
    helpers = set()
    by_caller = defaultdict(set)
    for (caller, callee, _) in calls: by_caller[caller].add(callee)
    for fn in path: helpers |= (by_caller.get(fn, set()) - in_set)

    # augment helpers from TU scans
    for tu_path in tu_files:
        tu_text = read_text(tu_path)
        for fn in path:
            for cal in extract_callees_source(tu_text, fn):
                if cal not in in_set:
                    helpers.add(cal)

    # Keep obvious library/utils as helpers
    # (avoid polluting in_path with libc/string helpers)
    lib_like = {"memcmp", "strlen", "strnlen", "xmlStrQEqual"}
    helpers |= (lib_like & helpers)

    # symbolic args from signature
    sym_args = parse_entry_signature(entry_sig)

    # update plan
    plan["finding"] = {
        "file": str(target_abs),
        "line": int(spec_norm["line"]),
        "ruleId": spec_norm["ruleId"],
        "message": spec_norm.get("message")
    }
    plan["entrypoint"] = {"name": entry_name, "file": entry_file, "signature": entry_sig}
    plan["target_func"] = target_func
    plan["in_path"] = path
    plan["helpers"] = sorted(helpers - set(path))
    plan.setdefault("symbolic", {})["args"] = sym_args
    plan["symbolic"]["globals"] = plan.get("symbolic", {}).get("globals", [])

    plan.setdefault("generated", {})
    plan["generated"].setdefault("instrumented_c", f"out/build/{target_base}.instrumented.c")
    plan["generated"].setdefault("driver_c", f"out/build/klee_driver_{entry_name}.c")
    plan["generated"].setdefault("compile_cmd",
        f'clang -emit-llvm -c "{plan["generated"]["driver_c"]}" -o "out/build/klee_driver_{entry_name}.bc"')

    if args.rewrite_driver:
        rewrite_driver(plan)

    write_json(args.plan, plan)

    print(f"[i] Plan enriched → {args.plan}")
    print(f"[i] entrypoint   → {plan['entrypoint']}")
    print(f"[i] target func  → {plan['target_func']}")
    print(f"[i] in_path      → {plan['in_path']}")
    print(f"[i] helpers      → {plan['helpers']}")
    print(f"[i] symbolic     → {plan['symbolic']}")
    print(f"[i] driver       → {plan['generated']['driver_c']}")
    print(f"[i] instrumented → {plan['generated']['instrumented_c']}")
    print(f"[i] compile_cmd  → {plan['generated']['compile_cmd']}")

if __name__ == "__main__":
    main()
