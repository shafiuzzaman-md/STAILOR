#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
llm_synthesize_groom.py

Stage 2 of the LLMSE CEGIR pipeline:

  - Given:
      * A vulnerability spec (llmse.vul_spec.v1),
      * A harness plan (llmse.harness_plan.v1) with in-path functions and target,
      * An instrumented single TU that already has the assertion injected,
    synthesize grooming / symbolic-variable declarations for complex data
    structures so that:

      * All entrypoint parameters and key globals are either concretely
        initialized or made symbolic via klee_make_symbolic.
      * Complex structures (e.g., xmlDict, nested structs, buffers) are
        allocated and wired up enough for the in-path to execute.

  - Output:
      * llmse_groom.c
      * llmse_groom.h

These files define:

    void __llmse_groom_all(void **opaque1, void **opaque2, int *scalar);

or a similar signature derived from the plan's 'symbolic.args' and
'entrypoint.signature'.  The harness main() (in llmse_min_tu.c) will call
__llmse_groom_all(...) and then cast the opaque pointers back to the
expected entrypoint parameter types.
"""

import argparse
import json
import os
import pathlib
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

import re


def now():
    return datetime.now(timezone.utc).isoformat(timespec="seconds").replace("+00:00", "Z")


def read_json(p):
    return json.load(open(p, "r", encoding="utf-8"))


def write_json(p, obj):
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    json.dump(obj, open(p, "w", encoding="utf-8"), indent=2)


def read_txt(p):
    try:
        return open(p, "r", encoding="utf-8", errors="ignore").read()
    except Exception:
        return ""


def write_txt(p, s):
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    open(p, "w", encoding="utf-8").write(s)


def sh(cmd, cwd=None, timeout=None):
    p = subprocess.Popen(
        cmd,
        cwd=cwd,
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    out, err = p.communicate(timeout=timeout)
    return p.returncode, out, err


def llm_chat(messages, model="deepseek-chat", base="https://api.deepseek.com"):
    api_key = os.environ.get("DEEPSEEK_API_KEY", "")
    if not api_key:
        raise RuntimeError("DEEPSEEK_API_KEY is not set")
    import requests

    url = f"{base}/v1/chat/completions"
    payload = {"model": model, "messages": messages, "temperature": 0.2}
    headers = {"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"}
    r = requests.post(url, headers=headers, json=payload, timeout=120)
    r.raise_for_status()
    return r.json()


def extract_json_from_text(txt):
    import re as _re, json as _json

    fences = _re.findall(r"```(?:json)?\s*([\s\S]*?)```", txt, flags=_re.MULTILINE)
    candidates = fences[::-1] if fences else [txt]
    for cand in candidates:
        try:
            return _json.loads(cand)
        except Exception:
            continue
    m = _re.search(r"(\{[\s\S]*\})", txt)
    if m:
        try:
            return _json.loads(m.group(1))
        except Exception:
            pass
    return {}


def snapshot_files(tag: str, paths, root: str = "out/build/snapshots"):
    snap_root = Path(root)
    snap_root.mkdir(parents=True, exist_ok=True)
    for p in paths:
        if not p:
            continue
        try:
            p_abs = Path(p)
            if not p_abs.exists():
                continue
            dst = snap_root / f"{tag}__{p_abs.name}"
            write_txt(str(dst), read_txt(str(p_abs)))
        except Exception as ex:
            print(f"[w] snapshot failed for {p}: {ex}", file=sys.stderr)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True,
                    help="Harness plan JSON (llmse.harness_plan.v1)")
    ap.add_argument("--spec", required=True,
                    help="Vulnerability spec JSON (llmse.vul_spec.v1)")
    ap.add_argument("--groom-seed", required=False,
                    help="Optional groom seed JSON guiding which fields/args to make symbolic")
    ap.add_argument("--timeout", type=int, default=120)
    args = ap.parse_args()

    plan = read_json(args.plan)
    spec = read_json(args.spec)
    groom_seed = read_json(args.groom_seed) if args.groom_seed else None

    gen = plan.get("generated", {})
    instrumented_path = (
        plan.get("instrumented_path")
        or gen.get("minimal_tu_c")
        or "out/build/instrumented/llmse_min_tu.c"
    )

    # Where to write grooming code
    groom_h = gen.get("groom_h") or "out/build/instrumented/llmse_groom.h"
    groom_c = gen.get("groom_c") or "out/build/instrumented/llmse_groom.c"
    gen["groom_h"] = groom_h
    gen["groom_c"] = groom_c
    plan["generated"] = gen
    write_json(args.plan, plan)

    tu_src = read_txt(instrumented_path)
    if not tu_src:
        print(f"[!] Cannot read instrumented TU at {instrumented_path}", file=sys.stderr)
        sys.exit(2)

    # Minimal view of entrypoint + symbolic args for the LLM
    entry = plan.get("entrypoint", {})
    entry_sig = entry.get("signature", "")
    entry_name = entry.get("name", "")

    symbolic_args = (plan.get("symbolic") or {}).get("args", [])
    globals_sym = (plan.get("symbolic") or {}).get("globals", [])

    # Groom seed is optional but helpful: lists fields, structs, etc.
    groom_seed_snippet = json.dumps(groom_seed, indent=2) if groom_seed else "{}"

    system_msg = {
        "role": "system",
        "content": (
            "You are an expert in KLEE harness design for C programs with complex\n"
            "data structures (e.g., libxml2 dictionaries, nested structs, pointers).\n"
            "\n"
            "Goal (Stage 2: grooming / symbolics):\n"
            "- Synthesize grooming code that:\n"
            "    * Declares symbolic variables for selected arguments and globals.\n"
            "    * Allocates and initializes complex structs and pointers sufficiently\n"
            "      so that the in-path functions can execute.\n"
            "    * Encodes mild preconditions via klee_assume if necessary, but does NOT\n"
            "      encode the vulnerability condition itself (that is handled by the\n"
            "      later assertion stage and KLEE search).\n"
            "\n"
            "Context:\n"
            "- There is a single translation unit (llmse_min_tu.c) that contains\n"
            "  in-path function bodies and a harness main().\n"
            "- main() will call a grooming helper like:\n"
            "      void __llmse_groom_all(void **opaque1, void **opaque2, int *scalar);\n"
            "  and then cast the opaque pointers back to the entrypoint types.\n"
            "- You need to implement __llmse_groom_all (and supporting helpers) in\n"
            "  a separate C file (llmse_groom.c) and declare it in llmse_groom.h.\n"
            "\n"
            "Key constraints:\n"
            "- Do NOT modify the in-path logic (xmlDictLookup, xmlDictLookupInternal,\n"
            "  xmlDictFindEntry, etc.). Focus on grooming only.\n"
            "- Use idiomatic KLEE patterns:\n"
            "    * klee_make_symbolic(...) for symbolic scalars and buffers.\n"
            "    * malloc() for heap objects, then fill fields (possibly symbolic).\n"
            "    * klee_assume() for simple sanity constraints (sizes, non-null).\n"
            "- Keep structures small but realistic: you do not need full production\n"
"  initialization, only what is needed for in-path execution to make it\n"
            "  to the vulnerable statement.\n"
            "\n"
            "Output protocol:\n"
            "- Return a single JSON object in a fenced ```json block.\n"
            "- Shape:\n"
            "    {\n"
            "      \"groom_h\": \"<full contents of llmse_groom.h>\",\n"
            "      \"groom_c\": \"<full contents of llmse_groom.c>\"\n"
            "    }\n"
            "- Do NOT output any other prose outside the JSON block.\n"
        ),
    }

    user_msg = {
        "role": "user",
        "content": json.dumps(
            {
                "time": now(),
                "plan": plan,
                "spec": spec,
                "instrumented_path": instrumented_path,
                "entrypoint": {
                    "name": entry_name,
                    "signature": entry_sig,
                },
                "symbolic": {
                    "args": symbolic_args,
                    "globals": globals_sym,
                },
                "groom_seed": groom_seed_snippet,
                "tu_snippet": tu_src[:8000],  # keep prompt bounded
            },
            indent=2,
        ),
    }

    rsp = llm_chat([system_msg, user_msg])
    out_dir = Path("out/logs/groom")
    out_dir.mkdir(parents=True, exist_ok=True)
    write_json(out_dir / f"groom_{now().replace(':', '').replace('-', '')}.raw.json", rsp)

    content = rsp.get("choices", [{}])[0].get("message", {}).get("content", "")
    model_json = extract_json_from_text(content)

    groom_h_src = model_json.get("groom_h", "")
    groom_c_src = model_json.get("groom_c", "")

    if not groom_h_src or not groom_c_src:
        print(
            "[!] LLM did not return groom_h / groom_c; check logs in out/logs/groom",
            file=sys.stderr,
        )
        sys.exit(3)

    write_txt(groom_h, groom_h_src)
    write_txt(groom_c, groom_c_src)

    snapshot_files("GROOM", [groom_h, groom_c])

    print(f"[i] Wrote grooming header to {groom_h}")
    print(f"[i] Wrote grooming source to {groom_c}")


if __name__ == "__main__":
    main()
