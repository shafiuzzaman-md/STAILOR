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
    - (Optional) llm_usage.tsv for token counting

Outputs:
  1) A human-readable table on stdout.
  2) A top-level summary of class counts and BUG/REACH assertion hits.
  3) Aggregate files compatible with SA+LLM formats:
     - counts.tsv / .csv
     - summary_agg.tsv / .csv
     - summary_agg.html
"""

from __future__ import annotations

import argparse
import json
import csv
import html
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
        # Fallback if file doesn't exist, we just return empty
        return rows

    with summary_path.open("r", encoding="utf-8") as f:
        lines = [ln.strip() for ln in f if ln.strip()]

    if not lines:
        return rows

    # Skip header if it looks like a header
    start_idx = 0
    if "spec_stem" in lines[0]:
        start_idx = 1

    for ln in lines[start_idx:]:
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
            if i < len(widths):
                widths[i] = max(widths[i], len(cell))

    def _fmt_row(cells: List[str]) -> str:
        return "  " + " | ".join(cells[i].ljust(widths[i]) for i in range(len(cells)))

    lines = []
    lines.append(_fmt_row(headers))
    lines.append("  " + "-+-".join("-" * w for w in widths))
    for r in rows:
        lines.append(_fmt_row(r))
    return "\n".join(lines)


def aggregate(mode_root: Path, llm_usage_log: Path | None = None) -> None:
    """
    Aggregate over a SAILR-CEGIR mode root (e.g. se_runs/sailr_cegir/libxml2_62911_vul).
    Also produces standard aggregation files (counts.tsv, summary_agg.tsv, etc.).
    """
    summary_path = mode_root / "summary.tsv"
    if not summary_path.exists():
        print(f"[i] No summary.tsv found at {summary_path}")
        return

    summary_rows = read_summary(summary_path)

    if not summary_rows:
        print(f"[i] No rows in {summary_path}; nothing to aggregate.")
        return

    # 1. Internal Accumulators for detailed table & logic
    class_counts: Dict[str, int] = {}
    bug_assert_total = 0
    reach_assert_total = 0
    table_rows: List[List[str]] = []

    # 2. Accumulators for standardized SA_LLM outputs
    count_E = 0
    count_H0 = 0
    count_H1 = 0
    count_H2 = 0
    count_Vul_specs = 0
    sum_VulnAsserts = 0
    sum_ReachAsserts = 0
    count_Reach_specs = 0
    count_Vul_only = 0
    count_Reach_only = 0
    count_Vul_and_Reach = 0
    total_time = 0.0
    attempt = 0
    count_FP = 0  # Placeholder, SAILR typically doesn't track FPs here automatically
    num_timeout = 0
    count_timed = 0

    for row in summary_rows:
        spec_stem = row["spec_stem"]
        cls = row["class"]
        completed_paths = row["completed_paths"]
        time_sec = row["time_sec"]

        # Basic Stats
        attempt += 1
        total_time += time_sec
        class_counts[cls] = class_counts.get(cls, 0) + 1

        # Class Buckets
        if cls == "E":
            count_E += 1
        elif cls == "H0":
            count_H0 += 1
            count_timed += 1  # Often considered 'timed' if it ran to completion/timeout
        elif cls == "H1":
            count_H1 += 1
            count_timed += 1
        elif cls == "H2":
            count_H2 += 1
            count_timed += 1
        else:
            # Treat unknown as E
            count_E += 1

        # Meta loading
        spec_dir = mode_root / spec_stem
        meta = load_run_meta(spec_dir)

        bug_hit = False
        reach_hit = False
        klee_status = "not_run"

        num_vuln = 0
        num_reach = 0

        if meta is not None:
            klee_meta = meta.get("klee", {})
            # Some runners use 'bug_assert_hit' (bool) or 'num_vuln_assert' (int)
            # We try to support both.
            if "num_vuln_assert" in klee_meta:
                num_vuln = int(klee_meta["num_vuln_assert"])
                bug_hit = num_vuln > 0
            else:
                bug_hit = bool(klee_meta.get("bug_assert_hit", False))
                num_vuln = 1 if bug_hit else 0

            if "num_reach_assert" in klee_meta:
                num_reach = int(klee_meta["num_reach_assert"])
                reach_hit = num_reach > 0
            else:
                reach_hit = bool(klee_meta.get("reach_assert_hit", False))
                num_reach = 1 if reach_hit else 0

            klee_status = str(klee_meta.get("status", "unknown"))

        # Detailed Table Stats
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

        # Standard Agg Stats
        sum_VulnAsserts += num_vuln
        sum_ReachAsserts += num_reach

        if num_vuln > 0:
            count_Vul_specs += 1
        if num_reach > 0:
            count_Reach_specs += 1

        if num_vuln > 0 and num_reach == 0:
            count_Vul_only += 1
        elif num_vuln == 0 and num_reach > 0:
            count_Reach_only += 1
        elif num_vuln > 0 and num_reach > 0:
            count_Vul_and_Reach += 1

    # ---- 3. Token Counting (if log exists) ----
    prompt_tok = 0
    comp_tok = 0
    total_tok = 0

    # Determine LLM log path
    target_llm_log = llm_usage_log if llm_usage_log else (mode_root / "llm_usage.tsv")
    
    if target_llm_log and target_llm_log.exists():
        try:
            with target_llm_log.open("r", encoding="utf-8") as f:
                reader = csv.reader(f, delimiter="\t")
                header = next(reader, None)
                # Expecting: ... prompt_tokens, completion_tokens, total_tokens at indices 5,6,7
                if header and len(header) >= 8:
                    for row in reader:
                        if len(row) < 8:
                            continue
                        try:
                            prompt_tok += int(row[5])
                            comp_tok += int(row[6])
                            total_tok += int(row[7])
                        except ValueError:
                            pass
        except Exception:
            # If token parsing fails, just ignore
            pass

    # ---- 4. Print Detailed Table (Existing Functionality) ----
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

    # Top-level summary (Stdout)
    total_specs = attempt
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

    # ---- 5. Write Standard Integration Files ----
    # File Paths
    counts_tsv = mode_root / "counts.tsv"
    counts_csv = mode_root / "counts.csv"
    summary_agg_tsv = mode_root / "summary_agg.tsv"
    summary_agg_csv = mode_root / "summary_agg.csv"
    summary_agg_html = mode_root / "summary_agg.html"

    # Data Construction
    counts_headers = [
        "E",
        "HO",  # Note: Keeping 'HO' to match reference format exactly
        "H1",
        "H2",
        "Vul",
        "VulnAsserts",
        "FP",
        "time(s)",
        "attempt",
        "prompt_tokens",
        "completion_tokens",
        "total_tokens",
    ]
    counts_row = [
        count_E,
        count_H0,
        count_H1,
        count_H2,
        count_Vul_specs,
        sum_VulnAsserts,
        count_FP,
        total_time,
        attempt,
        prompt_tok,
        comp_tok,
        total_tok,
    ]

    project_name = mode_root.name
    mode_name = mode_root.parent.name if mode_root.parent.name else ""
    
    avg_vuln_per_pos = (sum_VulnAsserts / count_Vul_specs) if count_Vul_specs > 0 else 0.0
    avg_reach_per_pos = (sum_ReachAsserts / count_Reach_specs) if count_Reach_specs > 0 else 0.0

    summary_headers = [
        "MODE", "PROJECT", "attempt", "E", "H0", "H1", "H2",
        "Vul", "VulnAsserts", "ReachSpecs", "ReachAsserts",
        "VulOnlySpecs", "ReachOnlySpecs", "VulAndReachSpecs",
        "FP", "time(s)", "prompt_tokens", "completion_tokens", "total_tokens",
        "timeouts", "timed_specs", "AvgVulnPerPos", "AvgReachPerPos",
    ]
    summary_row = [
        mode_name,
        project_name,
        attempt,
        count_E,
        count_H0,
        count_H1,
        count_H2,
        count_Vul_specs,
        sum_VulnAsserts,
        count_Reach_specs,
        sum_ReachAsserts,
        count_Vul_only,
        count_Reach_only,
        count_Vul_and_Reach,
        count_FP,
        total_time,
        prompt_tok,
        comp_tok,
        total_tok,
        num_timeout,
        count_timed,
        round(avg_vuln_per_pos, 4),
        round(avg_reach_per_pos, 4),
    ]

    # Writing operations
    # counts.tsv
    with counts_tsv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(counts_headers)
        writer.writerow(counts_row)

    # counts.csv
    with counts_csv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(counts_headers)
        writer.writerow(counts_row)

    # summary_agg.tsv
    with summary_agg_tsv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(summary_headers)
        writer.writerow(summary_row)

    # summary_agg.csv
    with summary_agg_csv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(summary_headers)
        writer.writerow(summary_row)

    # summary_agg.html
    with summary_agg_html.open("w", encoding="utf-8") as f:
        f.write("<html><head><meta charset='utf-8'><title>SAILR-CEGIR Aggregate</title></head><body>\n")
        f.write("<h2>SAILR-CEGIR Aggregate</h2>\n")
        f.write("<table border='1' cellspacing='0' cellpadding='4'>\n")
        f.write("<tr>")
        for h in summary_headers:
            f.write(f"<th>{html.escape(str(h))}</th>")
        f.write("</tr>\n<tr>")
        for val in summary_row:
            f.write(f"<td>{html.escape(str(val))}</td>")
        f.write("</tr>\n</table>\n</body></html>\n")

    print(
        f"\n[aggregate] Wrote standard formats:\n"
        f"  {counts_tsv}\n"
        f"  {counts_csv}\n"
        f"  {summary_agg_tsv}\n"
        f"  {summary_agg_csv}\n"
        f"  {summary_agg_html}\n"
    )


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--mode-root",
        required=True,
        help="SAILR-CEGIR mode root, e.g. se_runs/sailr_cegir/libxml2_62911_vul",
    )
    ap.add_argument(
        "--llm-usage-log",
        help="Path to llm_usage.tsv (optional, for token counting integration)",
    )
    args = ap.parse_args()
    mode_root = Path(args.mode_root)
    if not mode_root.exists():
        raise SystemExit(f"[!] mode-root does not exist: {mode_root}")
    
    llm_log = Path(args.llm_usage_log) if args.llm_usage_log else None
    aggregate(mode_root, llm_usage_log=llm_log)


if __name__ == "__main__":
    main()