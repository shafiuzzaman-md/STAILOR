python3 eval_scripts/collect_unique_metrics.py --root ./se_runs --out ./metrics

python3 eval_scripts/format_cybergym_data.py \
  --data-root cybergym_data \
  --output cybergym_data.csv

-------
python3 eval_scripts/generate_report.py \
  --runs-root se_runs/sailr_cegir \
  --src-root dataset/libxml2 \
  --output-dir ./final_report_pack \
  --ground-truth cybergym_data.csv


chmod +x eval_scripts/verify_bug.sh
# 1. List available bugs to verify
ls -d ./final_report_pack/oss_fuzz_prep/*/

# 2. Run verification on one of them
./eval_scripts/verify_bug.sh ./final_report_pack/oss_fuzz_prep/libxml2_001_SAX2.c_2579_local_cpp_cwe-120-overflow/

-----------------------------------------
cd eval_scripts
git clone https://gitlab.gnome.org/GNOME/libxml2.git libxml2-source
chmod +x eval_scripts/run_full_verification.sh
./eval_scripts/run_full_verification.sh -m remote
./run_full_verification.sh -m proxy
./run_full_verification.sh -m server
--------------------------------

chmod +x eval_scripts/generate_crash_report.py
./eval_scripts/generate_crash_report.py --output-dir ./final_report_pack