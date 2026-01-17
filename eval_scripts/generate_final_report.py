#!/usr/bin/env python3
import argparse
import csv
import json
import shutil
import os
import re
from pathlib import Path
from collections import defaultdict, Counter
import datetime

# --- CONFIGURATION ---
STATUS_MAP = {
    "H2_BUG_CONFIRMED": "CONFIRMED",
    "H2_BUG_CONFIRMED_MODEL": "CONFIRMED_MODEL",
    "H2_BUG_SPEC": "CANDIDATE",
    "H2_BUG_OPPORTUNISTIC": "OPPORTUNISTIC",
    "H2_BUG_WEAK": "WEAK_REPLAY",
    "H2_INVALID": "INVALID_HARNESS",
    "H2_REACH": "REACHED_ONLY",
    "H1": "TIMEOUT",
    "H0": "HARNESS_ERROR",
    "E": "SYSTEM_ERROR",
    "none": "INCOMPLETE"
}

LINE_TOLERANCE = 50

HTML_WRAPPER = """
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>STAILOR Final Report</title>
<style>
    body {{ font-family: 'Segoe UI', system-ui, sans-serif; background: #f8f9fa; color: #333; margin: 0; padding: 20px; }}
    .container {{ max-width: 1400px; margin: auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }}
    h1, h2 {{ color: #2c3e50; border-bottom: 2px solid #eaeaea; padding-bottom: 10px; }}
    table {{ width: 100%; border-collapse: collapse; margin: 20px 0; font-size: 14px; }}
    th {{ background: #f1f3f5; font-weight: 600; text-align: left; padding: 12px; border-bottom: 2px solid #dee2e6; }}
    td {{ padding: 12px; border-bottom: 1px solid #eee; }}
    tr:hover {{ background: #f8f9fa; }}
    .badge {{ padding: 4px 8px; border-radius: 4px; font-weight: bold; font-size: 0.85em; color: white; }}
    .summary-grid {{ display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin-bottom: 30px; }}
    .card {{ background: #fff; border: 1px solid #e9ecef; border-radius: 6px; padding: 20px; }}
    .card h3 {{ margin-top: 0; font-size: 1.1em; color: #6c757d; }}
    .stat-val {{ font-size: 2em; font-weight: bold; color: #2c3e50; }}
</style>
</head>
<body>
<div class="container">
    <h1>STAILOR Vulnerability Analysis Report</h1>
    <p>Generated: {date}</p>
    {content}
</div>
</body>
</html>
"""

def parse_args():
    parser = argparse.ArgumentParser(description="Generate Final Report (HTML/CSV)")
    parser.add_argument("--runs-root", required=True, help="Path to se_runs root")
    parser.add_argument("--src-root", required=False, help="Path to source root (dataset)")
    parser.add_argument("--ground-truth", help="Path to cybergym_data.csv")
    parser.add_argument("--output-dir", required=True, help="Output directory")
    return parser.parse_args()

def get_inferred_entrypoint(spec_dir):
    plan_path = spec_dir / "frozen_analysis" / "frozen_plan.json"
    if plan_path.exists():
        try:
            data = json.loads(plan_path.read_text())
            if isinstance(data, dict):
                ep = data.get("entrypoint", {})
                if isinstance(ep, dict): return ep.get("name", "-")
                return str(ep)
        except: pass
    return "-"

def load_ground_truth(csv_path):
    gt = defaultdict(list)
    if not csv_path or not os.path.exists(csv_path): return gt
    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for i, row in enumerate(reader):
            r = {k.lower(): v for k, v in row.items()}
            proj = r.get('project', '')
            if proj:
                gt[proj].append({
                    'id': i, 'file': r.get('file', ''),
                    'line': int(r.get('line', '0')), 'cwe': r.get('cwe', ''),
                    'matched': False
                })
    return gt

def extract_cwe(spec_id):
    m = re.search(r"cwe-(\d+)", spec_id, re.IGNORECASE)
    return m.group(1) if m else "Other"

def extract_file_line(spec_id):
    parts = spec_id.split('_')
    filename = "unknown"
    line = "0"
    for i, p in enumerate(parts):
        if p.endswith(('.c', '.cc', '.cpp', '.h')):
            filename = p
            if i+1 < len(parts) and parts[i+1].isdigit(): line = parts[i+1]
            break
    return filename, line

def main():
    args = parse_args()
    runs_root = Path(args.runs_root)
    out_dir = Path(args.output_dir)
    
    if out_dir.exists(): shutil.rmtree(out_dir)
    out_dir.mkdir(parents=True)

    gt_db = load_ground_truth(args.ground_truth)
    
    project_rows = []
    vuln_type_stats = Counter()
    global_stats = {"Total_Specs": 0, "Total_Confirmed": 0, "Total_Candidates": 0, "Total_Time": 0.0, "Total_Tokens": 0, "GT_Known": 0, "GT_Detected": 0}

    print(f"[*] Scanning {runs_root}...")

    # Robust Root Detection
    root_items = list(runs_root.iterdir())
    has_meta = any((x / "run_meta.json").exists() for x in root_items if x.is_dir())
    scan_list = [runs_root] if has_meta else sorted([x for x in root_items if x.is_dir()])

    for project_dir in scan_list:
        pid = project_dir.name
        p_stats = {"entrypoints": 0, "confirmed": 0, "candidates": 0, "fp": 0, "harness_err": 0, "timeout": 0, "time": 0.0, "tokens": 0}
        proj_gt = gt_db.get(pid, [])
        spec_rows = []
        confirmed_vulns_rows = [] 
        
        spec_dirs = sorted([x for x in project_dir.iterdir() if x.is_dir()])
        for spec_dir in spec_dirs:
            spec_id = spec_dir.name
            meta_path = spec_dir / "run_meta.json"
            if not meta_path.exists(): continue
            
            try:
                meta = json.loads(meta_path.read_text())
                raw_status = meta.get("class", "none")
                status = STATUS_MAP.get(raw_status, raw_status)
                
                klee = meta.get("klee", {})
                tokens = meta.get("tokens", {})
                time_sec = float(meta.get("total_analysis_time", klee.get("elapsed", 0)))
                tok_cnt = int(tokens.get("total_tokens", 0))
                
                p_stats["entrypoints"] += 1
                p_stats["time"] += time_sec
                p_stats["tokens"] += tok_cnt
                
                cwe_key = extract_cwe(spec_id)
                target_file, target_line_str = extract_file_line(spec_id)
                inferred_func = get_inferred_entrypoint(spec_dir)

                if status in ["CONFIRMED", "CONFIRMED_MODEL"]:
                    p_stats["confirmed"] += 1
                    confirmed_vulns_rows.append({
                        "File": target_file, "Line": target_line_str, "Vuln_Type": f"CWE-{cwe_key}",
                        "Inferred_Entrypoint": inferred_func, "Spec_ID": spec_id
                    })
                    
                    target_line = int(target_line_str)
                    for bug in proj_gt:
                        if bug['file'] == target_file and abs(bug['line'] - target_line) <= LINE_TOLERANCE:
                            bug['matched'] = True
                    vuln_type_stats[cwe_key] += 1

                elif status == "CANDIDATE": p_stats["candidates"] += 1
                elif status == "REACHED_ONLY": p_stats["fp"] += 1
                elif status == "TIMEOUT": p_stats["timeout"] += 1
                elif status == "HARNESS_ERROR": p_stats["harness_err"] += 1
                
                spec_rows.append({
                    "Spec_ID": spec_id, "File": target_file, "Line": target_line_str,
                    "Inferred_Entrypoint": inferred_func, "Status": status, "CWE": cwe_key,
                    "Time": f"{time_sec:.1f}s", "Tokens": tok_cnt
                })
            except Exception as e: print(f"[!] Error processing {spec_id}: {e}")

        gt_total = len(proj_gt)
        gt_found = sum(1 for b in proj_gt if b['matched'])
        recall = f"{gt_found/gt_total:.1%}" if gt_total > 0 else "0%"
        precision_denom = p_stats['confirmed'] + p_stats['fp']
        precision = f"{p_stats['confirmed'] / precision_denom:.1%}" if precision_denom > 0 else "0%"

        p_row = {
            "Project": pid, "#Entrypoints": p_stats["entrypoints"], "#Confirmed": p_stats["confirmed"],
            "#Candidates": p_stats["candidates"], "#FP": p_stats["fp"], "Recall": recall, "Precision": precision,
            "Total_Time_Min": f"{p_stats['time']/60:.1f}", "#Tokens": p_stats["tokens"],
            "#Harness_Errors": p_stats["harness_err"], "#Timeouts": p_stats["timeout"]
        }
        project_rows.append(p_row)
        
        global_stats["Total_Specs"] += p_stats["entrypoints"]
        global_stats["Total_Confirmed"] += p_stats["confirmed"]
        global_stats["Total_Candidates"] += p_stats["candidates"]
        global_stats["Total_Time"] += p_stats["time"]
        global_stats["Total_Tokens"] += p_stats["tokens"]
        global_stats["GT_Known"] += gt_total
        global_stats["GT_Detected"] += gt_found

        if spec_rows:
            with open(out_dir / f"details_{pid}.csv", 'w') as f:
                writer = csv.DictWriter(f, fieldnames=["Spec_ID", "File", "Line", "Inferred_Entrypoint", "Status", "CWE", "Time", "Tokens"])
                writer.writeheader()
                writer.writerows(spec_rows)
        if confirmed_vulns_rows:
            with open(out_dir / f"confirmed_vulns_{pid}.csv", 'w') as f:
                writer = csv.DictWriter(f, fieldnames=["File", "Line", "Vuln_Type", "Inferred_Entrypoint", "Spec_ID"])
                writer.writeheader()
                writer.writerows(confirmed_vulns_rows)

    if project_rows:
        with open(out_dir / "project_summary.csv", 'w') as f:
            writer = csv.DictWriter(f, fieldnames=project_rows[0].keys())
            writer.writeheader()
            writer.writerows(project_rows)

    with open(out_dir / "vuln_type_summary.csv", 'w') as f:
        writer = csv.writer(f)
        writer.writerow(["CWE", "Count"])
        for cwe, count in vuln_type_stats.most_common():
            writer.writerow([f"CWE-{cwe}", count])

    html_content = ""
    html_content += f"""
    <div class="summary-grid">
        <div class="card"><h3>Total Specs Analyzed</h3><div class="stat-val">{global_stats['Total_Specs']}</div></div>
        <div class="card"><h3>Confirmed Vulnerabilities</h3><div class="stat-val">{global_stats['Total_Confirmed']}</div></div>
        <div class="card"><h3>Global Recall</h3><div class="stat-val">{global_stats['GT_Detected']} / {global_stats['GT_Known']}</div></div>
        <div class="card"><h3>Total Cost</h3><div class="stat-val">{global_stats['Total_Tokens']:,} toks</div></div>
        <div class="card"><h3>Total Time</h3><div class="stat-val">{global_stats['Total_Time']/60:.1f} min</div></div>
    </div>
    """
    
    if project_rows:
        rows_html = "".join([f"<tr><td>{r['Project']}</td><td>{r['#Entrypoints']}</td><td>{r['#Confirmed']}</td><td>{r['Recall']}</td><td>{r['Precision']}</td><td>{r['Total_Time_Min']} min</td></tr>" for r in project_rows])
        html_content += f"<h2>Project Breakdown</h2><table><thead><tr><th>Project</th><th>Specs</th><th>Confirmed</th><th>Recall</th><th>Precision</th><th>Time</th></tr></thead><tbody>{rows_html}</tbody></table>"

    if vuln_type_stats:
        cwe_html = "".join([f"<tr><td>CWE-{cwe}</td><td>{count}</td></tr>" for cwe, count in vuln_type_stats.most_common()])
        html_content += f"<h2>Detected Vulnerabilities by Type</h2><table><thead><tr><th>CWE Type</th><th>Count</th></tr></thead><tbody>{cwe_html}</tbody></table>"

    (out_dir / "report.html").write_text(HTML_WRAPPER.format(date=str(datetime.datetime.now()), content=html_content), encoding="utf-8")

    print(f"\n[✓] Report Generated in: {out_dir}")
    print(f"    - project_summary.csv")
    print(f"    - details_*.csv")
    print(f"    - report.html")

if __name__ == "__main__":
    main()