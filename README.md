# SAILR
Automated pipeline for CodeQL-based and LLM-assisted symbolic execution with KLEE.

---

## Prerequisites

### System packages

```bash
sudo apt update && sudo apt install -y \
    unzip wget git python3 python3-pip \
    build-essential autoconf automake libtool pkg-config \
    cmake zlib1g-dev liblzma-dev libicu-dev \
    git-lfs
```

### Compiler toolchain (LLVM/Clang 14):
```
sudo apt-get install -y llvm-14 clang-14 lldb-14 lld-14 clangd-14 libclang-14-dev

sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 140 \
  --slave /usr/bin/clang++ clang++ /usr/bin/clang++-14 \
  --slave /usr/bin/clang-cpp clang-cpp /usr/bin/clang-cpp-14

sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/lib/llvm-14/bin/llvm-link 140
sudo update-alternatives --install /usr/bin/opt       opt       /usr/lib/llvm-14/bin/opt       140
```
Verify:
```
clang --version
llvm-link --version
opt --version
```
All should print 14.0.6.

### Python dependencies:
```
pip install --upgrade openai --break-system-packages
python3 -m pip install --user requests pyyaml --break-system-packages
```
### Build KLEE:
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
### Install CodeQL
```
python3 install_codeql.py
source ~/.bashrc
```
## Dataset extraction (CyberGym example)
SAILR assumes a frozen dataset snapshot under ./dataset/… and, optionally, metadata from the CyberGym repo.

1. Extract source code for a task
```
python3 extract_from_cybergym.py arvo:62911 libxml2
# Produces: ./dataset/62911/libxml2_62911_vul/...
```

2. Fetch ground-truth metadata (optional)
```
python3 fetch_cybergym_data.py --repo-dir ./cybergym_data arvo:62911
```
This pulls task manifests / metadata that SAILR can later use when evaluating refinement quality.

## Static Analysis Phase (CodeQL)
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
  PROJECT_NAME=libxml2_62911_vul \
  SRC_ROOT=./dataset/62911/libxml2_62911_vul \
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

### Extract Vul Specs (example)
```
python3 scripts/make_vul_specs.py \
  --findings sa_outputs/libxml2_62911_vul/findings.json \
  --facts sa_outputs/libxml2_62911_vul/fact_pack.json \
  --out specs/libxml2_62911_vul
```
This generates one JSON spec per finding (entrypoint, rule id, location, etc).

## LLM Refinement Only (inner loop)
```run_llm_refinement.sh``` is the LLM + KLEE refinement loop given a single vulnerability spec.

### Set your API key:
```
export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY
```
### Run

```
chmod +x run_llm_refinement.sh

./run_llm_refinement.sh \
  --sa-out sa_outputs/libxml2_62911_vul \
  --dataset dataset \
  --target "62911/libxml2_62911_vul:dict.c:541" \
  --rule local.oob.memfunc.length-misuse \
  --spec specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \
  --model deepseek-chat \
  --api-base https://api.deepseek.com
```


## One-button end-to-end pipeline
### ```run_pipeline_full.sh``` orchestrates everything for a single finding

1. Fetch CyberGym metadata
2. Extract dataset snapshot
3. Run CodeQL
4. Build vul specs
5. Call run_llm_refinement.sh on the chosen spec

Make it executable:

```
chmod +x run_pipeline_full.sh
chmod +x run_llm_refinement.sh
chmod +x codeql_scan.sh
```
Example usage for the libxml2 OOB case:
```
export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY
./run_pipeline_full.sh \
  --task        arvo:62911 \
  --project     libxml2 \
  --rule        local.oob.memfunc.length-misuse \
  --query-suites "rules/oob-pack/suites/oob-read.qls" \
  --target      "62911/libxml2_62911_vul:dict.c:541" \
  --spec        specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \
  --model       deepseek-chat \
  --api-base    https://api.deepseek.com

```

### Batch mode: run LLM over all specs
  
```run_pipeline_all_specs.sh``` (project-level batch refinement)

This script does:
1. Extract dataset
2. Fetch CyberGym metadata
3. Run CodeQL once
4. Generate all specs
5. Loop over every *.json in specs/<project_name>/ and run run_llm_refinement.sh for each.

Make it executable:
```
chmod +x run_pipeline_all_specs.sh
```

Example usage:
```
export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY

./run_pipeline_all_specs.sh \
  --task        arvo:62911 \
  --project     libxml2 \
  --rule        local.oob.memfunc.length-misuse \
  --query-suites "rules/oob-pack/suites/oob-read.qls" \
  --model       deepseek-chat \
  --api-base    https://api.deepseek.com

```

# Baseline Symbolic-Execution Configurations (manual / non-iterative)
To compare SAILR with simpler workflows, we run four SE baselines for each spec.

1. Manual Harness (entrypoint)
– Hand-written KLEE harness that calls the entrypoint, no static-analysis info.

2. SA driven Manual Harness (entrypoint + target + assertion)
– Hand-written harness, but designed using SA output (entrypoint, suspicious call site, assertion at target).


3. LLM Harness (entrypoint)
– Single-shot LLM-generated harness that calls the entrypoint, but without passing the CodeQL spec.

4. SA driven LLM Harness (entrypoint + target + assertion)
– Single-shot LLM-generated harness using the SA spec (entrypoint, target, assertion), without SAILR’s counterexample-guided refinement loop.

### Baseline drivers
For each project and spec, we use a canonical <SPEC_ID>:
```
specs/<project_name>/<SPEC_ID>.json
# e.g. SPEC_ID = 000_dict.c_541_local.oob.memfunc.length-misuse
```
Baseline driver sources are expected at:
```
drivers/manual_entry/<project_name>/<SPEC_ID>.c     # Manual Harness (entrypoint)
drivers/sa_manual/<project_name>/<SPEC_ID>.c        # SA-driven Manual Harness
drivers/llm_entry/<project_name>/<SPEC_ID>.c        # LLM Harness (entrypoint)
drivers/sa_llm/<project_name>/<SPEC_ID>.c           # SA-driven LLM Harness
```

These are generated automatically from the specs using a single LLM call per (mode, spec).

#### Generate drivers for all specs in specs/libxml2_62911_vul:
```
chmod +x generate_baseline_drivers.py

export DEEPSEEK_API_KEY=...   # or OPENAI_API_KEY

./generate_baseline_drivers.py \
  --project-name libxml2_62911_vul \
  --src-root ./dataset/62911/libxml2_62911_vul \
  --spec-dir specs/libxml2_62911_vul \
  --model deepseek-chat \
  --api-base https://api.deepseek.com \
  --modes manual_entry,sa_manual,llm_entry,sa_llm
```
### Running all baselines
Make the helper scripts executable:
```
chmod +x generate_baseline_drivers.py run_se_driver.sh run_baselines_for_spec.sh run_baselines_all_specs.sh
```

Example for libxml2_62911_vul and a single OOB spec:
```
./run_baselines_for_spec.sh \
  --project-name libxml2_62911_vul \
  --src-root ./dataset/62911/libxml2_62911_vul \
  --spec specs/libxml2_62911_vul/000_dict.c_541_local.oob.memfunc.length-misuse.json \
  --clang-flags "-I./dataset/62911/libxml2_62911_vul/include" \
  --klee-flags  "--search=dfs --max-time=600"

```
#### Run baselines for all specs in a project:
```
./run_baselines_all_specs.sh \
  --project-name libxml2_62911_vul \
  --src-root ./dataset/62911/libxml2_62911_vul \
  --spec-dir specs/libxml2_62911_vul \
  --clang-flags "-I./dataset/62911/libxml2_62911_vul/include" \
  --klee-flags  "--search=dfs --max-time=600"
```


# Metrics and Result Artifacts

SAILR and the baselines both write structured artifacts that we use to compute
evaluation metrics such as:

- **Reached** – Did symbolic execution reach the *target location* from the spec?
- **Detected** – Did KLEE trigger the assertion / error condition at that location?
- **False Positive (FP)** – Spec claims a bug, but KLEE cannot confirm it
  (target reached but assertion never fires, within the time budget).
- **Runtime** – Wall-clock time spent in KLEE for this (spec, configuration).
- **# LLM iterations** – Number of refinement iterations (SAILR only; baselines are single-shot).

## Aggregating statistics

```
chmod +x summarize_results.py

python3 summarize_results.py \
  --project-name libxml2_62911_vul \
  --sailr-out out \
  --se-root se_runs \
  --out-csv tables/libxml2_62911_vul_summary.csv

```
