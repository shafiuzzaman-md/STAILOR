#!/usr/bin/env python3
"""
summarize_results.py

Collect SAILR and baseline metrics into a single CSV table.

Assumed layout:

  out/<PROJECT_NAME>/<SPEC_ID>/final_summary.json
  se_runs/<PROJECT_NAME>/<MODE>/<SPEC_ID>/summary.json

Where MODE ∈ {manual_entry, sa_manual, llm_entry, sa_llm}.
"""

import argparse
import csv
import json
from pathlib import Path
from typing import Dict, Any, List


def load_json(path: Path) -> Dict[str, Any]:
    with path.open("r") as f:
        return json.load(f)


def collect_sailr_rows(project: str, sailr_out: Path) -> List[Dict[str, Any]]:
    rows: List[Dict[str, Any]] = []
    root = sailr_out / project
    if not root.is_dir():
        return rows

    for spec_dir in sorted(root.iterdir()):
        if not spec_dir.is_dir():
            continue
        summary_path = spec_dir / "final_summary.json"
        if not summary_path.is_file():
            continue
        data = load_json(summary_path)

        rows.append({
            "project": data.get("project", project),
            "spec_id": data.get("spec_id", spec_dir.name),
            "mode": "sailr",
            "reached": data.get("reached"),
            "detected": data.get("detected"),
            "false_positive": data.get("false_positive"),
            "klee_time_sec": data.get("klee_time_sec"),
            "llm_iterations": data.get("llm_iterations", data.get("iterations", None)),
        })

    return rows


def collect_baseline_rows(project: str, se_root: Path) -> List[Dict[str, Any]]:
    rows: List[Dict[str, Any]] = []
    root = se_root / project
    if not root.is_dir():
        return rows

    for mode_dir in sorted(root.iterdir()):
        if not mode_dir.is_dir():
            continue
        mode = mode_dir.name  # manual_entry / sa_manual / llm_entry / sa_llm
        for spec_dir in sorted(mode_dir.iterdir()):
            if not spec_dir.is_dir():
                continue
            summary_path = spec_dir / "summary.json"
            if not summary_path.is_file():
                continue
            data = load_json(summary_path)
            rows.append({
                "project": data.get("project", project),
                "spec_id": data.get("spec_id", spec_dir.name),
                "mode": data.get("mode", mode),
                "reached": data.get("reached"),
                "detected": data.get("detected"),
                "false_positive": data.get("false_positive"),
                "klee_time_sec": data.get("klee_time_sec"),
                # baselines are single-shot; default 1
                "llm_iterations": data.get("llm_iterations", 1),
            })

    return rows


def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--project-name", required=True,
                  help="Project name, e.g., libxml2_62911_vul")
    p.add_argument("--sailr-out", default="out",
                  help="Root dir for SAILR runs (default: out)")
    p.add_argument("--se-root", default="se_runs",
                  help="Root dir for baseline SE runs (default: se_runs)")
    p.add_argument("--out-csv", required=True,
                  help="Output CSV file path")
    args = p.parse_args()

    sailr_out = Path(args.sailr_out)
    se_root = Path(args.se_root)

    rows: List[Dict[str, Any]] = []
    rows.extend(collect_sailr_rows(args.project_name, sailr_out))
    rows.extend(collect_baseline_rows(args.project_name, se_root))

    # Stable column order
    fieldnames = [
        "project",
        "spec_id",
        "mode",
        "reached",
        "detected",
        "false_positive",
        "klee_time_sec",
        "llm_iterations",
    ]

    out_path = Path(args.out_csv)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    with out_path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for row in sorted(rows, key=lambda r: (r["spec_id"], r["mode"])):
            writer.writerow(row)

    print(f"[ok] Wrote {len(rows)} rows to {out_path}")


if __name__ == "__main__":
    main()
