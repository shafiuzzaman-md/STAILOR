#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver for a *single* spec.

High-level behavior:

  - Build rich context from:
      * SA spec JSON
      * fact_pack.json
      * compile_commands.json
      * source snippet around the vulnerable line
  - LLM Phase 0 (planner): propose entrypoint, assertion, and stub strategy.
  - LLM Phase A (builder loop): iteratively synthesize/repair a *single*
    self-contained harness.c that:
      * includes a main/driver entrypoint
      * calls into the inferred program entrypoint
      * contains one or more klee_assert-style checks
      * defines realistic stubs to keep KLEE exploration focused
    The goal of Phase A is to achieve a clean clang build → harness.bc.
  - Phase B (KLEE loop): run KLEE on harness.bc, feed coverage/errors back to
    the LLM (klee_refiner prompt) to refine the harness until:
      * H2: an assertion fires, or
      * H0: KLEE terminates cleanly with no assertions, or
      * H1: KLEE consistently times out.
  - Save all intermediate prompts, responses, harness snapshots, and logs
    under the per-spec RUN_DIR for debugging.
  - Emit a run_meta.json with classification (E/H0/H1/H2) and simple KLEE stats.

NOTES
-----
- This script relies on `llm_utils.llm_chat(messages)` from the repo root.
- Prompt text files are expected under:  <repo_root>/prompts/sailr_cegir/
    - planner.txt       (Phase 0: planning)
    - builder.txt       (Phase A: harness synthesis / clang fixer)
    - klee_refiner.txt  (Phase B: KLEE-guided refinement)
"""

import argparse
import json
import os
import re
import shlex
import subprocess
import sys
import textwrap
import time
from pathlib import Path
from typing import Dict, Any, Tuple

# --------------------------------------------------------------------------------------
# Paths / utilities
# --------------------------------------------------------------------------------------

REPO_ROOT = Path(__file__).resolve().parents[2]
PROMPT_ROOT = REPO_ROOT / "prompts" / "sailr_cegir"

sys.path.insert(0, str(REPO_ROOT))
try:
    from llm_utils import llm_chat
except Exception as e:  # pragma: no cover
    print(f"[!] Failed to import llm_utils.llm_chat: {e}", file=sys.stderr)
    sys.exit(1)


def load_prompt(name: str) -> str:
    """Load a prompt file from prompts/sailr_cegir/."""
    p = PROMPT_ROOT / name
    if not p.exists():
        raise FileNotFoundError(f"Prompt file not found: {p}")
    return p.read_text(encoding="utf-8")


def run_cmd(cmd: list[str], cwd: Path | None = None, timeout: int | None = None) -> Tuple[int, str, str, float]:
    """Run a subprocess and capture (returncode, stdout, stderr, elapsed_seconds)."""
    start = time.monotonic()
    proc = subprocess.run(
        cmd,
        cwd=str(cwd) if cwd else None,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        timeout=timeout,
    )
    elapsed = time.monotonic() - start
    return proc.returncode, proc.stdout, proc.stderr, elapsed


def ensure_dir(p: Path) -> Path:
    p.mkdir(parents=True, exist_ok=True)
    return p


def read_json(path: Path) -> Any:
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def write_json(path: Path, obj: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        json.dump(obj, f, indent=2, sort_keys=True)


def extract_json_block(text: str) -> str:
    """
    Heuristic: if LLM wrapped JSON in ```json ... ``` fences, extract inner part.
    """
    fence_match = re.search(r"```(?:json)?(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if fence_match:
        return fence_match.group(1).strip()
    return text.strip()


def call_llm_json(
    system_prompt: str,
    user_prompt: str,
    out_dir: Path,
    tag: str,
) -> Dict[str, Any]:
    """
    Call LLM with given system+user prompts and expect JSON output.

    - Save request (messages.json) and raw response (response.txt) under:
        out_dir/<tag>_messages.json
        out_dir/<tag>_response.txt
    - Return parsed JSON dict. If parsing fails, raise ValueError.
    """
    ensure_dir(out_dir)
    messages = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt},
    ]

    # Save request
    (out_dir / f"{tag}_messages.json").write_text(
        json.dumps(messages, indent=2), encoding="utf-8"
    )

    raw = llm_chat(messages)
    (out_dir / f"{tag}_response.txt").write_text(str(raw), encoding="utf-8")

    text = extract_json_block(str(raw))
    try:
        data = json.loads(text)
    except Exception as e:
        raise ValueError(f"Failed to parse JSON from LLM response for {tag}: {e}")
    return data


# --------------------------------------------------------------------------------------
# Context building
# --------------------------------------------------------------------------------------

def build_context(
    sa_out_dir: Path,
    src_root: Path,
    spec_path: Path,
    vul_file: str,
    vul_line: int,
    ctx_dir: Path,
) -> Dict[str, Any]:
    """
    Construct a compact context package for the LLM:
      - spec JSON
      - relevant source snippet (±N lines around vulnerable line)
      - enclosing function body (best-effort)
      - SA metadata: fact_pack.json (only path + maybe high-level stats)
      - compile_commands entry for this file (if any)
    Save artifacts under ctx_dir for debugging.
    """
    ensure_dir(ctx_dir)

    spec = read_json(spec_path)
    (ctx_dir / "spec.json").write_text(json.dumps(spec, indent=2), encoding="utf-8")

    fact_pack_path = sa_out_dir / "fact_pack.json"
    ccdb_path = sa_out_dir / "compile_commands.json"

    # Source snippet
    src_file = src_root / vul_file
    if not src_file.exists():
        raise FileNotFoundError(f"Source file not found: {src_file}")
    lines = src_file.read_text(encoding="utf-8", errors="ignore").splitlines()
    idx = max(0, vul_line - 1)
    window = 25
    start = max(0, idx - window)
    end = min(len(lines), idx + window + 1)
    snippet_lines = lines[start:end]

    snippet_text = "\n".join(
        f"{i+1:5d}: {lines[i]}" for i in range(start, end)
    )

    (ctx_dir / "vul_snippet.c").write_text("\n".join(snippet_lines), encoding="utf-8")
    (ctx_dir / "vul_snippet_annotated.txt").write_text(snippet_text, encoding="utf-8")

    # Try to extract enclosing function body via simple brace scan
    func_body = None
    func_start = None
    brace_depth = 0
    for i, line in enumerate(lines):
        if "{" in line:
            brace_depth += line.count("{")
            if brace_depth == 1 and func_start is None:
                func_start = i
        if "}" in line:
            brace_depth -= line.count("}")
            if brace_depth == 0 and func_start is not None:
                func_end = i
                if func_start <= idx <= func_end:
                    func_body = "\n".join(lines[func_start:func_end + 1])
                    break
                func_start = None

    if func_body is None:
        func_body = "\n".join(snippet_lines)

    (ctx_dir / "enclosing_function.c").write_text(func_body, encoding="utf-8")

    # compile_commands entry
    cc_entry = None
    if ccdb_path.exists():
        try:
            ccdb = read_json(ccdb_path)
            for entry in ccdb:
                if Path(entry.get("file", "")).name == vul_file:
                    cc_entry = entry
                    break
        except Exception:
            cc_entry = None

    ctx = {
        "spec_path": str(spec_path),
        "spec": spec,
        "vul_file": vul_file,
        "vul_line": vul_line,
        "snippet": snippet_text,
        "enclosing_function": func_body,
        "fact_pack_path": str(fact_pack_path),
        "compile_commands_entry": cc_entry,
    }
    write_json(ctx_dir / "context.json", ctx)
    return ctx


# --------------------------------------------------------------------------------------
# clang / KLEE helpers
# --------------------------------------------------------------------------------------

def write_harness(harness_dir: Path, name: str, src: str) -> Path:
    harness_dir = ensure_dir(harness_dir)
    path = harness_dir / name
    path.write_text(src, encoding="utf-8")
    return path


def compile_harness(
    harness_c: Path,
    harness_bc: Path,
    clang: str,
    clang_flags: str,
    log_dir: Path,
) -> Tuple[bool, str]:
    """
    Compile harness.c → harness.bc via clang.
    Return (success, stderr_text).
    """
    ensure_dir(log_dir)
    cmd = [clang]
    if clang_flags:
        cmd += shlex.split(clang_flags)
    cmd += [
        "-I.", "-g", "-O0",
        "-D_FORTIFY_SOURCE=0",
        "-emit-llvm", "-c",
        str(harness_c),
        "-o", str(harness_bc),
    ]

    rc, out, err, _ = run_cmd(cmd)
    (log_dir / "clang_last.stdout.txt").write_text(out, encoding="utf-8")
    (log_dir / "clang_last.stderr.txt").write_text(err, encoding="utf-8")
    (log_dir / "clang_last.cmd.txt").write_text(" ".join(cmd), encoding="utf-8")
    return rc == 0, err


def run_klee(
    harness_bc: Path,
    klee: str,
    klee_flags: str,
    timeout: int,
    log_dir: Path,
    iter_idx: int,
) -> Dict[str, Any]:
    """
    Run KLEE on harness.bc with provided flags, capture logs, and parse basic stats.

    Returns a dict with:
      - rc
      - elapsed
      - stdout
      - stderr
      - status: "assertion" | "timeout" | "ok" | "error"
      - completed_paths
      - assertion_count
      - timeout_hit (bool)
    """
    ensure_dir(log_dir)
    cmd = [klee]
    if klee_flags:
        cmd += shlex.split(klee_flags)
    cmd.append(str(harness_bc))

    rc, out, err, elapsed = run_cmd(cmd, timeout=timeout)

    (log_dir / f"klee_iter{iter_idx:03d}.stdout.txt").write_text(out, encoding="utf-8")
    (log_dir / f"klee_iter{iter_idx:03d}.stderr.txt").write_text(err, encoding="utf-8")
    (log_dir / f"klee_iter{iter_idx:03d}.cmd.txt").write_text(" ".join(cmd), encoding="utf-8")

    log = out + "\n" + err

    # Heuristics
    assertion_hit = bool(re.search(r"ASSERT(ION)? FAIL|klee_assert", log))
    timeout_hit = "max-time exceeded" in log
    completed_paths = 0
    for line in log.splitlines():
        m = re.search(r"completed paths\s*=\s*(\d+)", line)
        if m:
            completed_paths = int(m.group(1))

    if assertion_hit:
        status = "assertion"
    elif timeout_hit:
        status = "timeout"
    elif rc == 0:
        status = "ok"
    else:
        status = "error"

    return {
        "rc": rc,
        "elapsed": elapsed,
        "stdout": out,
        "stderr": err,
        "status": status,
        "completed_paths": completed_paths,
        "assertion_count": 1 if assertion_hit else 0,
        "timeout_hit": timeout_hit,
    }


# --------------------------------------------------------------------------------------
# Main agent logic
# --------------------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sa-out-dir", required=True)
    ap.add_argument("--dataset-root", required=True)
    ap.add_argument("--project-id", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--spec", required=True)
    ap.add_argument("--spec-stem", required=True)
    ap.add_argument("--vul-file", required=True)
    ap.add_argument("--vul-line", type=int, required=True)
    ap.add_argument("--rule-id", required=True)
    ap.add_argument("--target-vul", required=True)
    ap.add_argument("--llm-model", required=True)
    ap.add_argument("--llm-api-base", required=True)
    ap.add_argument("--clang", default="clang-14")
    ap.add_argument("--clang-flags", default="", nargs="?")
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", default="", nargs="?")
    ap.add_argument("--max-a", type=int, default=8)
    ap.add_argument("--max-b", type=int, default=12)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    args = ap.parse_args()

    # Make sure env matches provided model/base (for llm_utils.llm_chat).
    os.environ["LLM_MODEL"] = args.llm_model
    os.environ["LLM_API_BASE"] = args.llm_api_base.rstrip("/")

    run_dir = Path(args.run_dir)
    ctx_dir = ensure_dir(run_dir / "ctx")
    prompts_dir = ensure_dir(run_dir / "prompts")
    harness_dir = ensure_dir(run_dir / "harness")
    logs_dir = ensure_dir(run_dir / "logs")

    sa_out_dir = Path(args.sa_out_dir)
    src_root = Path(args.src_root)
    spec_path = Path(args.spec)

    # ------------------------------------------------------------------
    # 0) Build context
    # ------------------------------------------------------------------
    print("[i] Building context...")
    ctx = build_context(
        sa_out_dir=sa_out_dir,
        src_root=src_root,
        spec_path=spec_path,
        vul_file=args.vul_file,
        vul_line=args.vul_line,
        ctx_dir=ctx_dir,
    )

    # ------------------------------------------------------------------
    # Load prompts
    # ------------------------------------------------------------------
    planner_prompt = load_prompt("planner.txt")
    builder_prompt = load_prompt("builder.txt")
    klee_refiner_prompt = load_prompt("klee_refiner.txt")

    # ------------------------------------------------------------------
    # Phase 0: planner
    # ------------------------------------------------------------------
    print("[i] LLM Phase 0 – planner")
    user_msg_planner = textwrap.dedent(
        f"""
        Static-analysis spec (JSON):
        {json.dumps(ctx["spec"], indent=2)}

        Vulnerable target:
          - Project ID : {args.project_id}
          - Rule ID    : {args.rule_id}
          - Target     : {args.target_vul}

        Code snippet around the vulnerable line {args.vul_line} in {args.vul_file}:
        ----------------- SNIPPET START -----------------
        {ctx["snippet"]}
        ------------------ SNIPPET END ------------------

        Enclosing function (best-effort):
        ----------------- FUNCTION START ----------------
        {ctx["enclosing_function"]}
        ------------------ FUNCTION END -----------------

        Please propose:
          - A realistic harness entrypoint (function signature(s))
          - What to make symbolic and what to keep concrete
          - The core assertion condition(s) to encode as klee_assert
          - Any critical stubs needed to simplify the environment while
            preserving the vulnerability behavior.

        Respond strictly in JSON as described in the system prompt.
        """
    )

    plan = call_llm_json(
        system_prompt=planner_prompt,
        user_prompt=user_msg_planner,
        out_dir=prompts_dir,
        tag="planner",
    )
    write_json(run_dir / "plan.json", plan)

    # ------------------------------------------------------------------
    # Phase A: builder loop (clang-to-green)
    # ------------------------------------------------------------------
    harness_src = ""
    clang_ok = False
    last_clang_err = ""
    build_iters = 0

    for a in range(args.max_a):
        print(f"[A] Builder iteration A{a:03d}...")
        user_msg_builder = textwrap.dedent(
            f"""
            Project ID    : {args.project_id}
            Target vul    : {args.target_vul}
            Rule ID       : {args.rule_id}
            Spec stem     : {args.spec_stem}

            Current plan JSON:
            {json.dumps(plan, indent=2)}

            Most recent harness (if any):
            ------------------ HARNESS START ------------------
            {harness_src}
            ------------------- HARNESS END -------------------

            Last clang error (if any):
            ------------------ CLANG ERROR START --------------
            {last_clang_err}
            ------------------- CLANG ERROR END ---------------

            Please synthesize or refine a *complete* harness.c that:
              - Is self-contained (includes main/driver, any structs, and
                stubs it needs).
              - Includes #include <klee/klee.h> and any other required headers.
              - Uses KLEE intrinsics (klee_make_symbolic, klee_assume, klee_assert)
                as needed.
              - Encodes the core assertion(s) you proposed in the plan.
              - Uses realistic but *simplified* stubs to focus KLEE on reaching
                and exercising the suspected vulnerability.

            Respond in JSON with a single field:
              - "harness_c": "<full C file>"
            """
        )

        builder_resp = call_llm_json(
            system_prompt=builder_prompt,
            user_prompt=user_msg_builder,
            out_dir=prompts_dir,
            tag=f"builder_A{a:03d}",
        )
        harness_src = builder_resp.get("harness_c", "")

        harness_snapshot = write_harness(
            harness_dir, f"harness_A{a:03d}.c", harness_src
        )
        # Always keep latest as harness.c as well
        write_harness(harness_dir, "harness.c", harness_src)
        harness_bc = harness_dir / "harness.bc"

        clang_ok, last_clang_err = compile_harness(
            harness_c=harness_snapshot,
            harness_bc=harness_bc,
            clang=args.clang,
            clang_flags=args.clang_flags or "",
            log_dir=logs_dir,
        )
        build_iters = a + 1

        if clang_ok:
            print(f"[A] clang build succeeded at iteration A{a:03d}")
            break
        else:
            print(f"[A] clang build FAILED at iteration A{a:03d}")

    if not clang_ok:
        print("[!] Phase A exhausted without a green build. Class = E.")
        meta = {
            "spec": str(spec_path),
            "spec_stem": args.spec_stem,
            "target_vul": args.target_vul,
            "class": "E",
            "build": {
                "clang_ok": False,
                "iterations": build_iters,
                "last_error": last_clang_err,
            },
            "klee": {
                "ran": False,
            },
        }
        write_json(run_dir / "run_meta.json", meta)

        if args.summary_tsv:
            summary_path = Path(args.summary_tsv)
            header_needed = not summary_path.exists()
            with summary_path.open("a", encoding="utf-8") as f:
                if header_needed:
                    f.write("spec_stem\tclass\tcompleted_paths\ttime_sec\n")
                f.write(f"{args.spec_stem}\tE\t0\t0.0\n")
        return

    # ------------------------------------------------------------------
    # Phase B: KLEE refinement loop
    # ------------------------------------------------------------------
    klee_final = {
        "ran": False,
        "iterations": 0,
        "status": "not_run",
        "assertion_count": 0,
        "timeout": False,
        "completed_paths": 0,
        "time_sec": 0.0,
    }
    status_class = "E"  # will be overwritten

    harness_bc = harness_dir / "harness.bc"

    # First compile the latest harness.c to harness.bc for KLEE
    _ok, _err = compile_harness(
        harness_c=harness_dir / "harness.c",
        harness_bc=harness_bc,
        clang=args.clang,
        clang_flags=args.clang_flags or "",
        log_dir=logs_dir,
    )
    if not _ok:
        # Unlikely, but be defensive.
        print("[!] Rebuild of harness.c failed before KLEE. Class = E.")
        meta = {
            "spec": str(spec_path),
            "spec_stem": args.spec_stem,
            "target_vul": args.target_vul,
            "class": "E",
            "build": {
                "clang_ok": False,
                "iterations": build_iters,
                "last_error": _err,
            },
            "klee": {"ran": False},
        }
        write_json(run_dir / "run_meta.json", meta)
        if args.summary_tsv:
            summary_path = Path(args.summary_tsv)
            header_needed = not summary_path.exists()
            with summary_path.open("a", encoding="utf-8") as f:
                if header_needed:
                    f.write("spec_stem\tclass\tcompleted_paths\ttime_sec\n")
                f.write(f"{args.spec_stem}\tE\t0\t0.0\n")
        return

    last_klee_feedback = ""
    for b in range(args.max_b):
        print(f"[B] KLEE iteration B{b:03d}...")
        klee_stats = run_klee(
            harness_bc=harness_bc,
            klee=args.klee,
            klee_flags=args.klee_flags or "",
            timeout=args.timeout,
            log_dir=logs_dir,
            iter_idx=b,
        )
        klee_final = {
            "ran": True,
            "iterations": b + 1,
            "status": klee_stats["status"],
            "assertion_count": klee_stats["assertion_count"],
            "timeout": klee_stats["timeout_hit"],
            "completed_paths": klee_stats["completed_paths"],
            "time_sec": klee_stats["elapsed"],
        }

        log_excerpt = (klee_stats["stdout"] + "\n" + klee_stats["stderr"])
        last_klee_feedback = log_excerpt

        if klee_stats["status"] == "assertion":
            print("[B] KLEE triggered at least one assertion. Class = H2.")
            status_class = "H2"
            break
        elif klee_stats["status"] == "timeout":
            print("[B] KLEE hit max-time (timeout).")
            # If we still have budget, try refinement; otherwise classify H1.
            if b + 1 >= args.max_b:
                print("[B] Max KLEE iterations reached with repeated timeout. Class = H1.")
                status_class = "H1"
                break
        elif klee_stats["status"] == "ok":
            print("[B] KLEE terminated cleanly without assertion. Class = H0.")
            status_class = "H0"
            break
        else:
            # KLEE internal error or other failure; allow refinement, but if
            # we run out of budget, treat as H0 (SE ran but no assertion).
            print("[B] KLEE returned an error status; attempting refinement if budget remains.")
            if b + 1 >= args.max_b:
                status_class = "H0"
                break

        # If we are still here, we have remaining budget → refinement step
        print(f"[B] Refinement iteration after B{b:03d} using klee_refiner prompt...")
        user_msg_klee = textwrap.dedent(
            f"""
            Project ID    : {args.project_id}
            Target vul    : {args.target_vul}
            Rule ID       : {args.rule_id}
            Spec stem     : {args.spec_stem}

            Current plan JSON:
            {json.dumps(plan, indent=2)}

            Current harness.c:
            ------------------ HARNESS START ------------------
            {harness_src}
            ------------------- HARNESS END -------------------

            Most recent KLEE run (status={klee_stats["status"]},
                                   completed_paths={klee_stats["completed_paths"]},
                                   elapsed={klee_stats["elapsed"]:.2f}s):
            ------------------ KLEE LOG START -----------------
            {log_excerpt}
            ------------------- KLEE LOG END ------------------

            Please refine the harness to improve the chances of:
              - Reaching the vulnerable code.
              - Triggering the assertion if the vulnerability is real.
            Maintain a clean clang build and do not remove existing assertions
            unless absolutely necessary.

            Respond in JSON with a single field:
              - "harness_c": "<full C file>"
            """
        )

        klee_ref_resp = call_llm_json(
            system_prompt=klee_refiner_prompt,
            user_prompt=user_msg_klee,
            out_dir=prompts_dir,
            tag=f"klee_refiner_B{b:03d}",
        )
        harness_src = klee_ref_resp.get("harness_c", "")
        harness_snapshot = write_harness(
            harness_dir, f"harness_B{b:03d}.c", harness_src
        )
        write_harness(harness_dir, "harness.c", harness_src)

        # Rebuild after refinement
        clang_ok2, clang_err2 = compile_harness(
            harness_c=harness_snapshot,
            harness_bc=harness_bc,
            clang=args.clang,
            clang_flags=args.clang_flags or "",
            log_dir=logs_dir,
        )
        if not clang_ok2:
            print("[B] Refinement broke the clang build; recording error and stopping.")
            last_clang_err = clang_err2
            status_class = "E"
            break

    # ------------------------------------------------------------------
    # Final meta + optional summary TSV
    # ------------------------------------------------------------------
    meta = {
        "spec": str(spec_path),
        "spec_stem": args.spec_stem,
        "target_vul": args.target_vul,
        "class": status_class,
        "build": {
            "clang_ok": clang_ok,
            "iterations": build_iters,
            "last_error": last_clang_err,
        },
        "klee": klee_final,
    }
    write_json(run_dir / "run_meta.json", meta)

    if args.summary_tsv:
        summary_path = Path(args.summary_tsv)
        header_needed = not summary_path.exists()
        with summary_path.open("a", encoding="utf-8") as f:
            if header_needed:
                f.write("spec_stem\tclass\tcompleted_paths\ttime_sec\n")
            f.write(
                f"{args.spec_stem}\t{status_class}\t"
                f"{klee_final.get('completed_paths', 0)}\t"
                f"{klee_final.get('time_sec', 0.0):.3f}\n"
            )

    print(f"[✓] SAILR-CEGIR run complete for {args.spec_stem} (class={status_class}).")


if __name__ == "__main__":
    main()
