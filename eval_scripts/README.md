python3 eval_scripts/collect_unique_metrics.py --root ./se_runs --out ./metrics


python3 eval_scripts/format_cybergym_data.py \
  --data-root cybergym_data \
  --output cybergym_data.csv

python3 eval_scripts/generate_final_report.py \
  --runs-root se_runs/sailr_cegir \
  --src-root dataset \
  --ground-truth cybergym_data.csv \
  --output-dir reports/final_report_v1

python3 eval_scripts/generate_final_report.py \
  --runs-root se_runs \
  --src-root dataset/62911/libxml2_62911_vul \
  --output-dir ./final_report_pack \
  --ground-truth cybergym_data.csv


chmod +x verify_bug.sh
# 1. List available bugs to verify
ls -d ./final_report_pack/oss_fuzz_prep/*/

# 2. Run verification on one of them
./verify_bug.sh ./final_report_pack/oss_fuzz_prep/libxml2_001_SAX2_cwe_120/