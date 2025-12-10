#!/usr/bin/env python3
# aggregate_sa_llm_results.py
#
# Recompute aggregate stats for SA + LLM Harness + SE from:
#   - summary.tsv      (per-spec rows, written during the batch)
#   - llm_usage.tsv    (or a custom path via --llm-usage-log)
#
# Outputs in MODE_ROOT:
#   - counts.tsv        : single row, spreadsheet-friendly (E/HO/H1/H2/Vul/VulnAsserts/FP/...)
#   - counts.csv        : same as above, CSV
#   - summary_agg.tsv   : one project-level aggregate row, with richer breakdown
#   - summary_agg.csv   : same as above, CSV
#   - summary_agg.html  : HTML table with the aggregate row
#
# Plus: pretty-prints a summary table + stats to stdout.

import argparse
from pathlib import Path
import csv
import html


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--mode-root",
        required=True,
        help="Directory containing summary.tsv, e.g. se_runs/sa_llm/libxml2_62911_vul",
    )
    ap.add_argument(
        "--llm-usage-log",
        default="llm_usage.tsv",
        help="Path to llm_usage.tsv (default: llm_usage.tsv in CWD)",
    )
    return ap.parse_args()


def safe_int(x, default=0):
    try:
        return int(x)
    except Exception:
        return default


def main() -> None:
    args = parse_args()
    mode_root = Path(args.mode_root)
    summary_tsv = mode_root / "summary.tsv"
    counts_tsv = mode_root / "counts.tsv"
    counts_csv = mode_root / "counts.csv"
    summary_agg_tsv = mode_root / "summary_agg.tsv"
    summary_agg_csv = mode_root / "summary_agg.csv"
    summary_agg_html = mode_root / "summary_agg.html"

    if not summary_tsv.is_file():
        raise SystemExit(f"[ERR] summary.tsv not found at {summary_tsv}")

    # ---- Aggregate over summary.tsv ----
    count_E = count_H0 = count_H1 = count_H2 = 0
    count_Vul_specs = 0          # # specs where num_vuln_assert > 0
    sum_VulnAsserts = 0          # total number of vuln assertion triggers across specs
    count_FP = 0                 # placeholder
    total_time = 0
    attempt = 0
    num_timeout = 0
    count_timed = 0

    # NEW reach-related and breakdown counters
    count_Reach_specs = 0        # # specs where num_reach_assert > 0
    sum_ReachAsserts = 0         # total reach assertion triggers
    count_Vul_only = 0           # specs with vuln>0, reach==0
    count_Reach_only = 0         # specs with vuln==0, reach>0
    count_Vul_and_Reach = 0      # specs with vuln>0, reach>0

    col_idx = {}

    with summary_tsv.open(newline="", encoding="utf-8") as f:
        reader = csv.reader(f, delimiter="\t")
        header = next(reader, None)
        if not header:
            raise SystemExit(f"[ERR] Empty summary.tsv at {summary_tsv}")

        # Expected columns (order can vary, we look up by name):
        # SPEC_ID, duration_seconds, harness_status, has_klee_last,
        # num_err_files, num_vuln_assert, num_reach_assert, timeout_flag
        for i, name in enumerate(header):
            col_idx[name] = i

        for row in reader:
            if not row or len(row) < len(header):
                continue
            attempt += 1

            duration = safe_int(row[col_idx.get("duration_seconds", 1)])
            status = row[col_idx.get("harness_status", 2)]
            num_vuln = safe_int(row[col_idx.get("num_vuln_assert", 5)])
            num_reach = safe_int(row[col_idx.get("num_reach_assert", 6)])
            timeout_flag = safe_int(row[col_idx.get("timeout_flag", 7)])

            # Class counts
            if status == "E":
                count_E += 1
            elif status == "H0":
                count_H0 += 1
                total_time += duration
            elif status == "H1":
                count_H1 += 1
                total_time += duration
            elif status == "H2":
                count_H2 += 1
                total_time += duration
            else:
                # Unknown status; treat like E
                count_E += 1

            # Vuln statistics
            if num_vuln > 0:
                count_Vul_specs += 1
            sum_VulnAsserts += num_vuln

            # Reach statistics
            if num_reach > 0:
                count_Reach_specs += 1
            sum_ReachAsserts += num_reach

            # Joint breakdown
            if num_vuln > 0 and num_reach == 0:
                count_Vul_only += 1
            elif num_vuln == 0 and num_reach > 0:
                count_Reach_only += 1
            elif num_vuln > 0 and num_reach > 0:
                count_Vul_and_Reach += 1

            # Timeout statistics
            if timeout_flag:
                num_timeout += 1
            if status in ("H1", "H2"):
                count_timed += 1

    # ---- Aggregate llm_usage.tsv ----
    llm_log = Path(args.llm_usage_log)
    prompt_tok = comp_tok = total_tok = 0
    if llm_log.is_file():
        with llm_log.open(newline="", encoding="utf-8") as f:
            reader = csv.reader(f, delimiter="\t")
            header = next(reader, None)
            # timestamp, model, spec_id, call_id, attempt, prompt_tokens, completion_tokens, total_tokens
            if header and len(header) >= 8:
                for row in reader:
                    if len(row) < 8:
                        continue
                    prompt_tok += safe_int(row[5])
                    comp_tok += safe_int(row[6])
                    total_tok += safe_int(row[7])

    # ---- Build aggregate row objects ----

    # counts.tsv / counts.csv: keep relatively compact, just add VulnAsserts
    counts_headers = [
        "E",
        "HO",
        "H1",
        "H2",
        "Vul",           # # specs with num_vuln_assert > 0
        "VulnAsserts",   # total # of vuln assertion triggers across specs
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

    # For summary_agg we add richer breakdown, including reach stats
    project_name = mode_root.name
    mode_name = mode_root.parent.name if mode_root.parent.name else ""

    # Averages (guard against division by zero)
    avg_vuln_per_pos = (sum_VulnAsserts / count_Vul_specs) if count_Vul_specs > 0 else 0.0
    avg_reach_per_pos = (sum_ReachAsserts / count_Reach_specs) if count_Reach_specs > 0 else 0.0

    summary_headers = [
        "MODE",
        "PROJECT",
        "attempt",
        "E",
        "H0",
        "H1",
        "H2",
        "Vul",
        "VulnAsserts",
        "ReachSpecs",
        "ReachAsserts",
        "VulOnlySpecs",
        "ReachOnlySpecs",
        "VulAndReachSpecs",
        "FP",
        "time(s)",
        "prompt_tokens",
        "completion_tokens",
        "total_tokens",
        "timeouts",
        "timed_specs",
        "AvgVulnPerPos",
        "AvgReachPerPos",
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

    # ---- Write counts.tsv ----
    with counts_tsv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(counts_headers)
        writer.writerow(counts_row)

    # ---- Write counts.csv ----
    with counts_csv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(counts_headers)
        writer.writerow(counts_row)

    # ---- Write summary_agg.tsv ----
    with summary_agg_tsv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(summary_headers)
        writer.writerow(summary_row)

    # ---- Write summary_agg.csv ----
    with summary_agg_csv.open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(summary_headers)
        writer.writerow(summary_row)

    # ---- Write HTML summary ----
    with summary_agg_html.open("w", encoding="utf-8") as f:
        f.write("<html><head><meta charset='utf-8'><title>SA+LLM Aggregate</title></head><body>\n")
        f.write("<h2>SA+LLM Harness Aggregate</h2>\n")
        f.write("<table border='1' cellspacing='0' cellpadding='4'>\n")
        f.write("<tr>")
        for h in summary_headers:
            f.write(f"<th>{html.escape(str(h))}</th>")
        f.write("</tr>\n<tr>")
        for val in summary_row:
            f.write(f"<td>{html.escape(str(val))}</td>")
        f.write("</tr>\n</table>\n</body></html>\n")

    # ---- Pretty-print to stdout (compact counts view) ----
    col_widths = [max(len(str(h)), len(str(v))) for h, v in zip(counts_headers, counts_row)]

    def fmt_row(values):
        return "  " + "  ".join(str(v).rjust(w) for v, w in zip(values, col_widths))

    print("[aggregate] SA+LLM Harness summary (counts view)")
    print(fmt_row(counts_headers))
    print(fmt_row(counts_row))
    print(
        f"\n[aggregate] Wrote:\n"
        f"  {counts_tsv}\n"
        f"  {counts_csv}\n"
        f"  {summary_agg_tsv}\n"
        f"  {summary_agg_csv}\n"
        f"  {summary_agg_html}\n"
    )


if __name__ == "__main__":
    main()
