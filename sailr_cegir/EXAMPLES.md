# Quick Start

## Dataset
dataset snapshot under ./dataset/.

1. Extract target project source (e.g., from CyberGym):
```
python3 extract_from_cybergym.py arvo:62911 libxml2
```
2. Clone from github
```
mkdir dataset
cd dataset
git clone https://github.com/GNOME/libxml2.git
```
## Fetch ground-truth metadata 
```
python3 fetch_cybergym_data.py --repo-dir ./cybergym_data arvo:62911 
```

## Pipeline
Example 1 (Cyber_gym):
```
bash sailr_cegir/run_stailor.sh 62911/libxml2_62911_vul
```

Example 2:
```
bash sailr_cegir/run_stailor.sh libxml2
```
## Result Collection
```
python3 sailr_cegir/collect_verification_pack.py \
  --mode-root se_runs/sailr_cegir/libxml2_55980_vul \
  --output-dir verification_pack
```
------------------------------------------------------------

# Debug Run


## Clean previous artifacts
```
cd ./dataset/55980/libxml2_55980_vul
make clean
cd -
```
## Run CodeQL 
chmod +x codeql_scan.sh 

```
./codeql_scan.sh \
  PROJECT_NAME=libxml2_55980_vul \
  SRC_ROOT=./dataset/55980/libxml2_55980_vul \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false \
  TIME_PER_RULE=true
```


## Run Single Spec
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$(pwd)/dataset/62911/libxml2_62911_vul/build -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "oob-read" \
   "specs/libxml2_62911_vul/172_dict.c_541_local_cpp_cwe-125-oob-read.json" \
   "rules/stailor-queries/suites/stailor.qls"
```

## Batch mode
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$HOME/tools/klee/include" \
MAX_A=20 MAX_B=3 TIMEOUT=600 \
bash sailr_cegir/run_batch.sh \
  "62911/libxml2_62911_vul" \
  "oob-read" \
  "specs" \
  4
```
