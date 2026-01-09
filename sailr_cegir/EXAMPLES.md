## Dataset
dataset snapshot under ./dataset/.

Extract target project source (e.g., from CyberGym):
```
python3 extract_from_cybergym.py arvo:62911 libxml2
```


# Run CodeQL 
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
  ALSO_CPP=false \
  TIME_PER_RULE=true
```




# Run Single Spec

# 1. clean environment
unset KLEE_FLAGS
unset KLEE_TRACE

# 2. Enable the fix for undefined symbols
export ENABLE_KLEE_POSIX=1

# 3. Run
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$(pwd)/dataset/62911/libxml2_62911_vul/build -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=120 \
bash sailr_cegir/run_worker.sh \
    "62911/libxml2_62911_vul" \
    "oob-read" \
    "specs/libxml2_62911_vul/174_dict.c_541_local_cpp_cwe-125-oob-read.json" \
    "rules/stailor-queries/suites/stailor.qls"


# Batch mode
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

bash sailr_cegir/run_stailor.sh 55980/libxml2_55980_vul oob-read


