python3 eval_scripts/collect_unique_metrics.py --root ./se_runs --out ./metrics


python3 eval_scripts/format_cybergym_data.py \
  --data-root cybergym_data \
  --output cybergym_data.csv

python3 eval_scripts/generate_final_report.py \
  --runs-root se_runs/sailr_cegir \
  --src-root dataset \
  --ground-truth cybergym_data.csv \
  --output-dir final_report_v1