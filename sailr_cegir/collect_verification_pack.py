#!/usr/bin/env python3
import argparse
import csv
import shutil
import json
import os
from pathlib import Path

def parse_args():
    parser = argparse.ArgumentParser(
        description="Collect artifacts for confirmed vulnerabilities from SAILR-CEGIR runs."
    )
    parser.add_argument(
        "--mode-root",
        required=True,
        help="Directory containing summary.tsv (e.g. se_runs/sailr_cegir/libxml2_62911_vul)",
    )
    parser.add_argument(
        "--output-dir",
        default="collected_verification_pack",
        help="Directory to save collected artifacts (created inside mode-root)",
    )
    return parser.parse_args()

def get_trace_artifacts(spec_path: Path):
    """
    Scans the spec directory for KLEE error files, test cases, and logs.
    Updated to support the 'refinement/' directory structure.
    """
    artifacts = []
    
    if not spec_path.exists():
        return artifacts

    # --- 1. Top Level Metadata ---
    artifacts.extend(spec_path.glob("run_meta.json"))
    artifacts.extend(spec_path.glob("execution.log"))
    artifacts.extend(spec_path.glob("reproduction_success.txt"))
    artifacts.extend(spec_path.glob("reproduction_model.txt"))

    # --- 2. Frozen Analysis (The Plan) ---
    frozen_dir = spec_path / "frozen_analysis"
    if frozen_dir.exists():
        artifacts.extend(frozen_dir.glob("frozen_plan.json"))

    # --- 3. Refinement Harness ---
    harness_dir = spec_path / "refinement" / "harness"
    if harness_dir.exists():
        artifacts.extend(harness_dir.glob("harness.c"))

    # --- 4. KLEE Logs & Test Cases ---
    # Located in refinement/logs/klee-out-N/
    logs_dir = spec_path / "refinement" / "logs"
    if logs_dir.exists():
        # Find all error files in all klee-out directories
        for klee_out in logs_dir.glob("klee-out-*"):
            # Look for critical error files
            found_err = False
            for ext in ["*.ptr.err", "*.assert.err", "*.abort.err", "*.free.err", "*.div.err", "*.overflow.err"]:
                for err_file in klee_out.glob(ext):
                    artifacts.append(err_file)
                    found_err = True
                    
                    # Try to find the matching .ktest (e.g., test000001.ptr.err -> test000001.ktest)
                    stem = err_file.name.split('.')[0]
                    ktest = klee_out / f"{stem}.ktest"
                    if ktest.exists():
                        artifacts.append(ktest)

            # If no specific error file, but this directory marks a crash, grab all ktests (just in case)
            if not found_err:
                artifacts.extend(klee_out.glob("*.ktest"))

    return artifacts

def check_is_vulnerable(row, mode_root, headers):
    """
    Determines if a row represents a vulnerability using run_meta.json.
    """
    spec_id = None
    is_vuln = False
    status = "UNKNOWN"

    # Robust Spec ID Extraction: Default to Column 0
    if headers and "spec_stem" in headers:
        spec_id = row[headers["spec_stem"]]
    else:
        spec_id = row[0] # Fallback

    if not spec_id:
        return None, False, "INVALID"

    spec_path = mode_root / spec_id
    meta_path = spec_path / "run_meta.json"
    
    if meta_path.exists():
        try:
            with open(meta_path, 'r') as f:
                meta = json.load(f)
                
                # Check 1: The High-Level Class (Set by pipeline logic)
                run_class = meta.get("class", "")
                
                # These statuses indicate the pipeline believes it found a bug
                vuln_statuses = [
                    "H2_BUG_CONFIRMED", 
                    "H2_BUG_CONFIRMED_MODEL",
                    "H2_BUG_SPEC", 
                    "H2_BUG_WEAK",
                    "H2_BUG_OPPORTUNISTIC"
                ]
                
                if any(run_class.startswith(s) for s in vuln_statuses):
                    is_vuln = True
                    status = run_class
                
                # Check 2: Fallback to KLEE stats if class is missing
                elif not run_class:
                    klee_stats = meta.get("klee", {})
                    if klee_stats.get("bug_found") or klee_stats.get("bug_assert_hit"):
                        is_vuln = True
                        status = "BUG_FOUND_RAW"

        except Exception as e:
            print(f"Error reading meta for {spec_id}: {e}")
            pass

    return spec_id, is_vuln, status

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
    
    vuln_count = 0
    print(f"[*] Scanning {summary_tsv} for vulnerabilities...")

    with open(summary_tsv, 'r', newline='', encoding='utf-8') as f:
        reader = csv.reader(f, delimiter='\t')
        
        # Heuristic: Read first line to check if it's a header
        first_row = next(reader, None)
        if not first_row:
            return

        headers = None
        rows_to_process = []

        # Check if first row looks like a header (e.g. "spec_stem", "status")
        if "spec_stem" in first_row or "FinalStatus" in first_row:
            headers = {name: i for i, name in enumerate(first_row)}
        else:
            rows_to_process.append(first_row) # It's data

        # Read the rest
        for row in reader:
            rows_to_process.append(row)

        for row in rows_to_process:
            if not row: continue
            
            spec_id, is_vuln, status = check_is_vulnerable(row, mode_root, headers)
            
            if is_vuln:
                print(f"  [+] Found {status}: {spec_id}")
                vuln_count += 1
                
                spec_path = mode_root / spec_id
                spec_out_dir = out_dir_path / spec_id
                spec_out_dir.mkdir(parents=True, exist_ok=True)
                
                # Retrieve expanded list of artifacts
                artifacts = get_trace_artifacts(spec_path)
                
                for src in artifacts:
                    if src.exists():
                        # Preserve relative structure for logs, flatten for root files?
                        # Simplest approach: Flatten everything into the collection folder
                        # but handle name collisions if necessary.
                        dest = spec_out_dir / src.name
                        shutil.copy2(src, dest)

    # Write manifest
    outfile = out_dir_path / "manifest.csv"
    with open(outfile, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(["spec_id", "artifacts_count"])
        # (We could track this per row, but simple count is fine for now)

    print(f"\n[*] Complete.")
    print(f"    Total Vulnerabilities: {vuln_count}")
    print(f"    Artifacts saved to:    {out_dir_path}")

if __name__ == "__main__":
    main()