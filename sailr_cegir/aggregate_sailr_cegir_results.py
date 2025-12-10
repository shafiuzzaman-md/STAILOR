#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
aggregate_sailr_cegir_results.py

Aggregate SAILR-CEGIR per-spec results into a TSV.

Classification:

  E  - build failure (no working bitcode, SE never started)
  H0 - SE ran, terminated before timeout, no KLEE assertion fired
  H1 - SE ran, timed out (max-time exceeded), no assertion fired
  H2 - SE triggered at least one KLEE assertion error

Usage:
  python3 sailr_cegir/aggregate_sailr_cegir_results.py \
      --mode-root se_runs/sailr_cegir/libxml2_62911_vul \
      --out-tsv  se_runs/sailr_cegir/libxml2_62911_vul/summary_full.tsv
"""

import argparse
import json
from pathlib import Path
from typing import Dict, Any, List


def load_meta(path: Path) -> Dict[str, Any] | None:
    try:
        with path.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception:
        return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mode-root", required=True,
                    help="Root directory for SAILR-CEGIR runs, e.g. se_runs/sailr_cegir/libxml2_62911_vul")
    ap.add_argument("--out-tsv", required=True,
                    help="Output TSV path")
    args = ap.parse_args()

    mode_root = Path(args.mode_root)
    out_tsv = Path(args.out_tsv)
    rows: List[str] = []

    # Header
    header_cols = [
        "spec_stem",
        "class",
        "completed_paths",
        "klee_time_sec",
        "build_iters",
        "klee_iters",
        "klee_status",
    ]
    rows.append("\t".join(header_cols))

    if not mode_root.exists():
        raise SystemExit(f"[!] Mode root not found: {mode_root}")

    for spec_dir in sorted(mode_root.iterdir()):
        if not spec_dir.is_dir():
            continue
        meta_path = spec_dir / "run_meta.json"
        meta = load_meta(meta_path)
        if not meta:
            continue

        stem = meta.get("spec_stem", spec_dir.name)
        klass = meta.get("class", "E")

        klee = meta.get("klee", {}) or {}
        build = meta.get("build", {}) or {}

        completed_paths = klee.get("completed_paths", 0)
        klee_time = klee.get("time_sec", 0.0)
        build_iters = build.get("iterations", 0)
        klee_iters = klee.get("iterations", 0)
        klee_status = klee.get("status", "not_run")

        cols = [
            stem,
            klass,
            str(completed_paths),
            f"{klee_time:.3f}",
            str(build_iters),
            str(klee_iters),
            klee_status,
        ]
        rows.append("\t".join(cols))

    out_tsv.parent.mkdir(parents=True, exist_ok=True)
    out_tsv.write_text("\n".join(rows) + "\n", encoding="utf-8")
    print(f"[✓] Wrote {len(rows)-1} row(s) to {out_tsv}")


if __name__ == "__main__":
    main()
