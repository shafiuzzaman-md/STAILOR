#!/usr/bin/env python3
"""
collect_results.py

Consolidated artifact collector for STAILOR (formerly SAILR-CEGIR).
Collects:
  1. H2_BUG (Confirmed): Phase III verified witnesses (Asserts OR Crashes).
  2. H2_REACH (Validation Failed): Harnesses that reached target but failed Phase III replay.
  3. E/H0/H1 (Failures): Logs and Reasons for debugging.

Usage:
  python3 collect_results.py --mode-root se_runs/stailor_runs/... --src-root dataset/...
"""

import argparse
import json
import shutil
import csv
from pathlib import Path
from typing import Optional, Dict, Any

def safe_read_json(path: Path) -> Optional[Dict[str, Any]]:
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return None

def collect_run(spec_dir: Path, out_root: Path, src_root: Path):
    meta_path = spec_dir / "run_meta.json"
    if not meta_path.exists(): return

    meta = safe_read_json(meta_path) or {}
    status = meta.get("class", "E")
    stats = meta.get("klee", {})
    reason = stats.get("failure_reason", "Unknown")
    
    # Categorize Output Directory
    if status == "H2_BUG":
        # Confirmed via Phase III Validation
        dest_base = out_root / "verified_bugs"
    elif status == "H2_REACH":
        # Reached Target in SymEx, but Validation Failed (Likely FP)
        dest_base = out_root / "validation_failed_fp"
    else:
        dest_base = out_root / "failures" / status

    dest_dir = dest_base / spec_dir.name
    dest_dir.mkdir(parents=True, exist_ok=True)

    print(f"Collecting {spec_dir.name} -> {dest_base.name}")

    # --- 1. Metadata & Logs ---
    shutil.copy2(meta_path, dest_dir / "run_meta.json")
    
    # Collect main execution log (Contains Phase III Replay output)
    if (spec_dir / "execution.log").exists():
        shutil.copy2(spec_dir / "execution.log", dest_dir / "execution.log")

    # [NEW] Explicitly look for separate replay logs if you implemented them
    if (spec_dir / "replay_validation.log").exists():
        shutil.copy2(spec_dir / "replay_validation.log", dest_dir / "replay_validation.log")
    
    (dest_dir / "result_info.txt").write_text(f"Status: {status}\nReason: {reason}\n")

    # --- 2. Context (Spec & Source) ---
    ctx_dir = spec_dir / "ctx"
    if ctx_dir.exists():
        shutil.copytree(ctx_dir, dest_dir / "ctx", dirs_exist_ok=True)
        # Attempt to copy original source for comparison
        ctx_data = safe_read_json(ctx_dir / "context.json")
        if ctx_data and "vul_file" in ctx_data:
            src_file = src_root / ctx_data["vul_file"]
            if src_file.exists():
                shutil.copy2(src_file, dest_dir / f"original_{src_file.name}")

    # --- 3. Artifacts (Harness & KLEE) ---
    harness_dir = spec_dir / "refinement" / "harness"
    if harness_dir.exists():
        if (harness_dir / "harness.c").exists():
            shutil.copy2(harness_dir / "harness.c", dest_dir / "harness.c")
    
    # Collect KLEE crash files
    logs_dir = spec_dir / "refinement" / "logs"
    if logs_dir.exists():
        # [UPDATED] Robust Witness Collection
        for err_file in logs_dir.glob("**/*.err"):
            should_copy = False
            
            # Case 1: H2_BUG (Confirmed)
            if status == "H2_BUG":
                # We now accept BOTH Assertions (Logic) AND Ptr Errors (SegFaults)
                # The previous script excluded .ptr.err, which is wrong for your new policy.
                if "assert.err" in err_file.name or "ptr.err" in err_file.name:
                    should_copy = True

            # Case 2: H2_REACH (FP/Unverified) or other failures
            # Collect everything to help debug why it failed validation
            else:
                should_copy = True

            if should_copy:
                shutil.copy2(err_file, dest_dir / err_file.name)
                # Find matching ktest (Input Witness)
                # Matches: test000001.assert.err -> test000001.ktest
                stem = err_file.name.split('.')[0] 
                ktest = err_file.parent / f"{stem}.ktest"
                if ktest.exists():
                    shutil.copy2(ktest, dest_dir / ktest.name)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode-root", required=True, help="Path to STAILOR results directory")
    parser.add_argument("--src-root", required=True, help="Path to source code root")
    parser.add_argument("--out-dir", default="stailor_report_pack", help="Output directory")
    args = parser.parse_args()

    mode_root = Path(args.mode_root)
    src_root = Path(args.src_root)
    out_dir = Path(args.out_dir)

    if out_dir.exists(): shutil.rmtree(out_dir)
    out_dir.mkdir(parents=True)

    summary_rows = []

    for spec_dir in mode_root.iterdir():
        if spec_dir.is_dir() and (spec_dir / "run_meta.json").exists():
            collect_run(spec_dir, out_dir, src_root)
            
            meta = safe_read_json(spec_dir / "run_meta.json")
            status = meta.get("class", "E")
            reason = meta.get("klee", {}).get("failure_reason", "Unknown")
            summary_rows.append([spec_dir.name, status, reason])

    # Write aggregate CSV
    with open(out_dir / "summary_report.csv", "w") as f:
        writer = csv.writer(f)
        writer.writerow(["Spec", "Status", "Reason"])
        writer.writerows(summary_rows)

    print(f"\n[✓] STAILOR Collection Complete. Artifacts in: {out_dir}")
    print(f"    - verified_bugs/: Confirmed via Phase III Validation (H2_BUG)")
    print(f"    - validation_failed_fp/: SymEx worked, but Replay failed (H2_REACH)")
    print(f"    - failures/: Cases needing refinement")

if __name__ == "__main__":
    main()