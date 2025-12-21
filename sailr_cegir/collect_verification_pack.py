#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
collect_verification_pack.py

Precise verification pack generator.
Collects artifacts ONLY from the 'klee-last' directory of the successful try.

STRICT MODE:
  - Only considers a run successful if it produced an ASSERTION error (*.assert.err).
  - Ignores generic memory errors (*.ptr.err) or external errors (*.external.err) 
    to filter out harness noise.

Items collected:
  1. Metadata: run_meta.json, spec.json
  2. Context: vul_snippet_annotated.txt, execution.log
  3. Proof: harness.c
  4. Original Source: Copied from --src-root
  5. Witness: bug.assert.err (message) and bug.kquery (constraints).

Usage:
  python3 collect_verification_pack.py \
    --mode-root se_runs/sailr_cegir/libxml2_vul \
    --src-root /path/to/libxml2-source \
    --out-dir verification_pack
"""

from __future__ import annotations

import argparse
import json
import shutil
import sys
from pathlib import Path
from typing import Dict, Any, Optional, Tuple

# -----------------------------
# Helpers
# -----------------------------

def safe_read_json(path: Path) -> Optional[Dict[str, Any]]:
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return None

def safe_copy(src: Path, dest: Path) -> None:
    if not src.exists():
        return
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dest)

def _try_index(try_dir: Path) -> int:
    name = try_dir.name
    if name.startswith("try_"):
        try:
            return int(name.split("_", 1)[1])
        except Exception:
            return -1
    return -1

def find_best_try_dir(spec_dir: Path) -> Optional[Path]:
    """
    Identifies the 'winning' try directory.
    Strict Priority:
      1. Contains an ASSERTION error (*.assert.err) in klee-last
      2. Exists (fallback if no assertions found)
    """
    tries = [d for d in spec_dir.iterdir() if d.is_dir() and d.name.startswith("try_")]
    if not tries:
        return spec_dir if (spec_dir / "harness").exists() else None

    tries.sort(key=_try_index)
    
    best_try = tries[-1]
    priority = 0

    for t in tries:
        # Check standard layout for existence of ASSERTION error
        candidates = [t / "harness" / "klee-last", t / "klee-last"]
        
        found_assert = False
        for kl in candidates:
            # STRICT: Look only for *.assert.err
            if kl.exists() and list(kl.glob("*.assert.err")):
                found_assert = True
                break
        
        # Priority 2: Contains .assert.err (True Positive Bug)
        # Priority 1: Just exists
        current_p = 2 if found_assert else 1
        
        if current_p >= priority:
            priority = current_p
            best_try = t

    return best_try

def find_klee_artifacts_strict(try_dir: Path) -> Tuple[Optional[Path], Optional[Path]]:
    """
    STRICTLY locates *.assert.err artifacts in 'klee-last'.
    Returns: (err_path, kquery_path)
    """
    # 1. Identify the klee-last location
    potential_roots = [try_dir / "harness" / "klee-last", try_dir / "klee-last"]
    
    target_dir = None
    for p in potential_roots:
        if p.exists() and p.is_dir():
            target_dir = p
            break
            
    if not target_dir:
        return (None, None)

    # 2. Find the .assert.err file
    # We strictly filter for assertions to avoid collecting segfaults/ptr errors
    err_files = list(target_dir.glob("*.assert.err"))
    
    if not err_files:
        return (None, None)
    
    # Take the first assertion error
    target_err = err_files[0]
    
    # 3. Find the matching .kquery file
    # Format: test000001.assert.err -> test000001.kquery
    base_name = target_err.name.split('.')[0] # "test000001"
    kquery = target_dir / f"{base_name}.kquery"
    
    return (target_err, kquery if kquery.exists() else None)

# -----------------------------
# Collector
# -----------------------------

def collect_verification_pack(
    mode_root: Path,
    out_root: Path,
    src_root: Path,
    bugs_only: bool = True
) -> int:
    if out_root.exists():
        shutil.rmtree(out_root)
    out_root.mkdir(parents=True, exist_ok=True)

    collected = 0

    for spec_dir in sorted(mode_root.iterdir()):
        if not spec_dir.is_dir(): continue
        
        meta_path = spec_dir / "run_meta.json"
        if not meta_path.exists(): continue
        
        meta = safe_read_json(meta_path)
        if not meta: continue

        cls = meta.get("class", "E")
        is_bug = cls == "H2"
        
        if bugs_only and not is_bug:
            continue

        dest_dir = out_root / spec_dir.name
        dest_dir.mkdir(parents=True, exist_ok=True)
        print(f"Processing {spec_dir.name} ({cls})...")

        # 1. Metadata & Context
        safe_copy(meta_path, dest_dir / "run_meta.json")
        safe_copy(spec_dir / "ctx/spec.json", dest_dir / "spec.json")
        safe_copy(spec_dir / "ctx/vul_snippet_annotated.txt", dest_dir / "vul_snippet_annotated.txt")
        safe_copy(spec_dir / "execution.log", dest_dir / "execution.log")

        # 2. Identify Best Try
        best_try = find_best_try_dir(spec_dir)
        if not best_try:
            print(f"  [!] No valid try directory found for {spec_dir.name}")
            continue

        # 3. Harness
        harness_c = best_try / "harness" / "harness.c"
        if not harness_c.exists(): harness_c = best_try / "harness.c"
        if harness_c.exists():
            safe_copy(harness_c, dest_dir / "harness.c")
        else:
            print(f"  [!] Harness not found in {best_try}")

        # 4. KLEE Artifacts (Strict Assert Check)
        err_file, kquery_file = find_klee_artifacts_strict(best_try)
        
        if err_file:
            safe_copy(err_file, dest_dir / "bug.assert.err")
            # Extract single-line message
            try:
                msg = err_file.read_text().splitlines()[0]
                (dest_dir / "bug_message.txt").write_text(msg)
            except: pass
        else:
            print(f"  [!] No *.assert.err found in klee-last for {best_try.name}")
            # If explicit request for bug but no assert file, we might skip kquery too
            
        if kquery_file:
            safe_copy(kquery_file, dest_dir / "bug.kquery")
        
        # 5. Original Source File
        ctx_json_path = spec_dir / "ctx/context.json"
        if ctx_json_path.exists():
            ctx_data = safe_read_json(ctx_json_path)
            if ctx_data and "vul_file" in ctx_data:
                rel_path = ctx_data["vul_file"]
                src_candidate = src_root / rel_path
                
                # Fallback search
                if not src_candidate.exists():
                    found_files = list(src_root.rglob(Path(rel_path).name))
                    if found_files:
                        src_candidate = min(found_files, key=lambda p: len(str(p)))

                if src_candidate.exists():
                    safe_copy(src_candidate, dest_dir / f"original_{src_candidate.name}")
                else:
                    print(f"  [!] Original source not found: {rel_path}")

        collected += 1

    return collected

# -----------------------------
# Main
# -----------------------------

def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode-root", required=True, help="Path to SAILR-CEGIR results")
    parser.add_argument("--src-root", required=True, help="Path to original project source root")
    parser.add_argument("--out-dir", default="verification_pack")
    parser.add_argument("--all", action="store_true", help="Collect ALL results, not just bugs")
    args = parser.parse_args()

    mode_root = Path(args.mode_root)
    src_root = Path(args.src_root)
    out_dir = Path(args.out_dir)
    
    if not out_dir.is_absolute():
        out_dir = mode_root / out_dir

    if not src_root.exists():
        print(f"Error: Source root not found: {src_root}")
        sys.exit(1)

    print(f"[=] Collecting verification pack (Strict *.assert.err)...")
    count = collect_verification_pack(
        mode_root, 
        out_dir, 
        src_root,
        bugs_only=not args.all
    )
    print(f"[=] Done. Collected {count} packs into {out_dir}")

if __name__ == "__main__":
    main()