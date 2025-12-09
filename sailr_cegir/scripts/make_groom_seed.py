#!/usr/bin/env python3
import argparse, json, pathlib

def J(p):
    return json.loads(pathlib.Path(p).read_text(encoding="utf-8", errors="ignore"))

def W(p, obj):
    pp = pathlib.Path(p)
    pp.parent.mkdir(parents=True, exist_ok=True)
    pp.write_text(json.dumps(obj, indent=2), encoding="utf-8")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument(
        "--requirements",
        required=False,
        default=None,
        help="Optional: precomputed type/usage info. If omitted or partial, an empty skeleton is used.",
    )
    ap.add_argument("--stub-plan", required=True)      # helpers → signatures/ret/body
    ap.add_argument("--out", required=True)            # groom_seed.json
    args = ap.parse_args()

    # ---- 0) Load inputs with maximum tolerance ----
    plan = J(args.plan)

    # Requirements are optional and schema-flexible
    if args.requirements:
        try:
            req = J(args.requirements)
        except Exception:
            # If anything goes wrong, fall back to an empty skeleton
            req = {}
    else:
        req = {}

    try:
        stubs = J(args.stub_plan)
    except Exception:
        # Even if stub-plan is somehow broken, keep going with empty stubs
        stubs = {}

    # Normalize shapes just in case
    if not isinstance(plan, dict):
        raise SystemExit("[!] Plan JSON must be an object")

    if not isinstance(req, dict):
        req = {}

    if not isinstance(stubs, dict):
        stubs = {}

    # ---- 1) In-path + helpers from plan, with safe fallbacks ----
    entry = plan.get("entrypoint") or {}
    entry_name = entry.get("name", "")

    # in_path: unique, fallback to [entry_name] if missing/empty
    raw_in_path = plan.get("in_path") or []
    if not isinstance(raw_in_path, list):
        raw_in_path = []
    in_path = list(dict.fromkeys(raw_in_path))
    if not in_path and entry_name:
        in_path = [entry_name]

    # helpers: unique, fallback to stub-plan helper keys if plan is missing them
    raw_helpers = plan.get("helpers")
    if not isinstance(raw_helpers, list):
        raw_helpers = []
    helpers_from_plan = list(dict.fromkeys(raw_helpers))

    stub_helpers = []
    helpers_block = stubs.get("helpers")
    if isinstance(helpers_block, dict):
        stub_helpers = list(helpers_block.keys())

    if helpers_from_plan:
        helpers = helpers_from_plan
    else:
        helpers = stub_helpers

    helpers = list(dict.fromkeys(helpers))  # dedupe

    # ---- 2) Requirements: tolerate multiple shapes ----
    # Preferred: {"groom_requirements":{"functions":[...], "maybe_globals":[...]}}
    gr = req.get("groom_requirements") or {}
    if not isinstance(gr, dict):
        gr = {}

    fn_list = gr.get("functions") or req.get("functions") or []
    if not isinstance(fn_list, list):
        fn_list = []

    maybe_globals = gr.get("maybe_globals") or req.get("maybe_globals") or []
    if not isinstance(maybe_globals, list):
        # If someone accidentally used a dict/set, coerce to a list of keys
        if isinstance(maybe_globals, dict):
            maybe_globals = list(maybe_globals.keys())
        else:
            maybe_globals = []

    # Build function facts map safely
    fnfacts = {}
    for f in fn_list:
        if isinstance(f, dict):
            nm = f.get("name")
            if nm:
                fnfacts[nm] = f

    # ---- 3) From in-path functions: collect param candidates & struct fields ----
    arg_seed = {}  # name -> {name, kind(pointer/scalar/unknown), types:set(), touched_fields:set(), used_in:set()}
    for fn in in_path:
        f = fnfacts.get(fn)
        if not f:
            continue

        # Params
        for p in f.get("params", []):
            if not isinstance(p, dict):
                continue
            nm  = p.get("name", "")
            ty  = p.get("type", "")
            cls = p.get("class", "unknown")
            if not nm:
                continue
            cur = arg_seed.setdefault(
                nm,
                {
                    "name": nm,
                    "types": set(),
                    "kind": cls,
                    "touched_fields": set(),
                    "used_in": set(),
                },
            )
            if ty:
                cur["types"].add(ty)
            cur["used_in"].add(fn)

        # Field access info
        for acc in f.get("field_access", []):
            if not isinstance(acc, dict):
                continue
            base, field = acc.get("base"), acc.get("field")
            if base in arg_seed and field:
                arg_seed[base]["touched_fields"].add(field)

    # ---- 4) From helper stubs: note any return values/pointer outputs ----
    helpers_specs = stubs.get("helpers") if isinstance(stubs.get("helpers"), dict) else {}
    helper_seed = []

    for h in helpers:
        spec = helpers_specs.get(h, {}) if isinstance(helpers_specs, dict) else {}
        if not isinstance(spec, dict):
            spec = {}

        sig  = (spec.get("signature") or "")
        ret  = spec.get("ret", "")

        # naive pointer-return detection, robust to missing pieces
        ret_part = (sig.split("(", 1)[0] if isinstance(sig, str) and sig else ret or "")
        returns_ptr = isinstance(ret_part, str) and ("*" in ret_part)

        helper_seed.append({
            "name": h,
            "returns_pointer": bool(returns_ptr),
            "signature": sig or f"{ret or 'int'} {h}(/*...*/);",
        })

    # ---- 5) Globals seen in body that likely need safe zero-inits ----
    curated = []
    for g in maybe_globals:
        # only simple string names
        if not isinstance(g, str):
            continue
        if g in ("xmlDictMutex", "globalRngState", "localRngInitialized"):
            curated.append({"name": g, "init_hint": "{0}"})

    globals_seed = {
        "candidates": [g for g in maybe_globals if isinstance(g, str)],
        "curated_inits": curated,
    }

    # ---- 6) Turn sets → lists and assign generic hints ----
    args_out = []
    for nm, info in arg_seed.items():
        kinds_val = info.get("kind", "unknown")
        kinds = kinds_val if isinstance(kinds_val, str) else "unknown"

        types_set = info.get("types") or set()
        if not isinstance(types_set, set):
            try:
                types_set = set(types_set)
            except Exception:
                types_set = set()

        touched = info.get("touched_fields") or set()
        if not isinstance(touched, set):
            try:
                touched = set(touched)
            except Exception:
                touched = set()

        used_in = info.get("used_in") or set()
        if not isinstance(used_in, set):
            try:
                used_in = set(used_in)
            except Exception:
                used_in = set()

        entry = {
            "name": nm,
            "kinds": [kinds],
            "types": sorted(types_set),
            "touched_fields": sorted(touched),
            "used_in": sorted(used_in),
        }

        # generic hints for LLM (project-agnostic)
        if "pointer" in kinds:
            if any(("char" in t) or ("xmlChar" in t) for t in types_set):
                entry["hints"] = {
                    "string_like": True,
                    "nul_terminate": True,
                    "symbolic_preferred": True,
                }
            else:
                entry["hints"] = {
                    "string_like": False,
                    "zero_init_preferred": True,
                }
        elif "scalar" in kinds:
            entry["hints"] = {
                "range_candidates": ["[-1, 1<<20]"],
                "nonnegative_preferred": False,
            }
        else:
            entry["hints"] = {}

        args_out.append(entry)

    seed = {
        "entrypoint": plan.get("entrypoint", {}),
        "in_path": in_path,
        "helpers": helpers,
        "args": args_out,
        "helpers_effects": helper_seed,
        "globals": globals_seed,
        # concise, project-agnostic instructions for the LLM
        "instructions_for_llm": (
            "Synthesize realistic grooming for KLEE:\n"
            "- Pointer args: choose allocation size or range; zero/nul policy; whether to make symbolic; "
            "init key fields if accessed.\n"
            "- Scalar args: feasible value ranges and assumptions to reach the success path without UB.\n"
            "- Helper effects: if helper returns pointers or writes via out-params, provide minimal side-effects "
            "consistent with in-path use.\n"
            "- Globals: safe zero/struct-zero inits for curated items if needed.\n"
            'Return as {"groom": {"args": [...], "globals": [...]}} matching the instrumenter schema.'
        ),
    }

    W(args.out, seed)
    print(f"[+] Groom seed → {args.out}")
    print(f"[i] in_path   : {in_path}")
    print(f"[i] helpers   : {helpers}")
    print(f"[i] args seen : {[a['name'] for a in args_out]}")
    print(f"[i] globals   : {globals_seed['candidates']}")

if __name__ == "__main__":
    main()
