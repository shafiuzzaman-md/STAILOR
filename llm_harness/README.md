
chmod +x llm_harness/generate_llm_entry_driver.sh

LLM_MODEL=deepseek-chat \
LLM_API_BASE=https://api.deepseek.com \
LLM_CLI="python3 tools/call_llm.py" \
llm_harness/generate_llm_entry_driver.sh \
  --project-name libxml2 \
  --src-root    dataset/libxml2_62911_vul \
  --out-driver  drivers/llm_entry/libxml2_llm_entry.c


LLM_MODEL=deepseek-chat \
LLM_API_BASE=https://api.deepseek.com \
LLM_CLI="python3 tools/call_llm.py" \
llm_harness/run_llm_libxml2.sh \
  --src-root   dataset/libxml2_62911_vul \
  --driver     drivers/llm_entry/libxml2_llm_entry.c \
  --out-dir    se_runs/llm_entry/libxml2 \
  --clang      clang-14 \
  --klee       klee \
  --clang-flags "-I/usr/include/libxml2" \
  --klee-flags "--search=nurs:covnew --max-time=3600" \
  --gen-script llm_harness/generate_llm_entry_driver.sh

