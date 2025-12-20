# SAILR-CEGIR Pipeline

**SAILR** (Static-Analysis–Guided Iterative LLM Refinement) is an agentic framework that verifies static analysis findings by autonomously generating and refining symbolic execution harnesses (KLEE).


## Prerequisites & Installation

### System packages

```bash
sudo apt update && sudo apt install -y \
    build-essential autoconf automake libtool pkg-config cmake ripgrep\
    python3 python3-pip git-lfs unzip wget \
    llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev \
    libsqlite3-dev zlib1g-dev liblzma-dev libicu-dev

# Set Clang-14 as default
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14

# Python Environment
pip install --upgrade openai requests pyyaml
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
python3 extract_from_cybergym.py arvo:19910 binutils
# Produces: ./dataset/55980/libxml2_55980_vul/...
```

2. Fetch ground-truth metadata (optional)
```
python3 fetch_cybergym_data.py --repo-dir ./cybergym_data arvo:19910 
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

```
./codeql_scan.sh \
  PROJECT_NAME=binutils_19910_vul \
  SRC_ROOT=./dataset/19910/binutils_19910_vul \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/oob-pack/suites/oob-read.qls" \
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
./sailr_cegir/build_project_bc.sh dataset/62911/libxml2_62911_vul libxml2.bc
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
MAX_A=10 \
MAX_B=20 \
TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_batch.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse.maxcover.v5 \
  specs 4
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
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
MAX_A=10 \
MAX_B=20 \
TIMEOUT=600 \
bash sailr_cegir/run_sailr_cegir_single.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse.maxcover.v5 \
  specs/libxml2_62911_vul/006_debugXML.c_2636_local.oob.memfunc.length-misuse.maxcover.v5.json
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
  --out-dir verification_pack
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