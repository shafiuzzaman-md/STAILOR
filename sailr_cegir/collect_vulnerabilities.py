#!/usr/bin/env python3
import argparse
import csv
import shutil
import json
import os
import glob
from pathlib import Path

def parse_args():
    parser = argparse.ArgumentParser(
        description="Collect vulnerable specs and deep verification traces from SA+LLM or SAILR-CEGIR runs."
    )
    parser.add_argument(
        "--mode-root",
        required=True,
        help="Directory containing summary.tsv (e.g. se_runs/sailr_cegir/libxml2_62911_vul)",
    )
    parser.add_argument(
        "--output-dir",
        default="collected_vulnerabilities",
        help="Directory to save collected artifacts (created inside mode-root)",
    )
    return parser.parse_args()

def get_trace_artifacts(spec_path: Path):
    """
    Scans the spec directory for KLEE error files, test cases, and logs.
    Returns a list of Path objects to copy.
    """
    artifacts = []
    
    if not spec_path.exists():
        return artifacts

    # 1. Essential Logs
    artifacts.extend(spec_path.glob("run_meta.json"))
    artifacts.extend(spec_path.glob("run.log"))
    artifacts.extend(spec_path.glob("log.txt"))
    artifacts.extend(spec_path.glob("messages.txt"))
    artifacts.extend(spec_path.glob("warnings.txt"))

    # 2. Source Code (useful for context)
    artifacts.extend(spec_path.glob("*.c"))
    artifacts.extend(spec_path.glob("*.i"))

    # 3. KLEE Error Traces (*.err) and matching Test Cases (*.ktest)
    # Common KLEE error extensions: .ptr.err, .assert.err, .abort.err, .free.err, .div.err
    error_files = list(spec_path.glob("*.err"))
    artifacts.extend(error_files)

    # For every error file (e.g., test000001.ptr.err), try to find test000001.ktest
    for err_file in error_files:
        stem = err_file.name.split('.')[0] # e.g. "test000001"
        ktest = spec_path / f"{stem}.ktest"
        if ktest.exists():
            artifacts.append(ktest)
            
    # 4. If no specific error file is found but it was flagged vulnerable, 
    #    copy ALL .ktest files (precautionary, though can be noisy)
    if not error_files:
        artifacts.extend(spec_path.glob("*.ktest"))

    return artifacts

def check_is_vulnerable(row, mode_root, headers):
    """
    Determines if a row represents a vulnerability.
    Returns (spec_id, is_vuln, path_to_spec_dir).
    """
    spec_id = None
    is_vuln = False
    spec_path = None

    # Strategy 1: SA+LLM format
    if "num_vuln_assert" in headers:
        spec_id = row[0] 
        try:
            if int(row[headers["num_vuln_assert"]]) > 0:
                is_vuln = True
        except ValueError:
            pass
        spec_path = mode_root / spec_id

    # Strategy 2: SAILR-CEGIR format
    elif "spec_stem" in headers:
        spec_id = row[headers["spec_stem"]]
        spec_path = mode_root / spec_id
        meta_path = spec_path / "run_meta.json"
        
        if meta_path.exists():
            try:
                with open(meta_path, 'r') as f:
                    meta = json.load(f)
                    klee_meta = meta.get("klee", {})
                    if klee_meta.get("bug_assert_hit", False):
                        is_vuln = True
                    elif int(klee_meta.get("num_vuln_assert", 0)) > 0:
                        is_vuln = True
            except Exception:
                pass

    return spec_id, is_vuln, spec_path

def main():
    args = parse_args()
    mode_root = Path(args.mode_root)
    summary_tsv = mode_root / "summary.tsv"
    
    if not summary_tsv.exists():
        print(f"[Error] summary.tsv not found in {mode_root}")
        return

    # Setup output directory
    out_dir_path = mode_root / args.output_dir
    if out_dir_path.exists():
        shutil.rmtree(out_dir_path)
    out_dir_path.mkdir(exist_ok=True)
    
    vuln_list = []
    print(f"[*] Scanning {summary_tsv} for vulnerabilities...")

    with open(summary_tsv, 'r', newline='', encoding='utf-8') as f:
        reader = csv.reader(f, delimiter='\t')
        header_row = next(reader, None)
        
        if not header_row:
            print("[Error] Empty summary.tsv")
            return

        headers = {name: i for i, name in enumerate(header_row)}

        for row in reader:
            if not row: continue
            
            spec_id, is_vuln, spec_path = check_is_vulnerable(row, mode_root, headers)
            
            if is_vuln and spec_path and spec_path.exists():
                print(f"  [+] Collecting traces for: {spec_id}")
                vuln_list.append(spec_id)
                
                spec_out_dir = out_dir_path / spec_id
                spec_out_dir.mkdir(parents=True, exist_ok=True)
                
                # Retrieve expanded list of artifacts
                artifacts = get_trace_artifacts(spec_path)
                
                for src in artifacts:
                    if src.exists():
                        # Preserve name, overwrite if exists
                        shutil.copy2(src, spec_out_dir / src.name)

    # Write summary CSV
    outfile = mode_root / "vulnerabilities.csv"
    with open(outfile, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(["spec_id", "status", "artifacts_collected"])
        for v in vuln_list:
            writer.writerow([v, "VULNERABLE", "YES"])

    print(f"\n[*] Complete.")
    print(f"    Total Vulnerabilities: {len(vuln_list)}")
    print(f"    Artifacts saved to:    {out_dir_path}")

if __name__ == "__main__":
    main()