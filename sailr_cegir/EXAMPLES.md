
# Run Single Spec

```
chmod +x sailr_cegir/run_worker.sh

SA_OUT_DIR=sa_outputs \
DATASET_ROOT=$(pwd)/dataset \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I/home/shafi/tools/klee/include" \
MAX_A=30 MAX_B=3 TIMEOUT=600 \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "oob-read" \
   "specs/libxml2_62911_vul/025_dict.c_541_local_cpp_length-misuse.json" \
   "rules/oob-pack/queries/LengthMisuse.ql"
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