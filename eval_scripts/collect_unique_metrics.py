#!/usr/bin/env python3
import json
import csv
import argparse
import re
from pathlib import Path
from collections import defaultdict

def normalize_target(raw_target, spec_id):
    """
    Cleans up messy target strings like 'line 327' or 'func (line 328)' 
    into a standard 'file.c:line' format.
    """
    t = raw_target.strip()
    
    # 1. Try to find existing 'file.c:line' pattern
    match_standard = re.search(r'([a-zA-Z0-9_\-\.]+\.c):(\d+)', t)
    if match_standard:
        return f"{match_standard.group(1)}:{match_standard.group(2)}"

    # 2. Handle 'line 123' or '(line 123)' cases
    # We need to infer the filename from the Spec ID (e.g., '001_c14n.c_299_...')
    match_line = re.search(r'line\s*(\d+)', t, re.IGNORECASE)
    if match_line:
        line_num = match_line.group(1)
        # Extract filename from Spec ID
        # Spec ID format usually: ID_filename.c_line_...
        parts = spec_id.split('_')
        for part in parts:
            if part.endswith('.c'):
                return f"{part}:{line_num}"
    
    # 3. Last Resort: Parse filename/line from Spec ID itself
    # If the target is completely garbage (e.g. "if"), trust the Spec ID.
    parts = spec_id.split('_')
    if len(parts) >= 3 and parts[1].endswith('.c') and parts[2].isdigit():
        return f"{parts[1]}:{parts[2]}"

    return t  # Return raw if all else fails

def collect_metrics(runs_root, out_dir):
    runs_path = Path(runs_root).resolve()
    out_path = Path(out_dir).resolve()
    out_path.mkdir(parents=True, exist_ok=True)
    
    print(f"[*] Scanning {runs_path}...")

    # Data Structure: 
    # project_data[project] = { (entrypoint, normalized_target): [list_of_spec_ids] }
    project_data = defaultdict(lambda: defaultdict(list))
    
    # 1. Walk the directory tree
    for plan_file in runs_path.rglob("frozen_plan.json"):
        try:
            # Path: .../<project>/<spec>/frozen_analysis/frozen_plan.json
            spec_dir = plan_file.parent.parent
            spec_id = spec_dir.name
            project_id = spec_dir.parent.name
            
            with open(plan_file, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # A. Extract Entrypoint
            ep_raw = data.get("entrypoint", {}).get("name", "UNKNOWN")
            
            # B. Extract Raw Target
            target_raw = "UNKNOWN"
            assertions = data.get("assertions", [])
            for a in assertions:
                if a.get("id") == "BUG_ASSERT" or a.get("kind") == "bug":
                    target_raw = a.get("placement_target", "UNKNOWN")
                    break
            
            # C. Normalize
            final_target = normalize_target(target_raw, spec_id)
            
            # Store
            project_data[project_id][(ep_raw, final_target)].append(spec_id)
            
        except Exception:
            pass

    # 2. Generate Output
    summary_stats = []

    print(f"\n[*] Generating detailed reports in: {out_path}")

    for project, pair_map in project_data.items():
        # csv file for this project
        csv_path = out_path / f"{project}_entrypoitnt.csv"
        
        # Prepare rows
        rows = []
        unique_eps = set()
        unique_targets = set()
        
        for (ep, tgt), specs in pair_map.items():
            unique_eps.add(ep)
            unique_targets.add(tgt)
            
            # Join specs with semicolon for the "Review" column
            spec_list_str = "; ".join(sorted(specs))
            
            # Flag suspicious entrypoints
            notes = ""
            if ep in ["if", "UNKNOWN", "return", "else"]:
                notes = "Check Planner (Hallucination)"
            
            rows.append({
                "Entrypoint": ep,
                "SA_Vuln": tgt,
                "Count": len(specs),
                "Review_Spec_IDs": spec_list_str,
                "Notes": notes
            })
        
        # Sort by Entrypoint
        rows.sort(key=lambda x: x["Entrypoint"])
        
        # Write CSV
        with open(csv_path, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=["Entrypoint", "SA_Vuln", "Count", "Review_Spec_IDs", "Notes"])
            writer.writeheader()
            writer.writerows(rows)
            
        print(f"    - Created {csv_path.name}")
        
        summary_stats.append({
            "Project": project,
            "Unique_Pairs": len(rows),
            "Unique_Entrypoints": len(unique_eps),
            "Unique_Targets": len(unique_targets)
        })

    # 3. Summary
    sum_path = out_path / "entrypoint_summary.csv"
    with open(sum_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=["Project", "Unique_Pairs", "Unique_Entrypoints", "Unique_Targets"])
        writer.writeheader()
        writer.writerows(summary_stats)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", required=True)
    parser.add_argument("--out", default="entrypoitnt_target_reports")
    args = parser.parse_args()
    
    collect_metrics(args.root, args.out)