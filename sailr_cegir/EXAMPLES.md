# Run Single Spec

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

# Usage: python3 sailr_cegir/resume_batch.py <PROJECT_ID> <THREADS>
python3 sailr_cegir/resume_batch.py 62911/libxml2_62911_vul 4