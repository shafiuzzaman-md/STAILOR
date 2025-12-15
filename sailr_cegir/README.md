# SAILR-CEGIR Pipeline

**SAILR** (Static-Analysis–Guided Iterative LLM Refinement) is an agentic framework designed to automatically verify static analysis findings. It uses a specialized loop of LLM agents to generate, compile, and refine KLEE harnesses that prove the existence of vulnerabilities.

## The Pipeline Loop

For each vulnerability spec, SAILR executes the following autonomous loop:

1.  **Planner**: Analyzes the static analysis spec, source code context, and rule type to propose a strategic **Instrumentation Plan**. This includes identifying the entrypoint, necessary data structures, and precise assertion logic.
2.  **Deterministic Contract Validator (DCV)**: A strict, rule-based gatekeeper that validates the Plan *before* code generation. It ensures the plan is semantically sound (e.g., checks that OOB assertions actually constrain length vs. capacity) and faithful to the project's requirements.
3.  **Builder**: Interactively uses shell tools (`rg`, `grep`, `sed`) and compilation feedback to synthesize a **standalone, compilable KLEE harness** (`harness.c`) that implements the Plan.
4.  **KLEE Refiner**: Runs KLEE on the generated harness. It then iteratively refines the code to:
    * **Reach** the target vulnerable line.
    * **Trigger** the specific bug condition.

---

## Prerequisites

Ensure your environment is set up with the following:

1.  **Directory Structure**:
    * `sa_outputs/<PROJECT_NAME>/`: Static analysis results (must include `fact_pack.json` and `compile_commands.json`).
    * `dataset/<PROJECT_ID>/`: The target source code (e.g., `dataset/62911/libxml2_62911_vul/`).
    * `specs/<PROJECT_NAME>/`: Directory containing per-vulnerability JSON specs.

2.  **Tools**:
    * `clang-14`: Required for compiling harnesses.
    * `klee`: The symbolic execution engine.
    * `wllvm`: Required for building the project bitcode (install via `pipx install wllvm`).

3.  **Credentials**:
    * Export your LLM API key for the `llm_utils` module:
        ```bash
        export DEEPSEEK_API_KEY=your_key_here
        # or
        export OPENAI_API_KEY=your_key_here
        ```

---

## Setup & Installation

Before running the agents, you must build the unified project bitcode. This allows the harness to link against the target library if necessary (though SAILR aims for standalone compilation).

**1. Build Project Bitcode**
Use the provided utility script to build `project.bc`:

```bash
chmod +x sailr_cegir/build_project_bc.sh

# Usage: ./build_project_bc.sh <source_dir> <output_bc_name>
./sailr_cegir/build_project_bc.sh dataset/62911/libxml2_62911_vul libxml2.bc
```
**2. Prepare Runner Scripts**
Ensure all runner scripts are executable:
```
chmod +x sailr_cegir/run_sailr_cegir_batch.sh
chmod +x sailr_cegir/run_sailr_cegir_single.sh
```
## Usage
**Option A: Run Batch Automation (All Specs)**
This is the standard mode. It iterates through every JSON spec in the target directory and runs the full SAILR loop.
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
MAX_A=25 \
MAX_B=20 \
TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_single.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse \
  specs/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5.json
```
Key Variables:
- MAX_A: Max compilation attempts by the Builder (per plan).
- MAX_B: Max refinement iterations (KLEE runs) by the Refiner.
- TIMEOUT: Execution timeout for KLEE (in seconds).
- PROJECT_ID: The dataset identifier (e.g., 62911/libxml2_62911_vul).
- RULE_ID: The vulnerability class (used for assertion templates).

**Option B: Run Single Spec (Debugging)**
To isolate and debug a specific vulnerability spec:
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
CLANG_FLAGS="-I/usr/include/libxml2" \
MAX_A=25 MAX_B=20 TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_single.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse \
  specs/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5.json
```

## Results & Artifacts
After the batch run completes, use the aggregation scripts to summarize results and collect artifacts for manual review.

1. Generate Summary Table Prints a table of results (H2/H1/H0/E) and execution times.
```
python3 sailr_cegir/aggregate_sailr_cegir_results.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul
```

2. Collect Vulnerabilities Generates a CSV list of all confirmed vulnerabilities.
```
python3 sailr_cegir/collect_vulnerabilities.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul
```

3. Collect Verification Pack Gather harnesses, logs, and reproduction artifacts for all H2 (Bug Found) results into a clean folder.
```
python3 sailr_cegir/collect_verification_pack.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul \
  --out-dir verification_pack_libxml2
```

### Output Structure
All runs are stored in: se_runs/sailr_cegir/<PROJECT_SLUG>/<SPEC_STEM>/

Inside each run directory:
```
Directory/File,Description
harness/,Contains the synthesized C code.
  harness.c,"The final, latest synthesized harness."
  harness.bc,The compiled LLVM bitcode used for KLEE.
  harness_R*_C*.c,Snapshots of the harness at each Builder attempt.
ctx/,Context extracted for the agents.
  context.json,Extracted spec and code context used by the Planner.
  vul_snippet_annotated.txt,Source snippet highlighting the target line.
prompts/,Full logs of the conversation with the LLM.
  planner_*.json,Planner thoughts and decisions.
  builder_*.json,Builder code generation and shell usage.
  klee_refiner_*.json,Refiner analysis of KLEE errors.
logs/,Raw tool outputs.
  clang_last.*.txt,Compiler stdout/stderr.
  klee_iter*.txt,Logs for every KLEE execution iteration.
run_meta.json,"Final Summary: Result class, assertion hits, paths, and timing."
```
