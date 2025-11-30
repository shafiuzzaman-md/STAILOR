#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
loopB_make_prompt.py

Builds the prepared prompt JSON for loopB_run_cegir.py.

Usage example:

  python3 scripts/loopB_make_prompt.py \
    --plan out/plans/plan_dict.c_541.json \
    --spec out/specs/000_dict.c_541_local.oob.memfunc.length-misuse.json \
    --ccdb sa/compile_commands.json \
    --src-root ../../../dataset/62911/libxml2_62911_vul \
    --examples-build exemplars/build.jsonl \
    --examples-klee exemplars/klee.jsonl \
    --out out/prompts/prompt_dict.c_541.json
"""

import argparse
import json
import pathlib
import os


def read_json(p):
    return json.load(open(p, "r", encoding="utf-8"))


def write_json(p, obj):
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    json.dump(obj, open(p, "w", encoding="utf-8"), indent=2)


def load_jsonl(path):
    if not path or not os.path.exists(path):
        return []
    out = []
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            try:
                out.append(json.loads(line))
            except Exception:
                # ignore malformed lines, we just want exemplars best-effort
                continue
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True, help="Plan JSON from loopA/plan_enrich")
    ap.add_argument("--spec", required=True, help="Vul spec JSON (000_*.json)")
    ap.add_argument("--ccdb", required=True, help="compile_commands.json")
    ap.add_argument("--src-root", required=True, help="Source root for this target")
    ap.add_argument(
        "--examples-build",
        dest="examples_build",
        default="exemplars/build.jsonl",
        help="JSONL file with build-loop exemplars",
    )
    ap.add_argument(
        "--examples-klee",
        dest="examples_klee",
        default="exemplars/klee.jsonl",
        help="JSONL file with KLEE-loop exemplars",
    )
    ap.add_argument("--out", required=True, help="Output prompt JSON path")
    args = ap.parse_args()

    plan = read_json(args.plan)
    spec = read_json(args.spec)

    # NOTE: argparse converts --examples-build → args.examples_build
    build_ex = load_jsonl(args.examples_build)
    klee_ex = load_jsonl(args.examples_klee)

    prompt = {
        "kind": "loopB_cegir_prompt",
        "plan_path": args.plan,
        "spec_path": args.spec,
        "ccdb": args.ccdb,
        "src_root": args.src_root,
        "plan": plan,
        "spec": spec,
        "examples": {
            "build": build_ex,
            "klee": klee_ex,
        },
        "notes": (
            "Prepared prompt for Phase A (build-to-green) and Phase B (reach target) "
            "of the CEGIR loop. The LLM sees this JSON and should respond with a "
            "single JSON object in a fenced code block containing `edits` and "
            "optional `commands`."
        ),
    }

    write_json(args.out, prompt)
    print(f"[i] Wrote prompt to {args.out}")


if __name__ == "__main__":
    main()
