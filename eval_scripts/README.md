# Evaluation

## Collect unique_Entrypoints and Unique_Targets
```
python3 eval_scripts/collect_unique_metrics.py --root ./se_runs --out ./metrics
```
## Ground Truth (Known Vulns)
```
python3 eval_scripts/format_cybergym_data.py \
  --data-root cybergym_data \
  --output cybergym_data.csv
```
## Vuln report with confirmed bug list 
```
python3 eval_scripts/generate_final_report.py \
  --runs-root se_runs/sailr_cegir \
  --src-root dataset/55980/libxml2_55980_vul \
  --output-dir ./final_report_pack \
  --ground-truth cybergym_data.csv
```
## OSS-FUZZ
```
python3 eval_scripts/oss_fuzz_prep.py \
  --runs-root se_runs/sailr_cegir \
  --output-dir ./final_report_pack
```
```
chmod +x eval_scripts/verify_bug.sh
# 1. List available bugs to verify
ls -d ./final_report_pack/oss_fuzz_prep/*/

# 2. Run verification on one of them
./eval_scripts/verify_bug.sh ./final_report_pack/oss_fuzz_prep/libxml2_55980_vul_446_parser.c_12080_local_cpp_cwe-125-cursor-lookahead-missing-bytes-check/
```

## Run Full Verifcation
```
cd eval_scripts
git clone https://gitlab.gnome.org/GNOME/libxml2.git libxml2-source
chmod +x eval_scripts/run_full_verification.sh
./eval_scripts/run_full_verification.sh -m remote
./run_full_verification.sh -m proxy
./run_full_verification.sh -m server
```

## Generate crash reports
chmod +x eval_scripts/generate_crash_report.py
./eval_scripts/generate_crash_report.py --output-dir ./final_report_pack