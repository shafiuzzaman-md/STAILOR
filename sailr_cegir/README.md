# Quick Start & Usage

This repository ships utility scripts to (1) set up the analysis environment and (2) run the full pipeline end-to-end.  
The README focuses on **how to run** the pipeline and **what artifacts to expect**.

---

## What the pipeline does

1. **Static Analysis** (e.g., CodeQL) produces findings and fact packs.
2. **Spec Generation** converts findings into per-vulnerability JSON specs.
3. **Agent Verification** iteratively synthesizes and checks harnesses (KLEE) for reachability and bug triggering.
4. **Result Packaging** aggregates runs and collects evidence into a verification pack.

---

## Quick Start

### 1) Environment setup (run once)
```bash
bash sailr_cegir/setup_env.sh
```

What it does (high-level):
- Installs LLVM/Clang 14 toolchain and common build deps
- Builds KLEE with uClibc support
- Installs Python dependencies used by the pipeline

### 2) Run the full pipeline (per project / rule)
# Usage: ./run_pipeline.sh <PROJECT_FOLDER_NAME> [RULE_ID]

```bash
bash sailr_cegir/run_pipeline.sh 62911/libxml2_62911_vul oob-read
```

---

## Configuration

The pipeline is configured primarily via environment variables. These are typically set in `scripts/run_pipeline.sh`, but you can also export them in your shell before running the scripts.

| Variable | Meaning | Example |
|---|---|---|
| `DATASET_ROOT` | Root directory containing extracted projects | `dataset` |
| `PROJECT_ID` | Project identifier (relative to `DATASET_ROOT`) | `62911/libxml2_62911_vul` |
| `SA_OUT_DIR` | Static analysis output directory | `sa_outputs` |
| `RULE_ID` | Rule identifier used to select specs | `local.oob.memfunc.length-misuse.maxcover.v5` |
| `PROJECT_BC` | Path to project-wide LLVM bitcode | `dataset/<project>/project.bc` |
| `CLANG_FLAGS` | Include flags for compiling harnesses | `-I.../include -I.../klee/include` |
| `MAX_A` | Max Phase-II refinement iterations | `20` |
| `MAX_B` | Max Phase-I frozen-analysis turns | `3` |
| `TIMEOUT` | Per-spec timeout (seconds) | `600` |

---

## Manual Usage Guide

### Phase 1: Preparation (Static Analysis)

#### (Optional) Extract source
```bash
python3 extract_from_cybergym.py arvo:<ID> <project-name>
```

#### Run CodeQL scan (produces `findings.json`)
```bash
./codeql_scan.sh PROJECT_NAME=<name> SRC_ROOT="<path>"   BUILD_CMD="make -j$(nproc)"   QUERY_SUITES="rules/<pack>/suites/<suite>.qls"   CONTEXT_LINES=5 ALSO_CPP=false
```

#### Generate specs from findings
```bash
python3 scripts/make_vul_specs.py   --findings "<SA_OUT_DIR>/<project>/findings.json"   --facts "<SA_OUT_DIR>/<project>/fact_pack.json"   --out "specs/<project>"
```

#### Build project bitcode (if missing)
```bash
./sailr_cegir/build_project_bc.sh "<SRC_ROOT>" "<PROJECT_BC>"
```

---

### Phase 2: Agent Verification

#### Batch mode (all specs under a directory)
```bash
SA_OUT_DIR=sa_outputs DATASET_ROOT=dataset CLANG_FLAGS="-I$(pwd)/dataset/<project>/include -I$HOME/tools/klee/include" MAX_A=20 MAX_B=3 TIMEOUT=600 bash sailr_cegir/run_sailr_cegir_batch.sh   "<PROJECT_ID>"   "<RULE_ID>"   specs 4
```

#### Single-spec mode (debug one case interactively)
```bash
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/<project>/include -I$HOME/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
bash sailr_cegir/run_worker.sh \
  "<PROJECT_ID>" \
  "<RULE_ID>" \
  "specs/<project>/<spec>.json" \
  "rules/<pack>/queries/<query>.ql"
```

---

## Result Analysis


```
python3 sailr_cegir/collect_results.py \
  --mode-root se_runs/sailr_cegir/<project> \
  --src-root "dataset/<project>" \
  --out-dir stailor_report_pack_<project>
```


---

## Troubleshooting

### Ghost execution (externals / concretization)
**Symptom:** KLEE warns about “calling external” functions or “undefined reference” but still runs.  
**Cause:** Analysis is running on harness-only bitcode (not linked), so library calls are treated as externals and may force concretization.  
**Fix:** Ensure the project bitcode is built and the analysis uses linked bitcode. Verify key symbols exist:

```bash
llvm-nm "$PROJECT_BC" | grep " T "
```

### Linker collision / illegal redefinition
**Symptom:** Validator reports `ILLEGAL REDEFINITION` of a real library function.  
**Cause:** The harness defines a symbol that the real project already provides.  
**Fix:** Use an `extern` declaration and call the real function from `main()`. If you need wrappers, rename them (e.g., `Harness_<name>`).

### Placement errors during replay/validation
**Symptom:** Replay fails because behavior-changing logic was placed in a removable section.  
**Fix:** Keep only semantics-preserving stubs in removable sections. If logic is required for correctness, it must be eliminated in favor of real linking and proper setup.

---

## Logs and artifacts

Per-spec run directories are created under:
- `se_runs/sailr_cegir/<project>/<spec-id>/`

They include:
- `execution.log` (high-level run log)
- `prompts/` (materialized prompts used for the run)
- `refinement/` (generated harness artifacts, compile/KLEE logs)
- `logs/` (summary logs and per-turn records)