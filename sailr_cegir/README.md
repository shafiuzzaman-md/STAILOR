

```
chmod +x sailr_cegir/run_sailr_cegir_batch.sh
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
LLM_MODEL=deepseek-chat \
LLM_API_BASE=https://api.deepseek.com \
CLANG_FLAGS="-I/usr/include/libxml2" \
KLEE_FLAGS="--search=nurs:covnew --max-time=3600 --external-calls=all" \
MAX_A=8 \
MAX_B=12 \
TIMEOUT=120 \
bash sailr_cegir/run_sailr_cegir_batch.sh \
  62911/libxml2_62911_vul \
  local.oob.memfunc.length-misuse \
  specs

python3 sailr_cegir/aggregate_sailr_cegir_results.py \
  --mode-root se_runs/sailr_cegir/libxml2_62911_vul \
  --out-tsv   se_runs/sailr_cegir/libxml2_62911_vul/summary.tsv

```


