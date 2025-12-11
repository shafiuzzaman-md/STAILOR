#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
aggregate_sailr_cegir_results.py

Post-hoc aggregator for SAILR-CEGIR runs.

- Expects a MODE_ROOT directory, e.g.:
    se_runs/sailr_cegir/libxml2_62911_vul

- Inside MODE_ROOT:
    - summary.tsv (written by run_sailr_cegir_batch.sh / run_agent_for_spec.py)
    - One subdir per spec_stem:
        MODE_ROOT/<SPEC_STEM>/run_meta.json

Outputs:
  1) A human-readable table on stdout.
  2) A top-level summary of class counts and BUG/REACH assertion hits.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import List, Dict, Any


def read_summary(summary_path: Path) -> List[Dict[str, Any]]:
    """
    Read summary.tsv and return a list of rows:
      [
        {
          "spec_stem": ...,
          "class": ...,
          "completed_paths": int,
          "time_sec": float,
        },
        ...
      ]
    """
    rows: List[Dict[str, Any]] = []
    if not summary_path.exists():
        raise FileNotFoundError(f"summary.tsv not found at: {summary_path}")

    with summary_path.open("r", encoding="utf-8") as f:
        lines = [ln.strip() for ln in f if ln.strip()]

    if not lines:
        return rows

    header = lines[0].split("\t")
    # Expect: spec_stem\tclass\tcompleted_paths\ttime_sec
    for ln in lines[1:]:
        parts = ln.split("\t")
        if len(parts) < 4:
            continue
        spec_stem, cls, paths_s, time_s = parts[:4]
        try:
            paths = int(paths_s)
        except ValueError:
            paths = 0
        try:
            t = float(time_s)
        except ValueError:
            t = 0.0

        rows.append(
            {
                "spec_stem": spec_stem,
                "class": cls,
                "completed_paths": paths,
                "time_sec": t,
            }
        )
    return rows


def load_run_meta(spec_dir: Path) -> Dict[str, Any] | None:
    """
    Load run_meta.json from a spec directory, if present.
    """
    meta_path = spec_dir / "run_meta.json"
    if not meta_path.exists():
        return None
    try:
        with meta_path.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception as e:
        print(f"[!] Failed to parse {meta_path}: {e}")
        return None


def fmt_table(headers: List[str], rows: List[List[str]]) -> str:
    """
    Pretty-print a simple table with aligned columns.
    headers: list of column names
    rows: list of row lists (already converted to strings)
    """
    # Compute width per column based on both headers and rows
    widths = [len(h) for h in headers]
    for row in rows:
        for i, cell in enumerate(row):
            widths[i] = max(widths[i], len(cell))

    def _fmt_row(cells: List[str]) -> str:
        return "  " + " | ".join(cells[i].ljust(widths[i]) for i in range(len(cells)))

    lines = []
    lines.append(_fmt_row(headers))
    lines.append("  " + "-+-".join("-" * w for w in widths))
    for r in rows:
        lines.append(_fmt_row(r))
    return "\n".join(lines)


def aggregate(mode_root: Path) -> None:
    """
    Aggregate over a SAILR-CEGIR mode root (e.g. se_runs/sailr_cegir/libxml2_62911_vul).
    """
    summary_path = mode_root / "summary.tsv"
    summary_rows = read_summary(summary_path)

    if not summary_rows:
        print(f"[i] No rows in {summary_path}; nothing to aggregate.")
        return

    # Aggregate structures
    class_counts: Dict[str, int] = {}
    bug_assert_total = 0
    reach_assert_total = 0

    table_rows: List[List[str]] = []

    for row in summary_rows:
        spec_stem = row["spec_stem"]
        cls = row["class"]
        completed_paths = row["completed_paths"]
        time_sec = row["time_sec"]

        class_counts[cls] = class_counts.get(cls, 0) + 1

        spec_dir = mode_root / spec_stem
        meta = load_run_meta(spec_dir)

        bug_hit = False
        reach_hit = False
        klee_status = "not_run"

        if meta is not None:
            klee_meta = meta.get("klee", {})
            bug_hit = bool(klee_meta.get("bug_assert_hit", False))
            reach_hit = bool(klee_meta.get("reach_assert_hit", False))
            klee_status = str(klee_meta.get("status", "unknown"))

        if bug_hit:
            bug_assert_total += 1
        if reach_hit:
            reach_assert_total += 1

        table_rows.append(
            [
                spec_stem,
                cls,
                klee_status,
                "1" if bug_hit else "0",
                "1" if reach_hit else "0",
                str(completed_paths),
                f"{time_sec:.3f}",
            ]
        )

    # Print detailed table
    headers = [
        "spec_stem",
        "class",
        "klee_status",
        "BUG_ASSERT",
        "REACH_ASSERT",
        "completed_paths",
        "time_sec",
    ]
    print("\n=== SAILR-CEGIR Per-Spec Results ===")
    print(fmt_table(headers, table_rows))

    # Top-level summary
    total_specs = sum(class_counts.values())
    h2_count = class_counts.get("H2", 0)
    h1_count = class_counts.get("H1", 0)
    h0_count = class_counts.get("H0", 0)
    e_count = class_counts.get("E", 0)

    print("\n=== Aggregate Summary ===")
    print(f"Mode root        : {mode_root}")
    print(f"Total specs      : {total_specs}")
    print(f"Class H2 (any)   : {h2_count}")
    print(f"Class H1         : {h1_count}")
    print(f"Class H0         : {h0_count}")
    print(f"Class E          : {e_count}")
    if total_specs > 0:
        print(f"H2 rate          : {h2_count}/{total_specs} = {h2_count/total_specs:.3f}")
    print(f"BUG_ASSERT hits  : {bug_assert_total}")
    print(f"REACH_ASSERT hits: {reach_assert_total}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--mode-root",
        required=True,
        help="SAILR-CEGIR mode root, e.g. se_runs/sailr_cegir/libxml2_62911_vul",
    )
    args = ap.parse_args()
    mode_root = Path(args.mode_root)
    if not mode_root.exists():
        raise SystemExit(f"[!] mode-root does not exist: {mode_root}")
    aggregate(mode_root)


if __name__ == "__main__":
    main()
