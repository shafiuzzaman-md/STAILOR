#!/usr/bin/env python3
# aggregate_sa_llm_results.py
#
# Recompute aggregate stats for SA + LLM Harness + SE from:
#   - summary.tsv      (per-spec rows, written during the batch)
#   - llm_usage.tsv    (or a custom path via --llm-usage-log)
#
# Outputs in MODE_ROOT:
#   - counts.tsv        : single row, spreadsheet-friendly (E/HO/H1/H2/Vul/FP/...)
#   - counts.csv        : same as above, CSV
#   - summary_agg.tsv   : one project-level aggregate row
#   - summary_agg.csv   : same as above, CSV
#   - summary_agg.html  : HTML table with the aggregate row
#
# Plus: pretty-prints a summary table + stats to stdout.

import argparse
from pathlib import Path
import csv


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
    summary_html = mode_root / "summary_agg.html"

    if not summary_tsv.is_file():
        print(f"[aggregate] No summary.tsv at {summary_tsv} yet; nothing to aggregate.")
        return

    # Infer mode + project from directory: .../<mode>/<project>
    project = mode_root.name
    mode = mode_root.parent.name if mode_root.parent.name else "sa_llm"

    # Aggregates
    count_E = count_H0 = count_H1 = count_H2 = 0
    count_Vul = count_FP = 0
    total_time = 0
    specs_timed = 0
    timeout_specs = 0
    attempt = 0

    with summary_tsv.open(newline="", encoding="utf-8") as f:
        reader = csv.DictReader(f, delimiter="\t")
        for row in reader:
            attempt += 1
            status = row.get("harness_status", "")
            duration = safe_int(row.get("duration_seconds", "0"))
            num_vul = safe_int(row.get("num_vuln_assert", "0"))
            timeout_flag = safe_int(row.get("timeout_flag", "0"))

            if status == "E":
                count_E += 1
            elif status == "H0":
                count_H0 += 1
                total_time += duration
                specs_timed += 1
            elif status == "H1":
                count_H1 += 1
                total_time += duration
                specs_timed += 1
            elif status == "H2":
                count_H2 += 1
                total_time += duration
                specs_timed += 1

            if num_vul > 0:
                count_Vul += 1

            if timeout_flag:
                timeout_specs += 1

        # FP placeholder – refine later if you have labeling
        count_FP = 0

    # LLM token usage (sums over all calls)
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

    # Common aggregate row objects
    counts_headers = [
        "E",
        "HO",
        "H1",
        "H2",
        "Vul",
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
        count_Vul,
        count_FP,
        total_time,
        attempt,
        prompt_tok,
        comp_tok,
        total_tok,
    ]

    summary_headers = [
        "mode",
        "project",
        "E",
        "HO",
        "H1",
        "H2",
        "Vul",
        "FP",
        "time(s)",
        "timeout_specs",
        "specs_timed",
        "attempt",
        "prompt_tokens",
        "completion_tokens",
        "total_tokens",
    ]
    summary_row = [
        mode,
        project,
        count_E,
        count_H0,
        count_H1,
        count_H2,
        count_Vul,
        count_FP,
        total_time,
        timeout_specs,
        specs_timed,
        attempt,
        prompt_tok,
        comp_tok,
        total_tok,
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

    # ---- Write summary_agg.html ----
    html = [
        "<!DOCTYPE html>",
        "<html>",
        "<head>",
        f"<title>SA+LLM Harness Summary - {project}</title>",
        "<meta charset='utf-8' />",
        "<style>",
        "body { font-family: sans-serif; margin: 20px; }",
        "table { border-collapse: collapse; }",
        "th, td { border: 1px solid #ccc; padding: 6px 10px; text-align: right; }",
        "th { background: #f0f0f0; }",
        "caption { text-align: left; font-weight: bold; margin-bottom: 8px; }",
        "</style>",
        "</head>",
        "<body>",
        f"<h1>SA + LLM Harness + SE Summary</h1>",
        f"<p><strong>Mode:</strong> {mode}<br>",
        f"<strong>Project:</strong> {project}</p>",
        "<table>",
        "<caption>Aggregate metrics</caption>",
        "<thead>",
        "<tr>",
    ]
    for h in summary_headers:
        html.append(f"<th>{h}</th>")
    html.extend(["</tr>", "</thead>", "<tbody>", "<tr>"])
    for v in summary_row:
        html.append(f"<td>{v}</td>")
    html.extend(["</tr>", "</tbody>", "</table>", "</body>", "</html>"])

    summary_html.write_text("\n".join(html), encoding="utf-8")

    # ---- Pretty print to stdout ----
    def pct(part, whole):
        if whole <= 0:
            return "0.0%"
        return f"{(part * 100.0 / whole):.1f}%"

    avg_time = (total_time / specs_timed) if specs_timed > 0 else 0.0
    tok_per_spec = (total_tok / attempt) if attempt > 0 else 0.0

    print("\n=== SA + LLM Harness + SE: Aggregate Summary ===")
    print(
        f"  Mode:    {mode}\n"
        f"  Project: {project}\n"
        f"  Specs attempted: {attempt}  "
        f"(timed: {specs_timed}, build/link failures E: {count_E})\n"
        f"  Total time (non-E specs): {total_time}s  "
        f"(avg {avg_time:.1f}s per timed spec)\n"
        f"  Timeout specs: {timeout_specs} ({pct(timeout_specs, attempt)} of attempts)\n"
        f"  LLM tokens: prompt={prompt_tok}, completion={comp_tok}, total={total_tok} "
        f"(~{tok_per_spec:.1f} tokens/spec)\n"
    )

    headers = counts_headers
    row_str = [str(v) for v in counts_row]
    widths = [max(len(h), len(v)) for h, v in zip(headers, row_str)]

    def fmt_row(cells):
        return "  " + " | ".join(c.ljust(w) for c, w in zip(cells, widths))

    sep = "  " + "-+-".join("-" * w for w in widths)

    print("Aggregate table:")
    print(fmt_row(headers))
    print(sep)
    print(fmt_row(row_str))
    print(
        f"\n[aggregate] Wrote:\n"
        f"  {counts_tsv}\n"
        f"  {counts_csv}\n"
        f"  {summary_agg_tsv}\n"
        f"  {summary_agg_csv}\n"
        f"  {summary_html}\n"
    )


if __name__ == "__main__":
    main()
