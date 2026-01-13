# Quick Start: Utility Scripts

We provide two master scripts to automate the environment setup and the full analysis pipeline.
1. Environment Setup (setup_env.sh)
Run this once to install LLVM 14, KLEE (with uClibc), CodeQL, and Python dependencies.

2. Run Pipeline (run_pipeline.sh)
Run this to execute the full workflow: Static Analysis -> Spec Generation -> Agent Verification.



## Prerequisites & Installation

### System packages

```bash
sudo apt update && sudo apt install -y \
    build-essential autoconf automake libtool pkg-config cmake ripgrep\
    python3 python3-pip git-lfs unzip wget \
    llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev \
    libsqlite3-dev zlib1g-dev liblzma-dev libicu-dev

sudo apt-get install liblzma-dev

# Set Clang-14 as default
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14

# Python Environment
pip install --upgrade openai requests pyyaml wllvm
```

### Build KLEE (from source)
```
# Install dependencies
sudo apt-get update
sudo apt-get install -y libsqlite3-dev

mkdir -p ~/tools && cd ~/tools

# Build klee-uclibc
git clone https://github.com/klee/klee-uclibc.git
cd klee-uclibc
./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14
make -j2
cd ..

# Build KLEE
git clone https://github.com/klee/klee.git
cd klee
mkdir build && cd build

cmake .. \
  -DCMAKE_C_COMPILER=clang-14 \
  -DCMAKE_CXX_COMPILER=clang++-14 \
  -DLLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config \
  -DENABLE_POSIX_RUNTIME=ON \
  -DKLEE_UCLIBC_PATH="$HOME/tools/klee-uclibc" \
  -DENABLE_UNIT_TESTS=OFF \
  -DENABLE_SYSTEM_TESTS=OFF \
  -DENABLE_TCMALLOC=OFF \
  -DENABLE_STP=OFF \
  -DENABLE_METASMT=OFF

make -j$(nproc)
echo 'export PATH=$HOME/tools/klee/build/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```


Verify:

```
which klee
klee --version
ls ~/tools/klee/include/klee/klee.h
```
### CodeQL Setup
```
python3 install_codeql.py
source ~/.bashrc
```

## Dataset
SAILR assumes a frozen dataset snapshot under ./dataset/.

Extract target project source (e.g., from CyberGym):
```
python3 extract_from_cybergym.py arvo:62911 libxml2

python3 extract_from_cybergym.py arvo:55980 libxml2
# Produces: ./dataset/55980/libxml2_55980_vul/...
```

2. Fetch ground-truth metadata (optional)
```
python3 fetch_cybergym_data.py --repo-dir ./cybergym_data arvo:62911 
```
This pulls task manifests / metadata that SAILR can later use when evaluating refinement quality.

## Run Static Analysis (CodeQL)
### Download queries 
```
codeql pack download codeql/cpp-queries
codeql pack install rules/oob-pack
codeql pack install rules/uaf-pack \
  --search-path "/home/shafi/codeql-cli/codeql:/home/shafi/.codeql/packages"
```
### Run CodeQL 
chmod +x codeql_scan.sh 

1. Clean previous artifacts
```
cd ./dataset/62911/libxml2_62911_vul
make clean
cd -
```
2. Run scan
```
./codeql_scan.sh \
  PROJECT_NAME=libxml2_62911_vul \
  SRC_ROOT=./dataset/62911/libxml2_62911_vul \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false
```
This produces, under ```sa_outputs/libxml2_62911_vul```, artifacts like:

- findings.json / findings.jsonl / findings.csv
- codeql-results.sarif
- fact_pack.json
- compile_commands.json

### Generate Vulnerability Specs
Convert raw findings into individual JSON specs:
```
python3 scripts/make_vul_specs.py \
  --findings sa_outputs/libxml2_55980_vul/findings.json \
  --facts sa_outputs/libxml2_62911_vul/fact_pack.json \
  --out specs/libxml2_55980_vul
```

# Infer entrypoint (LLM Pre-pass)
```
chmod +x llm_infer_entrypoints.py

export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY

./llm_infer_entrypoints.py \
  --spec-dir specs/libxml2_62911_vul \
  --src-root ./dataset/62911/libxml2_62911_vul \
  --model deepseek-chat \
  --api-base https://api.deepseek.com \
  --prompt-file prompts/entrypoint_prompt.txt
```

## LLM Iterative Refinement

**1. Build Project Bitcode**
Compile the target library into a single bitcode file for linking (optional but recommended). Use the provided utility script to build `project.bc`:

```bash
chmod +x sailr_cegir/build_project_bc.sh

# Usage: ./build_project_bc.sh <source_dir> <output_bc_name>
./sailr_cegir/build_project_bc.sh dataset/62911/libxml2_62911_vul dataset/62911/libxml2_62911_vul/project.bc
```
**2. Prepare Runner Scripts**
Ensure all runner scripts are executable:
```
chmod +x sailr_cegir/run_sailr_cegir_batch.sh
chmod +x sailr_cegir/run_sailr_cegir_single.sh
```
### Usage
**Option A: Run Batch Automation (All Specs)**
Run the full pipeline on all specs in a directory.
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
MAX_A=30 \
MAX_B=3 \
TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_batch.sh \
  62911/libxml2_62911_vul \
  oob-read \
  specs 
  4
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
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
MAX_A=30 \
MAX_B=3 \
TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_single.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse.maxcover.v5 \
  specs/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5.json \
  rules/oob-pack/queries/oob-length-misuse-maxcover.ql
```
**Run the validation step only**
```
python3 sailr_cegir/scripts/run_agent_for_spec.py \
  --sa-out-dir sa_outputs/libxml2_62911_vul \
  --dataset-root $(pwd)/dataset \
  --project-id 62911/libxml2_62911_vul \
  --src-root $(pwd)/dataset/62911/libxml2_62911_vul \
  --spec specs/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5.json \
  --spec-stem 164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5 \
  --vul-file dict.c \
  --vul-line 541 \
  --rule-id local.oob.memfunc.length-misuse.maxcover.v5 \
  --target-vul 62911/libxml2_62911_vul:dict.c:541 \
  --project-bc $(pwd)/dataset/62911/libxml2_62911_vul/project.bc \
  --llm-model deepseek-chat \
  --llm-api-base https://api.deepseek.com \
  --clang-flags "-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
  --run-dir se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5 \
  --reproduce \
  --reproduce-ktest se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/refinement/logs/klee-out-5/test000017.ktest
  ```

## Result Verification & Analysis Guide

This guide explains how to interpret, verify, and replay the results generated by the SAILR-CEGIR pipeline.

## 1. Directory Structure (Analysis Pack)
After running `collect_results.py`, the output directory (`analysis_pack/`) is organized as follows:

- **`verified_bugs/`**: (H2_BUG) Specs where KLEE found a bug AND the Strict/System Replay confirmed it.
    - Contains: `harness.c`, `bug.assert.err`, `test00000X.ktest`, `execution.log`, `result_info.txt`.
- **`false_positives_or_reach_only/`**: (H2_REACH) Specs where the target was reached, but either:
    - The bug condition was not met (True Negative or Weak Harness).
    - The bug was found by KLEE but failed Replay (Potential False Positive or Stub Dependency).
    - Check `result_info.txt` for the specific reason ("Stub Only", "Replay Failed", etc.).
- **`failures/`**:
    - `E/`: Compilation, linking, or validation errors.
    - `H0/`: Harness ran but never reached the target (Path Exploration Failed).
    - `H1/`: KLEE Timed out before reaching the target.

## 2. Verifying a Bug (H2_BUG)
To manually verify a confirmed bug:

1. Navigate to the spec directory in `verified_bugs/`.
2. Review `harness.c`: Ensure it models the entrypoint correctly.
3. Replay with KLEE:
   ```bash
   # Re-compile harness
   clang-14 -emit-llvm -c -g harness.c -o harness.bc
   # Link with project bitcode
   llvm-link-14 harness.bc /path/to/project.bc -o linked.bc
   # Run KLEE
   klee --libc=uclibc --posix-runtime linked.bc

## Results & Artifacts
After the batch run completes, use the aggregation scripts to summarize results and collect artifacts for manual review.

1. Generate Summary Table Prints a table of results (H2/H1/H0/E) and execution times.
```
python3 sailr_cegir/aggregate_sailr_cegir_results.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul \
  --llm-usage-log llm_usage.tsv
```

2. Collect Vulnerabilities Generates a CSV list of all confirmed vulnerabilities.
```
python3 sailr_cegir/collect_vulnerabilities.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul
```

3. Collect Verification Pack Gather harnesses, logs, and reproduction artifacts for all H2 (Bug Found) results into a clean folder.
```
python3 sailr_cegir/collect_verification_pack.py \
  --mode-root se_runs/sailr_cegir/libxml2_55980_vul \
  --out-dir verification_pack \
  --src-root dataset/55980/libxml2_55980_vul

```

# Adding a new rule (new file per rule)
Create a new file:
```
sailr_cegir/scripts/validators/rules/<your_rule>.py
```
Implement a class extending BaseRuleValidator and register it:
```
from ..base import BaseRuleValidator, ValidationOutcome
from ..registry import register_validator

class MyRule(BaseRuleValidator):
    RULE_ID_PATTERN = r".*my-rule-id.*"

    def validate_plan(...): ...
    def validate_harness(...): ...

register_validator(MyRule())

```