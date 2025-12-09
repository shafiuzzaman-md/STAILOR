#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_cegir.py — Main SAILR pipeline driver

SAILR: Static-Analysis-guided Iterative LLM Refinement of Symbolic-Execution Harnesses
"""

import argparse, subprocess, sys, os, json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]  # repo root
SCRIPTS = Path(__file__).resolve().parent
PROMPTS = ROOT / "prompts"

def run(cmd: list[str]):
    print(f"[RUN] {' '.join(cmd)}")
    res = subprocess.run(cmd, capture_output=True, text=True)
    print(res.stdout)
    if res.stderr:
        print(res.stderr, file=sys.stderr)
    return res.returncode

def stage(title: str):
    print(f"\n{'#'*80}\n# {title}\n{'#'*80}")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sa-out-dir", required=True)
    ap.add_argument("--dataset-root", required=True)
    ap.add_argument("--project", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--spec", required=True)
    ap.add_argument("--spec-stem", required=True)
    ap.add_argument("--vul-file", required=True)
    ap.add_argument("--vul-line", required=True)
    ap.add_argument("--rule-id", required=True)
    ap.add_argument("--target-vul", required=True)
    ap.add_argument("--llm-model", required=True)
    ap.add_argument("--llm-api-base", required=True)
    ap.add_argument("--max-a", type=int, default=8)
    ap.add_argument("--max-b", type=int, default=12)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--out-dir", required=True)
    ap.add_argument("--work-dir", required=True)
    args = ap.parse_args()

    out = Path(args.out_dir)
    work = Path(args.work_dir)
    work.mkdir(parents=True, exist_ok=True)

    plan = work / f"plan_{args.spec_stem}.json"
    stub_plan = work / f"stub_plan_{args.spec_stem}.json"
    groom_seed = work / f"groom_seed_{args.spec_stem}.json"
    prompt = work / f"prompt_{args.spec_stem}.json"
    build_root = work / "instrumented"
    build_root.mkdir(exist_ok=True)

    stage("1) Entrypoint inference")
    run([
        sys.executable, str(SCRIPTS/"infer_entrypoint.py"),
        "--spec", args.spec,
        "--facts", f"{args.sa_out_dir}/fact_pack.json",
        "--ccdb", f"{args.sa_out_dir}/compile_commands.json",
        "--src-root", args.src_root,
        "--plan", str(plan),
        "--provider", "deepseek",
        "--api-base", args.llm_api_base,
        "--model", args.llm_model
    ])

    stage("2) Plan enrich")
    run([
        sys.executable, str(SCRIPTS/"plan_enrich.py"),
        "--plan", str(plan),
        "--spec", args.spec,
        "--facts", f"{args.sa_out_dir}/fact_pack.json",
        "--ccdb", f"{args.sa_out_dir}/compile_commands.json",
        "--src-root", args.src_root,
        "--rewrite-driver"
    ])

    stage("3) Stub synthesis")
    run([
        sys.executable, str(SCRIPTS/"synth_stubs.py"),
        "--plan", str(plan),
        "--spec", args.spec,
        "--facts", f"{args.sa_out_dir}/fact_pack.json",
        "--src-root", args.src_root,
        "--rewrite-driver",
        "--out", str(stub_plan)
    ])

    stage("4) Groom seed")
    run([
        sys.executable, str(SCRIPTS/"make_groom_seed.py"),
        "--plan", str(plan),
        "--stub-plan", str(stub_plan),
        "--out", str(groom_seed)
    ])

    stage("5) Instrument TU + stubs")
    run([
        sys.executable, str(SCRIPTS/"instrument_tu_and_stubs.py"),
        "--plan", str(plan),
        "--spec", args.spec,
        "--src-root", args.src_root,
        "--build-root", str(build_root),
        "--stub-plan", str(stub_plan),
        "--facts", f"{args.sa_out_dir}/fact_pack.json",
        "--update-plan"
    ])

    run([
        sys.executable, str(SCRIPTS/"fix_missing_types.py"),
        "--tu", str(build_root/"llmse_min_tu.c"),
        "--shims", str(build_root/"llmse_min_shims.h"),
        "--src-root", args.src_root,
        "--facts", f"{args.sa_out_dir}/fact_pack.json"
    ])

    run([
        sys.executable, str(SCRIPTS/"autofix_min_tu.py"),
        "--min-shims", str(build_root/"llmse_min_shims.h"),
        "--helper-stubs-h", str(build_root/"llmse_helper_stubs.h"),
        "--helper-stubs-c", str(build_root/"llmse_helper_stubs.c"),
        "--tu", str(build_root/"llmse_min_tu.c")
    ])

    stage("6) Assertion injection (LLM pass #1)")
    run([
        sys.executable, str(SCRIPTS/"derive_assertion_and_inject.py"),
        "--spec", args.spec,
        "--plan", str(plan),
        "--src-root", args.src_root,
        "--build-root", str(build_root),
        "--inplace",
        "--provider", "deepseek",
        "--api-base", args.llm_api_base,
        "--model", args.llm_model
    ])

    stage("7) Groom synthesis (LLM pass #2)")
    run([
        sys.executable, str(SCRIPTS/"llm_synthesize_groom.py"),
        "--plan", str(plan),
        "--spec", args.spec,
        "--groom-seed", str(groom_seed),
        "--timeout", str(args.timeout),
        "--provider", "deepseek",
        "--api-base", args.llm_api_base,
        "--model", args.llm_model
    ])

    stage("8) Make prompt for CEGIR loop")
    run([
        sys.executable, str(SCRIPTS/"make_prompt.py"),
        "--plan", str(plan),
        "--spec", args.spec,
        "--ccdb", f"{args.sa_out_dir}/compile_commands.json",
        "--src-root", args.src_root,
        "--out", str(prompt)
    ])

    stage("9) Run iterative CEGIR loop (A: build, B: KLEE)")
    run([
        sys.executable, str(SCRIPTS/"loopB_run_cegir.py"),
        "--plan", str(plan),
        "--prompt", str(prompt),
        "--max-a", str(args.max_a),
        "--max-b", str(args.max_b),
        "--timeout", str(args.timeout)
    ])

    print(f"[✓] SAILR completed for {args.spec_stem}")

if __name__ == "__main__":
    main()
