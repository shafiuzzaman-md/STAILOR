# SAILR Pipeline

SAILR (Static-Analysis–Guided Iterative LLM Refinement for Symbolic-Execution Harnesses) runs an agentic loop per spec:

1. **Planner**: uses static-analysis spec + source context to propose an entrypoint and harness strategy.
2. **Builder**: interactively uses shell tools (`rg`, `grep`, `sed`, etc.) plus compilation feedback to synthesize a compilable KLEE harness.
3. **KLEE Refiner**: runs KLEE, then iteratively refines the harness to try to (a) reach the vulnerable line and (b) trigger the BUG assertion.

Harnesses follow a labeled-assert convention:
- `klee_assert(cond && "BUG_ASSERT")` — vulnerability condition (safety property).
- `klee_assert(0 && "REACH_ASSERT")` — reachability marker at the vulnerable line.

---

## Prerequisites

- Static analysis output already generated under: ```sa_outputs/<PROJECT_NAME>/``` including fact_pack.json and compile_commands.json for the project.
- Dataset source tree checked out under: ```dataset/<PROJECT_ID>/``` e.g., ```dataset/62911/libxml2_62911_vul/```
- A spec directory containing per-site specs, e.g.: ```specs/libxml2_62911_vul/*.json```
- KLEE and clang-14 on PATH.
- LLM API credentials (for llm_utils.llm_chat), e.g.:
```
export DEEPSEEK_API_KEY=...
# or
export OPENAI_API_KEY=...
```

## Usage
Run SAILR on all specs of a project:
```
chmod +x sailr_cegir/run_sailr_cegir_batch.sh

SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
LLM_MODEL=deepseek-chat \
LLM_API_BASE=https://api.deepseek.com \
CLANG_FLAGS="-I/usr/include/libxml2" \
KLEE_FLAGS="--search=nurs:covnew --max-time=3600 --external-calls=all" \
MAX_A=8 \
MAX_B=12 \
TIMEOUT=120 \
bash sailr_cegir/run_sailr_cegir_batch.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse \
  specs

python3 sailr_cegir/aggregate_sailr_cegir_results.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul

python3 sailr_cegir/collect_vulnerabilities.py --mode-root se_runs/sailr_cegir/libxml2_62911_vul

python3 sailr_cegir/collect_verification_pack.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul \
  --out-dir se_runs/sailr_cegir/libxml2_62911_vul/verification_pack_libxml2_62911_vul
```

Where:
```
SA_OUT_DIR — root directory of static-analysis outputs (per-project subdir inside).

DATASET_ROOT — root of dataset source trees.

LLM_MODEL / LLM_API_BASE — forwarded to llm_utils.llm_chat.

CLANG_FLAGS — extra include paths or defines for compiling harnesses.

KLEE_FLAGS — KLEE options (search strategy, timeouts, external calls, etc.).

MAX_A — maximum Builder compile attempts per (plan, replan).

MAX_B — maximum KLEE runs in the refiner.

TIMEOUT — per-KLEE-run timeout (seconds).

First positional: PROJECT_ID (e.g., 62911/libxml2_62911_vul).

Second positional: RULE_ID (e.g., local.oob.memfunc.length-misuse).

Third positional: SPEC_ROOT (e.g., specs).
```

## Output
```
se_runs/sailr_cegir/<PROJECT_SLUG>/<SPEC_STEM>/
```
For example:
```
se_runs/sailr_cegir/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/
```

Each spec run directory contains:
```
ctx/

context.json — extracted spec + code context given to the planner.

vul_snippet_annotated.txt — labeled snippet around the vulnerable line.

enclosing_function.c — best-effort enclosing function body.

prompts/

planner_*.json/txt — planner messages and responses.

builder_*.json/txt — builder messages, shell usage, harness responses.

klee_refiner_*.json/txt — refiner messages and steps.

harness/

harness.c — latest synthesized harness.

harness_R*_C*.c — snapshots per builder attempt.

harness.bc — LLVM bitcode used for KLEE.

logs/

clang_last.*.txt — last clang command/stdout/stderr.

klee_iter*.{stdout,stderr,cmd}.txt — per-KLEE-run logs.

plan_R*.json — planner outputs per replan attempt.

run_meta.json — summary metadata for this spec (class, KLEE stats, etc.).
```

## Result Summary
```

```
