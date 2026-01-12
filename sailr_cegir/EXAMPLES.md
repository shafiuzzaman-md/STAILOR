




# Dataset
dataset snapshot under ./dataset/.

Extract target project source (e.g., from CyberGym):

1. python3 extract_from_cybergym.py arvo:62911 libxml2

2. python3 extract_from_cybergym.py arvo:55980 libxml2

3. python3 extract_from_cybergym.py arvo:66502 libxml2

# Pipeline
1. bash sailr_cegir/run_stailor.sh 62911/libxml2_62911_vul
2. bash sailr_cegir/run_stailor.sh 55980/libxml2_55980_vul

## Clean previous artifacts
```
cd ./dataset/55980/libxml2_55980_vul
make clean
cd -
```
# Run CodeQL 
chmod +x codeql_scan.sh 

1. 

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
2. 
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

3. 
```
./codeql_scan.sh \
  PROJECT_NAME=libxml2_66502_vul \
  SRC_ROOT=./dataset/66502/libxml2_66502_vul \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false \
  TIME_PER_RULE=true
```

4. 
```
./codeql_scan.sh \
  PROJECT_NAME=libxml2 \
  SRC_ROOT=./dataset/libxml2 \
  BUILD_CMD="./build.sh" \
  QUERY_SUITES="rules/stailor-queries/suites/stailor.qls" \
  CONTEXT_LINES=5 \
  ALSO_CPP=false \
  TIME_PER_RULE=true
```

# Run Single Spec
1. 
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

2. 
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$(pwd)/dataset/62911/libxml2_62911_vul/build -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "unbounded-write" \
   "specs/libxml2_62911_vul/000_xmlmemory.c_484_cpp_unbounded-write.json" \
   "rules/stailor-queries/suites/stailor.qls"
```
3.
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$(pwd)/dataset/62911/libxml2_62911_vul/build -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "unbounded-write" \
   "specs/libxml2_62911_vul/018_encoding.c_1128_local_cpp_cwe-120-overflow.json" \
   "rules/stailor-queries/suites/stailor.qls"
```

3.
```
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/libxml2/include -I$(pwd)/dataset/libxml2/build -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "unbounded-write" \
   "specs/libxml2_62911_vul/018_encoding.c_1128_local_cpp_cwe-120-overflow.json" \
   "rules/stailor-queries/suites/stailor.qls"
```
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


