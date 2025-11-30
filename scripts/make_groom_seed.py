#!/usr/bin/env python3
import argparse, json, pathlib

def J(p): return json.loads(pathlib.Path(p).read_text(encoding="utf-8", errors="ignore"))
def W(p, obj):
    pp = pathlib.Path(p); pp.parent.mkdir(parents=True, exist_ok=True)
    pp.write_text(json.dumps(obj, indent=2), encoding="utf-8")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True)
    ap.add_argument("--requirements", required=False, default=None,
                    help="Optional: precomputed type/usage info. If omitted or partial, an empty skeleton is used.")
    ap.add_argument("--stub-plan", required=True)      # helpers → signatures/ret/body
    ap.add_argument("--out", required=True)            # groom_seed.json
    args = ap.parse_args()

    plan = J(args.plan)
    # Requirements are optional and schema-flexible
    if args.requirements:
        try:
            req = J(args.requirements)
        except Exception:
            req = {}
    else:
        req = {}

    stubs = J(args.stub_plan)

    in_path  = list(dict.fromkeys(plan.get("in_path", [])))
    helpers  = list(dict.fromkeys(plan.get("helpers", [])))

    # ----- tolerate multiple shapes of requirements -----
    # Preferred: {"groom_requirements":{"functions":[...], "maybe_globals":[...]}}
    gr = req.get("groom_requirements") or {}
    # Fallbacks:
    fn_list = gr.get("functions") or req.get("functions") or []
    maybe_globals = gr.get("maybe_globals") or req.get("maybe_globals") or []

    # Build function facts map safely
    fnfacts = {}
    for f in fn_list:
        if isinstance(f, dict):
            nm = f.get("name")
            if nm:
                fnfacts[nm] = f

    # ---- 1) From in-path functions: collect param candidates & struct fields
    arg_seed = {}  # name -> {name, kind(pointer/scalar/unknown), types:set(), touched_fields:set(), used_in:set()}
    for fn in in_path:
        f = fnfacts.get(fn)
        if not f:
            continue
        for p in f.get("params", []):
            if not isinstance(p, dict): continue
            nm  = p.get("name", "")
            ty  = p.get("type", "")
            cls = p.get("class", "unknown")
            if not nm: continue
            cur = arg_seed.setdefault(nm, {"name": nm, "types": set(), "kind": cls, "touched_fields": set(), "used_in": set()})
            if ty: cur["types"].add(ty)
            cur["used_in"].add(fn)

        for acc in f.get("field_access", []):
            if not isinstance(acc, dict): continue
            base, field = acc.get("base"), acc.get("field")
            if base in arg_seed and field:
                arg_seed[base]["touched_fields"].add(field)

    # ---- 2) From helper stubs: note any return values/pointer outputs that will need grooming
    helpers_specs = (stubs.get("helpers") or {}) if isinstance(stubs, dict) else {}
    helper_seed = []
    for h in helpers:
        spec = helpers_specs.get(h, {}) if isinstance(helpers_specs, dict) else {}
        sig  = (spec.get("signature") or "")
        ret  = spec.get("ret", "")
        # naive pointer-return detection
        ret_part = (sig.split("(", 1)[0] if sig else ret or "")
        returns_ptr = ("*" in ret_part)
        helper_seed.append({
            "name": h,
            "returns_pointer": bool(returns_ptr),
            "signature": sig or f"{ret or 'int'} {h}(/*...*/);"
        })

    # ---- 3) Globals seen in body that likely need safe zero-inits
    curated = []
    for g in maybe_globals:
        if g in ("xmlDictMutex", "globalRngState", "localRngInitialized"):
            curated.append({"name": g, "init_hint": "{0}"})
    globals_seed = {
        "candidates": list(maybe_globals),
        "curated_inits": curated
    }

    # ---- 4) Turn sets → lists and assign generic hints
    args_out = []
    for nm, info in arg_seed.items():
        kinds = info["kind"] if isinstance(info.get("kind"), str) else "unknown"
        entry = {
            "name": nm,
            "kinds": [kinds],
            "types": sorted(info["types"]),
            "touched_fields": sorted(info["touched_fields"]),
            "used_in": sorted(info["used_in"])
        }
        # generic hints for LLM (project-agnostic)
        if "pointer" in kinds:
            if any(("char" in t) or ("xmlChar" in t) for t in info["types"]):
                entry["hints"] = {"string_like": True, "nul_terminate": True, "symbolic_preferred": True}
            else:
                entry["hints"] = {"string_like": False, "zero_init_preferred": True}
        elif "scalar" in kinds:
            entry["hints"] = {"range_candidates": ["[-1, 1<<20]"], "nonnegative_preferred": False}
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
        "instructions_for_llm":
            "Synthesize realistic grooming for KLEE:\n"
            "- Pointer args: choose allocation size or range; zero/nul policy; whether to make symbolic; init key fields if accessed.\n"
            "- Scalar args: feasible value ranges and assumptions to reach the success path without UB.\n"
            "- Helper effects: if helper returns pointers or writes via out-params, provide minimal side-effects consistent with in-path use.\n"
            "- Globals: safe zero/struct-zero inits for curated items if needed.\n"
            "Return as {\"groom\": {\"args\": [...], \"globals\": [...]}} matching the instrumenter schema."
    }

    W(args.out, seed)
    print(f"[+] Groom seed → {args.out}")

if __name__ == "__main__":
    main()
