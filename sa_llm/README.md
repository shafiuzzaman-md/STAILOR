
```
chmod +x sa_llm/run_sa_llm_batch.sh
export DEEPSEEK_API_KEY="sk-"
PYTHONPATH=. sa_llm/run_sa_llm_batch.sh \
  --project-name libxml2_62911_vul \
  --src-root     dataset/libxml2_62911_vul \
  --spec-dir     specs/libxml2_62911_vul \
  --out-root     se_runs \
  --clang        clang-14 \
  --klee         klee \
  --clang-flags  "-I. -I/usr/include/libxml2 -Isa_manual -include sa_manual/sailr_assert.h -Ise_runs" \
  --klee-flags   "--search=nurs:covnew --max-time=3600" \
  --jobs         8

python3 sa_llm/aggregate_sa_llm_results.py \
  --mode-root se_runs/sa_llm/libxml2_62911_vul \
  --llm-usage-log llm_usage.tsv

```