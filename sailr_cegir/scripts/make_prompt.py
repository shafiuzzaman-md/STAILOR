#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
make_prompt.py

Builds the prepared prompt JSON for run_cegir.py.

Usage example:

  python3 scripts/make_prompt.py \
    --plan out/plans/plan_dict.c_541.json \
    --spec out/specs/000_dict.c_541_local.oob.memfunc.length-misuse.json \
    --ccdb sa/compile_commands.json \
    --src-root ../../../dataset/62911/libxml2_62911_vul \
    --examples-build exemplars/build.jsonl \
    --examples-klee exemplars/klee.jsonl \
    --out out/prompts/prompt_dict.c_541.json
"""

import argparse
import json
import pathlib
import os
from typing import Dict, Any, Tuple

# Per-file cap to avoid huge prompts for large TUs.
MAX_FILE_BYTES = 40_000

# Number of lines of context around the suspicious site that we keep
# for the *target* source file (spec.file:spec.line).
CONTEXT_LINES = 150


def read_json(p: str) -> Any:
    with open(p, "r", encoding="utf-8") as f:
        return json.load(f)


def write_json(p: str, obj: Any) -> None:
    pathlib.Path(p).parent.mkdir(parents=True, exist_ok=True)
    with open(p, "w", encoding="utf-8") as f:
        json.dump(obj, f, indent=2)


def load_jsonl(path: str) -> list:
    if not path or not os.path.exists(path):
        return []
    out = []
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            try:
                out.append(json.loads(line))
            except Exception:
                continue
    return out


def safe_read_text(path: str, max_bytes: int = MAX_FILE_BYTES) -> Tuple[str, bool]:
    """
    Read at most max_bytes from the beginning of the file.

    Returns: (text, truncated)
    """
    try:
        with open(path, "r", encoding="utf-8", errors="ignore") as f:
            data = f.read(max_bytes + 1)
        truncated = len(data) > max_bytes
        if truncated:
            data = data[:max_bytes]
        return data, truncated
    except Exception:
        return "", False


def read_window_around_line(
    path: str,
    focus_line: int,
    ctx_lines: int = CONTEXT_LINES,
) -> Tuple[str, bool, int, int]:
    """
    Read a window of lines around focus_line from path.

    Returns: (text, truncated, start_line, end_line)
    - truncated is False as long as the window is small enough to fit
      comfortably under MAX_FILE_BYTES for typical C code.
    """
    try:
        with open(path, "r", encoding="utf-8", errors="ignore") as f:
            lines = f.readlines()
    except Exception:
        # Fallback: behave like safe_read_text
        text, trunc = safe_read_text(path)
        return text, trunc, 1, len(text.splitlines()) if text else 0

    n = len(lines)
    if n == 0 or focus_line is None or focus_line <= 0 or focus_line > n:
        # If we can't reason about the focus line, fallback to prefix
        text, trunc = safe_read_text(path)
        return text, trunc, 1, min(n, len(text.splitlines()))

    # 1-based indexing for lines, convert to 0-based indices
    idx = focus_line - 1
    start = max(0, idx - ctx_lines)
    end = min(n, idx + ctx_lines)

    window_lines = lines[start:end]
    window_text = "".join(window_lines)

    # In typical C code, ~300 lines will be well under 40k bytes.
    # If you ever hit the cap, you can tighten CONTEXT_LINES.
    encoded_len = len(window_text.encode("utf-8", errors="ignore"))
    truncated = encoded_len > MAX_FILE_BYTES

    if truncated:
        # Very rare; last-resort fallback: just clamp to MAX_FILE_BYTES.
        # This will still contain the focus_line unless lines are huge.
        # We don't try to be super clever here to keep code simple.
        # NOTE: we do not recalculate start/end; they still describe the full window.
        window_text = window_text.encode("utf-8", errors="ignore")[:MAX_FILE_BYTES].decode(
            "utf-8", errors="ignore"
        )

    return window_text, truncated, start + 1, end


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--plan", required=True, help="Plan JSON from SAILR plan_enrich")
    ap.add_argument("--spec", required=True, help="Vul spec JSON (000_*.json)")
    ap.add_argument("--ccdb", required=True, help="compile_commands.json")
    ap.add_argument("--src-root", required=True, help="Source root for this target")
    ap.add_argument(
        "--examples-build",
        dest="examples_build",
        default="exemplars/build.jsonl",
        help="JSONL file with build-loop exemplars",
    )
    ap.add_argument(
        "--examples-klee",
        dest="examples_klee",
        default="exemplars/klee.jsonl",
        help="JSONL file with KLEE-loop exemplars",
    )
    ap.add_argument("--out", required=True, help="Output prompt JSON path")
    args = ap.parse_args()

    plan = read_json(args.plan)
    spec = read_json(args.spec)

    build_ex = load_jsonl(args.examples_build)
    klee_ex = load_jsonl(args.examples_klee)

    # ------------------------------------------------------------------
    # Normalize spec for convenience.
    # ------------------------------------------------------------------
    spec_file = spec.get("file") or (plan.get("finding") or {}).get("file")
    spec_line = spec.get("line") or (plan.get("finding") or {}).get("line")

    try:
        spec_line_int = int(spec_line) if spec_line is not None else None
    except Exception:
        spec_line_int = None

    spec_norm = {
        "file": spec_file,
        "line": spec_line_int,
        "ruleId": spec.get("rule_id") or spec.get("ruleId") or "",
        "message": spec.get("message") or (plan.get("finding") or {}).get("message"),
    }

    # ------------------------------------------------------------------
    # Collect *contents* of key generated files AND original source for the LLM.
    # ------------------------------------------------------------------
    gen: Dict[str, Any] = plan.get("generated", {}) or {}
    file_entries: Dict[str, Any] = {}

    def add_file(label: str, role: str, path: str | None, focus_on_spec: bool = False):
        if not path:
            return
        if not os.path.exists(path):
            return

        # Decide whether to use a focused window (around spec.line)
        # or just a prefix slice. We only do the focused window for
        # the suspicious file (spec.file).
        use_window = False
        slice_meta = None

        if focus_on_spec and spec_norm["file"]:
            try:
                spec_base = os.path.basename(spec_norm["file"])
                path_base = os.path.basename(path)
                if spec_base == path_base and spec_norm["line"]:
                    use_window = True
            except Exception:
                use_window = False

        if use_window:
            text, truncated, start_line, end_line = read_window_around_line(
                path, spec_norm["line"]
            )
            slice_meta = {
                "kind": "window_around_line",
                "focus_line": spec_norm["line"],
                "start_line": start_line,
                "end_line": end_line,
            }
        else:
            text, truncated = safe_read_text(path)

        entry: Dict[str, Any] = {
            "role": role,
            "path": path,
            "truncated": truncated,
            "content": text,
        }
        if slice_meta is not None:
            entry["slice"] = slice_meta

        file_entries[label] = entry

    # 1) Suspicious original source file derived from spec.file and src_root.
    suspicious_path: str | None = None
    if spec_norm["file"]:
        candidates = []
        # If spec.file is absolute, try it as-is.
        if os.path.isabs(spec_norm["file"]):
            candidates.append(spec_norm["file"])
        # src_root + spec.file (when spec.file is relative).
        candidates.append(os.path.join(args.src_root, spec_norm["file"]))
        # src_root + basename(spec.file), in case spec.file is some weird path.
        candidates.append(os.path.join(args.src_root, os.path.basename(spec_norm["file"])))

        for p in candidates:
            if os.path.exists(p):
                suspicious_path = p
                break

    add_file("suspicious_c", "suspicious_source", suspicious_path, focus_on_spec=True)

    # 1b) Original entrypoint source (if it exists, may be an absolute path).
    entry = (plan.get("entrypoint") or {}).get("file")
    add_file("orig_entry_c", "original_source", entry, focus_on_spec=False)

    # 2) Instrumented / minimal TU and related headers/stubs.
    add_file("minimal_tu_c", "instrumented_tu", gen.get("minimal_tu_c"))
    add_file("instrumented_c", "original_instrumented", gen.get("instrumented_c"))
    add_file("min_shims_h", "shim_header", gen.get("min_shims_h"))
    add_file("helper_stubs_h", "helper_stub_header", gen.get("helper_stubs_h"))
    add_file("helper_stubs_c", "helper_stub_impl", gen.get("helper_stubs_c"))
    add_file("groom_h", "groom_header", gen.get("groom_h"))
    add_file("groom_c", "groom_impl", gen.get("groom_c"))

    prompt = {
        "kind": "loopB_cegir_prompt",
        "plan_path": args.plan,
        "spec_path": args.spec,
        "ccdb": args.ccdb,
        "src_root": args.src_root,
        "plan": plan,
        "spec": spec,
        "spec_norm": spec_norm,
        "examples": {
            "build": build_ex,
            "klee": klee_ex,
        },
        "files": file_entries,
        "notes": (
            "Prepared prompt for Phase A (build-to-green) and Phase B (reach target) "
            "of the SAILR CEGIR loop. The LLM sees this JSON and should respond with a "
            "single JSON object in a fenced code block containing `edits` and optional "
            "`commands`. The `files` section embeds current harness/stub sources, the "
            "suspicious source file (window around the vulnerable line), and the "
            "original entrypoint source when available."
        ),
    }

    write_json(args.out, prompt)
    print(f"[i] Wrote loopB prompt → {args.out}")


if __name__ == "__main__":
    main()
