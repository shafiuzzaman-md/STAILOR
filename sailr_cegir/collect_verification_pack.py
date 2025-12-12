#!/usr/bin/env python3
"""
collect_verification_pack.py

A strict artifact collector that:
1. Scans DIRECTORIES (ignoring summary.tsv) to ensure no bugs are missed.
2. COLLECTS ONLY CONFIRMED BUGS (ignores simple reachability).
3. Gathers traces, inputs, context, and harnesses for manual verification.
"""

import argparse
import shutil
import json
import sys
from pathlib import Path

def parse_args():
    parser = argparse.ArgumentParser(description="Strictly collect SAILR-CEGIR bug artifacts.")
    parser.add_argument("--mode-root", required=True, help="Root dir (e.g. se_runs/sailr_cegir/libxml2_62911_vul)")
    parser.add_argument("--out-dir", default="verification_pack", help="Output directory")
    return parser.parse_args()

def safe_copy(src: Path, dest: Path):
    if src.exists():
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dest)

def get_klee_dirs(spec_path: Path):
    """Finds klee-last or klee-out-N directories."""
    candidates = [
        spec_path / "harness" / "klee-last",
        spec_path / "harness" / "klee-out-0"
    ]
    harness_dir = spec_path / "harness"
    if harness_dir.exists():
        candidates.extend(harness_dir.glob("klee-out-*"))
    
    return [d for d in candidates if d.exists() and d.is_dir()]

def main():
    args = parse_args()
    mode_root = Path(args.mode_root)
    out_root = Path(args.out_dir)

    if not mode_root.exists():
        print(f"[!] Source root not found: {mode_root}")
        sys.exit(1)

    if out_root.exists():
        print(f"[-] Cleaning existing output: {out_root}")
        shutil.rmtree(out_root)
    out_root.mkdir(parents=True)

    print(f"[*] Scanning directories in {mode_root}...")
    
    found_count = 0
    
    for spec_dir in sorted(mode_root.iterdir()):
        if not spec_dir.is_dir():
            continue

        meta_path = spec_dir / "run_meta.json"
        if not meta_path.exists():
            continue

        try:
            meta = json.loads(meta_path.read_text(encoding='utf-8'))
            klee = meta.get("klee", {})
            
            # --- STRICT FILTER: BUGS ONLY ---
            # We explicitly ignore 'reach_assert_hit' here.
            is_bug = klee.get("bug_assert_hit", False) or (klee.get("status") == "assertion_bug")
            
            if not is_bug:
                continue

            print(f"  [+] Found BUG: {spec_dir.name}")
            found_count += 1

            # --- COLLECTION LOGIC ---
            dest_dir = out_root / spec_dir.name
            dest_dir.mkdir()

            # 1. Context & Specs
            safe_copy(spec_dir / "ctx/vul_snippet_annotated.txt", dest_dir / "source_context.txt")
            safe_copy(spec_dir / "ctx/spec.json", dest_dir / "spec.json")
            safe_copy(spec_dir / "run_meta.json", dest_dir / "run_meta.json")

            # 2. The Harness
            safe_copy(spec_dir / "harness/harness.c", dest_dir / "harness.c") 
            if not (dest_dir / "harness.c").exists():
                # Fallback search if harness.c isn't in the standard spot
                harness_candidates = list(spec_dir.glob("**/harness.c"))
                if harness_candidates:
                    safe_copy(harness_candidates[0], dest_dir / "harness.c")

            # 3. Traces & Inputs
            trace_dir = dest_dir / "traces"
            klee_dirs = get_klee_dirs(spec_dir)
            
            for k_dir in klee_dirs:
                # Copy .err files (Only copy traces that match errors)
                for err in k_dir.glob("*.err"):
                    safe_copy(err, trace_dir / err.name)
                    # Find matching .ktest
                    stem = err.name.split('.')[0]
                    ktest = k_dir / f"{stem}.ktest"
                    if ktest.exists():
                        safe_copy(ktest, trace_dir / ktest.name)

            # 4. Logs
            log_dir = dest_dir / "logs"
            log_srcs = sorted(list((spec_dir / "logs").glob("*.stderr.txt")))
            if log_srcs:
                safe_copy(log_srcs[-1], log_dir / "last_run.stderr.txt")

        except Exception as e:
            print(f"  [!] Error reading {spec_dir.name}: {e}")
            continue

    print(f"\n[✓] Done. Collected {found_count} confirmed bugs to: {out_root.resolve()}")

if __name__ == "__main__":
    main()