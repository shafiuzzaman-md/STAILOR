chmod +x manual_harness/run_manual_libxml2.sh

manual_harness/run_manual_libxml2.sh \
  --src-root   dataset/libxml2_62911_vul \
  --driver     drivers/manual_entry/libxml2_manual_entry.c \
  --out-dir    se_runs/manual_entry/libxml2 \
  --clang      clang-14 \
  --klee       klee \
  --clang-flags "-I/usr/include/libxml2" \
  --klee-flags "--search=nurs:covnew --max-time=3600"
