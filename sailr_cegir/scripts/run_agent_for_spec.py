#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver for a *single* spec.

Features in this version:
  1. Smart Builder:
     - Phase A (Builder) can use "action": "shell" to debug compilation errors
       (e.g., missing headers) before emitting code.
     - "Pressure" mechanism: if the builder spends too many turns only doing
       shell exploration, the prompt explicitly forces it to emit a harness.
  2. Backtracking:
     - If Phase A fails to produce a compilable harness after N tries,
       the agent loops back to Phase 0 (Planner) with the compilation error
       logs, asking for a revised strategy.
  3. KLEE Assertion Differentiation:
     - The KLEE runner differentiates BUG_ASSERT vs REACH_ASSERT vs other
       assertions for finer-grained H2 classification.
  4. KLEE Refiner Safety:
     - Phase B (KLEE refiner) has a hard limit on interaction steps and a
       "pressure" mechanism that nudges the LLM to actually run KLEE or finish,
       so we do not get stuck forever in shell/refine_build_only loops.
"""

from __future__ import annotations

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
from typing import Dict, Any, Tuple, List

# --------------------------------------------------------------------------------------
# Paths / imports
# --------------------------------------------------------------------------------------

REPO_ROOT = Path(__file__).resolve().parents[2]
PROMPT_ROOT = REPO_ROOT / "prompts" / "sailr_cegir"

sys.path.insert(0, str(REPO_ROOT))
try:
    from llm_utils import llm_chat
except Exception as e:  # pragma: no cover
    print(f"[!] Failed to import llm_utils.llm_chat: {e}", file=sys.stderr)
    sys.exit(1)


# --------------------------------------------------------------------------------------
# Basic utilities
# --------------------------------------------------------------------------------------
def normalize_flag_list(flags) -> list[str]:
    """
    Normalize flag arguments that may come from argparse with nargs="*"
    but were passed as a single quoted string.
    """
    if not flags:
        return []

    if isinstance(flags, list) and len(flags) == 1:
        s = flags[0]
        if isinstance(s, str) and " " in s:
            return shlex.split(s)

    if isinstance(flags, str):
        return shlex.split(flags)

    return list(flags)


def load_prompt(name: str) -> str:
    """Load a prompt file from prompts/sailr_cegir/."""
    p = PROMPT_ROOT / name
    if not p.exists():
        raise FileNotFoundError(f"Prompt file not found: {p}")
    return p.read_text(encoding="utf-8")


def run_cmd(
    cmd: list[str],
    cwd: Path | None = None,
    timeout: int | None = None,
) -> Tuple[int, str, str, float]:
    """Run a subprocess and capture (returncode, stdout, stderr, elapsed_seconds)."""
    start = time.monotonic()
    try:
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

    except subprocess.TimeoutExpired as e:
        elapsed = time.monotonic() - start

        def _to_str(x):
            if x is None:
                return ""
            if isinstance(x, str):
                return x
            try:
                return x.decode("utf-8", errors="ignore")
            except Exception:
                return ""

        stdout = _to_str(e.stdout)
        stderr = _to_str(e.stderr) + f"\n[SAILR_TIMEOUT] subprocess timed out after {timeout} seconds."
        return 124, stdout, stderr, elapsed


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
    fence_match = re.search(
        r"```(?:json)?(.*?)```", text, flags=re.DOTALL | re.IGNORECASE
    )
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
    """
    ensure_dir(out_dir)
    messages = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt},
    ]

    (out_dir / f"{tag}_messages.json").write_text(
        json.dumps(messages, indent=2), encoding="utf-8"
    )

    raw = llm_chat(messages)
    (out_dir / f"{tag}_response.txt").write_text(str(raw), encoding="utf-8")

    text = extract_json_block(str(raw)).strip()

    if not text:
        err_msg = f"Empty LLM response for {tag}"
        (out_dir / f"{tag}_parse_error.txt").write_text(err_msg, encoding="utf-8")
        return {"_llm_error": err_msg}

    try:
        data = json.loads(text)
        return data
    except Exception as e:
        err_msg = f"Failed to parse JSON from LLM response for {tag}: {e}"
        (out_dir / f"{tag}_parse_error.txt").write_text(
            err_msg + "\n\n" + text, encoding="utf-8"
        )
        return {"_llm_error": err_msg}


# --------------------------------------------------------------------------------------
# Source discovery / context building
# --------------------------------------------------------------------------------------

def find_source_file(src_root: Path, vul_file: str) -> Path:
    """
    Try to locate the source file for vul_file under src_root.
    """
    direct = src_root / vul_file
    if direct.exists():
        return direct

    matches = list(src_root.rglob(vul_file))
    if not matches:
        raise FileNotFoundError(f"{vul_file} not found under {src_root}")
    matches.sort(key=lambda p: len(str(p)))
    return matches[0]


def build_context(
    sa_out_dir: Path,
    src_root: Path,
    spec_path: Path,
    vul_file: str,
    vul_line: int,
    ctx_dir: Path,
) -> Dict[str, Any]:
    """
    Construct a compact context package for the LLM.
    """
    ensure_dir(ctx_dir)

    spec = read_json(spec_path)
    (ctx_dir / "spec.json").write_text(json.dumps(spec, indent=2), encoding="utf-8")

    fact_pack_path = sa_out_dir / "fact_pack.json"
    ccdb_path = sa_out_dir / "compile_commands.json"

    src_file = find_source_file(src_root, vul_file)
    full_src_text = src_file.read_text(encoding="utf-8", errors="ignore")
    (ctx_dir / "vul_file_full.c").write_text(full_src_text, encoding="utf-8")

    max_chars = 20000
    truncated_src = full_src_text[:max_chars]

    lines = full_src_text.splitlines()
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

    cc_entry = None
    if ccdb_path.exists():
        try:
            ccdb = read_json(ccdb_path)
            for entry in ccdb:
                if Path(entry.get("file", "")).name == src_file.name:
                    cc_entry = entry
                    break
        except Exception:
            cc_entry = None

    ctx = {
        "spec_path": str(spec_path),
        "spec": spec,
        "vul_file": vul_file,
        "vul_file_path": str(src_file),
        "vul_line": vul_line,
        "snippet": snippet_text,
        "enclosing_function": func_body,
        "vul_file_truncated": truncated_src,
        "fact_pack_path": str(fact_pack_path),
        "compile_commands_entry": cc_entry,
    }
    write_json(ctx_dir / "context.json", ctx)
    return ctx


# --------------------------------------------------------------------------------------
# Shell command sanitization for interactive phases
# --------------------------------------------------------------------------------------

ALLOWED_SHELL_TOOLS = {
    "rg", "grep", "ls", "find", "sed", "cat", "head", "tail",
}


def sanitize_shell_command(cmd: str) -> List[str]:
    """
    Conservative sanitizer for planner / builder / refiner shell commands.
    """
    dangerous = [";", "&", "|", ">", "<", "`", "$"]
    if any(ch in cmd for ch in dangerous):
        raise ValueError(f"disallowed metacharacters in command: {cmd!r}")

    argv = shlex.split(cmd)
    if not argv:
        raise ValueError("empty command")

    tool = argv[0]
    if tool not in ALLOWED_SHELL_TOOLS:
        raise ValueError(
            f"tool {tool!r} not allowed; allowed tools: {sorted(ALLOWED_SHELL_TOOLS)}"
        )

    return argv


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
    clang_flags: List[str],
    log_dir: Path,
) -> Tuple[bool, str]:
    """
    Compile harness.c → harness.bc via clang.
    Return (success, stderr_text).
    """
    ensure_dir(log_dir)
    cmd = [clang]

    if clang_flags:
        cmd += clang_flags

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
    klee_flags: List[str],
    timeout: int,
    log_dir: Path,
    iter_idx: int,
) -> Dict[str, Any]:
    """
    Run KLEE on harness.bc with provided flags, capture logs, and parse basic stats.

    Differentiates between BUG_ASSERT and REACH_ASSERT hits.
    """
    ensure_dir(log_dir)
    cmd = [klee]

    if klee_flags:
        cmd += klee_flags

    cmd.append(str(harness_bc))

    rc, out, err, elapsed = run_cmd(cmd, timeout=timeout)

    (log_dir / f"klee_iter{iter_idx:03d}.stdout.txt").write_text(out, encoding="utf-8")
    (log_dir / f"klee_iter{iter_idx:03d}.stderr.txt").write_text(err, encoding="utf-8")
    (log_dir / f"klee_iter{iter_idx:03d}.cmd.txt").write_text(" ".join(cmd), encoding="utf-8")

    log = out + "\n" + err

    # Differentiate between the two assertions based on string markers
    bug_hit = "BUG_ASSERT" in log
    reach_hit = "REACH_ASSERT" in log

    # Generic assertion check (for other klee_asserts/internal asserts)
    generic_assert_hit = bool(re.search(r"ASSERT(ION)? FAIL|klee_assert", log))

    timeout_hit = (
        "max-time exceeded" in log
        or "[SAILR_TIMEOUT]" in log
        or "Timed out after" in log
    )
    completed_paths = 0

    for line in log.splitlines():
        m = re.search(r"completed paths\s*=\s*(\d+)", line)
        if m:
            completed_paths = int(m.group(1))

    if bug_hit:
        status = "assertion_bug"   # Vulnerability confirmed (Full H2)
        assertion_count = 1
    elif reach_hit:
        status = "assertion_reach" # Target reached, but safe (Partial H2)
        assertion_count = 1
    elif generic_assert_hit:
        status = "assertion_other" # An unknown klee_assert or internal failure
        assertion_count = 1
    elif timeout_hit:
        status = "timeout"
        assertion_count = 0
    elif rc == 0:
        status = "ok"
        assertion_count = 0
    else:
        status = "error"
        assertion_count = 0

    return {
        "rc": rc,
        "elapsed": elapsed,
        "stdout": out,
        "stderr": err,
        "status": status,
        "completed_paths": completed_paths,
        "assertion_count": assertion_count,
        "timeout_hit": timeout_hit,
        "bug_assert_hit": bug_hit,
        "reach_assert_hit": reach_hit,
        "iterations": iter_idx,
    }


# --------------------------------------------------------------------------------------
# Phase 0: Interactive Planner
# --------------------------------------------------------------------------------------

def interactive_planner(
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    planner_prompt: str,
    prompts_dir: Path,
    src_root: Path,
    max_iters: int = 6,
    feedback_error: str | None = None,  # receives feedback from failed builder
) -> Dict[str, Any]:
    """
    Interactive planner. Can accept feedback from a failed builder run
    to propose a NEW plan (replanning/backtracking).
    """
    history_chunks: List[str] = []
    last_raw_resp: Dict[str, Any] | None = None

    # If this is a replan, inject the error into history immediately
    if feedback_error:
        history_chunks.append(
            f"SYSTEM: Previous Plan Failed.\n"
            f"The Builder could not compile the harness based on your previous plan.\n"
            f"Builder Error Log:\n{feedback_error}\n\n"
            f"Please propose a NEW plan/entrypoint that avoids these issues."
        )

    for i in range(max_iters):
        history_text = (
            "\n\n".join(history_chunks)
            if history_chunks else "(no prior shell explorations)"
        )

        user_msg = textwrap.dedent(
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

            Truncated full source file {ctx.get("vul_file_path", "")}:
            ----------------- FILE START ----------------
            {ctx.get("vul_file_truncated", "")}
            ------------------ FILE END -----------------

            Previous shell explorations / Feedback:
            ----------------- HISTORY START ---------------
            {history_text}
            ------------------ HISTORY END ----------------

            Protocol:

            - To request more information via shell, respond with JSON:
              {{
                  "action": "shell",
                  "command": "<shell command to run from project root>",
                  "reason": "<why this helps you understand the vulnerability>"
              }}

            - When you are ready to propose the final harness plan, respond with:
              {{
                  "action": "final_plan",
                  "plan": {{ ... }}
              }}

            Allowed tools: rg, grep, ls, find, sed, cat, head, tail.
            """
        )

        resp = call_llm_json(
            system_prompt=planner_prompt,
            user_prompt=user_msg,
            out_dir=prompts_dir,
            tag=f"planner_iter{i:03d}",
        )
        last_raw_resp = resp

        action = resp.get("action")
        if action == "shell":
            cmd_str = resp.get("command", "")
            reason = resp.get("reason", "")

            shell_log_header = f"# planner shell iter {i}, cmd={cmd_str!r}, reason={reason!r}"
            try:
                argv = sanitize_shell_command(cmd_str)
                rc, out, err, _ = run_cmd(argv, cwd=src_root)
                chunk = (
                    f"{shell_log_header}\n"
                    f"$ {cmd_str}\n"
                    f"[rc={rc}]\n"
                    f"STDOUT:\n{out}\n"
                    f"STDERR:\n{err}\n"
                )
            except Exception as e:
                chunk = (
                    f"{shell_log_header}\n"
                    f"$ {cmd_str}\n"
                    f"[error] {e}\n"
                )

            history_chunks.append(chunk)
            (prompts_dir / f"planner_shell_{i:03d}.txt").write_text(
                chunk, encoding="utf-8"
            )
            continue

        elif action == "final_plan":
            plan = resp.get("plan")
            if isinstance(plan, dict):
                return plan
            else:
                return {"plan_raw": resp}

        else:
            # Fallback if LLM forgets protocol but returns JSON
            return resp

    if last_raw_resp is not None:
        return {"plan_raw": last_raw_resp, "note": "planner_max_iters_exceeded"}

    return {"plan_error": "planner_failed_without_response"}


# --------------------------------------------------------------------------------------
# Phase A: Smart Interactive Builder
# --------------------------------------------------------------------------------------
def interactive_builder(
    plan: Dict[str, Any],
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    builder_prompt: str,
    prompts_dir: Path,
    src_root: Path,
    harness_dir: Path,
    logs_dir: Path,
    max_iters: int,
    replan_idx: int,
) -> Tuple[bool, str, str]:
    """
    Phase A loop.
    Optimization: Separates 'compilation attempts' from 'tool usage'.
    Adds 'pressure' to force code generation if tool usage is excessive.
    """
    harness_src = ""
    last_clang_err = ""
    history_chunks: List[str] = []

    # Budget counters
    compilation_attempts = 0
    total_turns = 0
    MAX_TOTAL_TURNS = max_iters * 3  # Hard limit on interactions

    while compilation_attempts < max_iters and total_turns < MAX_TOTAL_TURNS:
        tag = f"builder_R{replan_idx}_T{total_turns:03d}"
        print(f"[A] Builder (R{replan_idx}) turn {total_turns} (Compile Attempt {compilation_attempts}/{max_iters})...")

        history_text = (
            "\n\n".join(history_chunks)
            if history_chunks else "(no shell usage yet)"
        )

        # Pressure: if we have spent > 50% of our total budget on shell commands, force harness
        pressure_msg = ""
        if total_turns > (MAX_TOTAL_TURNS // 2):
            pressure_msg = (
                "\nSYSTEM WARNING: You have spent many turns on shell exploration.\n"
                "You MUST stop exploring and output a harness ('action': 'harness') NOW,\n"
                "even if you are not 100% sure. Compilation feedback will help you fix errors."
            )

        user_msg_builder = textwrap.dedent(
            f"""
            Project ID    : {args.project_id}
            Target vul    : {args.target_vul}

            Current plan JSON:
            {json.dumps(plan, indent=2)}

            Most recent harness (if any):
            ------------------ HARNESS START ------------------
            {harness_src if harness_src else "(none)"}
            ------------------- HARNESS END -------------------

            Last clang error (if any):
            ------------------ CLANG ERROR START --------------
            {last_clang_err if last_clang_err else "(none)"}
            ------------------- CLANG ERROR END ---------------

            Builder Shell History:
            ----------------- HISTORY START ---------------
            {history_text}
            ------------------ HISTORY END ----------------

            Protocol:
            1) To debug build errors (find missing headers/types):
               {{ "action": "shell", "command": "...", "reason": "..." }}

            2) To emit/fix the harness:
               {{ "action": "harness", "harness_c": "<full C code>" }}

            Allowed tools: rg, grep, ls, find, cat, head, tail.
            {pressure_msg}
            """
        )

        resp = call_llm_json(
            system_prompt=builder_prompt,
            user_prompt=user_msg_builder,
            out_dir=prompts_dir,
            tag=tag,
        )

        action = resp.get("action")
        total_turns += 1

        # 1. Handle Shell (does NOT increment compilation_attempts)
        if action == "shell":
            cmd_str = resp.get("command", "")
            reason = resp.get("reason", "")
            try:
                argv = sanitize_shell_command(cmd_str)
                rc, out, err, _ = run_cmd(argv, cwd=src_root)
                chunk = (
                    f"SHELL $ {cmd_str}\n"
                    f"REASON: {reason}\n"
                    f"RC={rc}\n"
                    f"STDOUT:\n{out}\n"
                    f"STDERR:\n{err}\n"
                )
            except Exception as e:
                chunk = f"SHELL $ {cmd_str}\nERROR: {e}\n"

            history_chunks.append(chunk)
            continue

        # 2. Handle Harness (increments compilation_attempts)
        new_harness = resp.get("harness_c")

        if new_harness and isinstance(new_harness, str):
            harness_src = new_harness
            missing_patterns = []
            # Check for BUG_ASSERT label syntax
            if '&& "BUG_ASSERT"' not in harness_src:
                missing_patterns.append('Missing syntax: klee_assert(cond && "BUG_ASSERT")')
            
            # Check for REACH_ASSERT label syntax (must be 0/False)
            if '0 && "REACH_ASSERT"' not in harness_src:
                missing_patterns.append('Missing or incorrect syntax: klee_assert(0 && "REACH_ASSERT")')

            if missing_patterns:
                # Reject this turn and ask LLM to fix it
                err_msg = (
                    "SYSTEM ERROR: Assertion syntax invalid.\n"
                    "1. Labels must be strings inside the assert: klee_assert(cond && \"LABEL\").\n"
                    "2. Reachability must be 0 (False) to force a stop: klee_assert(0 && \"REACH_ASSERT\").\n"
                    f"Issues found: {'; '.join(missing_patterns)}"
                )
                history_chunks.append(err_msg)
                # Skip compilation, loop back to let LLM fix it. 
                # We do NOT increment compilation_attempts here because we want to save those for actual compiler errors.
                continue


            compilation_attempts += 1  # This counts as a "Try"

            # Save snapshot
            harness_snapshot = write_harness(
                harness_dir, f"harness_R{replan_idx}_C{compilation_attempts:03d}.c", harness_src
            )
            write_harness(harness_dir, "harness.c", harness_src)
            harness_bc = harness_dir / "harness.bc"

            # Compile
            clang_ok, err_log = compile_harness(
                harness_c=harness_snapshot,
                harness_bc=harness_bc,
                clang=args.clang,
                clang_flags=args.clang_flags,
                log_dir=logs_dir,
            )

            if clang_ok:
                print(f"[A] clang build succeeded at attempt {compilation_attempts}")
                return True, harness_src, ""
            else:
                print(f"[A] clang build FAILED at attempt {compilation_attempts}")
                last_clang_err = err_log
                continue

        # Fallback
        history_chunks.append("SYSTEM: Invalid response format. Use 'shell' or 'harness'.")
        continue

    return False, harness_src, last_clang_err


# --------------------------------------------------------------------------------------
# Phase B micro-agent: interactive KLEE refiner
# --------------------------------------------------------------------------------------

def interactive_klee_refiner(
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    plan: Dict[str, Any],
    klee_refiner_prompt: str,
    prompts_dir: Path,
    src_root: Path,
    harness_dir: Path,
    logs_dir: Path,
    harness_src_initial: str,
    initial_klee_stats: Dict[str, Any] | None,
    initial_klee_runs_used: int,
    max_klee_runs: int,
) -> Tuple[str, Dict[str, Any] | None, str]:
    """
    Micro-agent loop for Phase B.

    Adds:
      - Hard cap on total refiner steps (so we do not loop forever).
      - Pressure message to push the LLM toward refine_and_run_klee/final.
    """
    history_chunks: List[str] = []
    harness_src = harness_src_initial
    harness_bc = harness_dir / "harness.bc"
    klee_runs_used = initial_klee_runs_used
    last_klee_stats = initial_klee_stats
    last_clang_err: str | None = None

    MAX_STEPS = max_klee_runs * 4  # safety cap on interactions

    def record_history(chunk: str, key: str, idx: int):
        history_chunks.append(chunk)
        (prompts_dir / f"{key}_{idx:03d}.txt").write_text(chunk, encoding="utf-8")

    def run_clang(hsrc: str) -> Tuple[bool, str]:
        hsnap = write_harness(harness_dir, "harness_step.c", hsrc)
        ok, err = compile_harness(
            harness_c=hsnap,
            harness_bc=harness_bc,
            clang=args.clang,
            clang_flags=args.clang_flags,
            log_dir=logs_dir,
        )
        write_harness(harness_dir, "harness.c", hsrc)
        return ok, err

    def run_klee_probe() -> Dict[str, Any]:
        nonlocal klee_runs_used, last_klee_stats
        klee_runs_used += 1
        stats = run_klee(
            harness_bc=harness_bc,
            klee=args.klee,
            klee_flags=args.klee_flags,
            timeout=args.timeout,
            log_dir=logs_dir,
            iter_idx=klee_runs_used,
        )
        last_klee_stats = stats
        return stats

    def build_history_text() -> str:
        return "\n\n".join(history_chunks) if history_chunks else "(no prior shell explorations in KLEE refiner)"

    def make_user_msg(step_idx: int) -> str:
        # Pressure: if we have used > 50% of MAX_STEPS without more KLEE runs, nudge to run KLEE or finish.
        pressure_msg = ""
        if step_idx > (MAX_STEPS // 2):
            pressure_msg = (
                "\nSYSTEM WARNING: You have spent many refiner steps without running KLEE.\n"
                "You MUST either:\n"
                "  - use 'action': 'refine_and_run_klee' to run KLEE with a refined harness, or\n"
                "  - use 'action': 'final' if you believe the harness is ready.\n"
                "Do NOT keep issuing only 'shell' or 'refine_build_only' actions.\n"
            )

        return textwrap.dedent(
            f"""
            Project ID    : {args.project_id}
            Target vul    : {args.target_vul}

            Current plan JSON:
            {json.dumps(plan, indent=2)}

            Current harness.c:
            ------------------ HARNESS START ------------------
            {harness_src}
            ------------------- HARNESS END -------------------

            Most recent KLEE stats:
            {json.dumps(last_klee_stats, indent=2) if last_klee_stats else "(no KLEE stats yet)"}

            Most recent clang error (if any):
            {last_clang_err if last_clang_err else "(none)"}

            Previous KLEE refiner shell explorations:
            ----------------- HISTORY START ---------------
            {build_history_text()}
            ------------------ HISTORY END ----------------

            Valid actions:
              1) Shell:
                 {{ "action": "shell", "command": "...", "reason": "..." }}

              2) Build only:
                 {{ "action": "refine_build_only", "harness_c": "..." }}

              3) Build & KLEE (preferred when ready to test a change):
                 {{ "action": "refine_and_run_klee", "harness_c": "..." }}

              4) Final (if you are done refining):
                 {{ "action": "final" }}

            {pressure_msg}
            """
        )

    system_prompt = klee_refiner_prompt

    step_idx = 0
    while True:
        # Global termination conditions
        if klee_runs_used >= max_klee_runs or step_idx >= MAX_STEPS:
            # Decide final class based on last_klee_stats
            if last_klee_stats:
                if str(last_klee_stats.get("status", "")).startswith("assertion"):
                    return "H2", last_klee_stats, harness_src
                if last_klee_stats.get("status") == "ok":
                    # Baseline + any refiner KLEE runs found no assertion
                    return "H0", last_klee_stats, harness_src
                return "H1", last_klee_stats, harness_src
            return "E", None, harness_src

        print(
            f"[B] KLEE refiner step {step_idx} "
            f"(klee_runs_used={klee_runs_used}/{max_klee_runs}, "
            f"last_status={last_klee_stats['status'] if last_klee_stats else 'none'})"
        )

        user_msg = make_user_msg(step_idx)
        resp = call_llm_json(
            system_prompt=system_prompt,
            user_prompt=user_msg,
            out_dir=prompts_dir,
            tag=f"klee_refiner_step{step_idx:03d}",
        )
        step_idx += 1

        action = resp.get("action")
        if action == "shell":
            cmd_str = resp.get("command", "")
            reason = resp.get("reason", "")
            header = f"# klee_refiner shell step {step_idx}, cmd={cmd_str!r}, reason={reason!r}"
            try:
                argv = sanitize_shell_command(cmd_str)
                rc, out, err, _ = run_cmd(argv, cwd=src_root)
                chunk = (
                    f"{header}\n"
                    f"$ {cmd_str}\n"
                    f"[rc={rc}]\n"
                    f"STDOUT:\n{out}\n"
                    f"STDERR:\n{err}\n"
                )
            except Exception as e:
                chunk = (
                    f"{header}\n"
                    f"$ {cmd_str}\n"
                    f"[error] {e}\n"
                )
            record_history(chunk, "klee_refiner_shell", step_idx)
            continue

        if action == "refine_build_only":
            harness_c = resp.get("harness_c") or resp.get("harness")
            if not isinstance(harness_c, str) or not harness_c.strip():
                return "E", last_klee_stats, harness_src
            harness_src = harness_c
            ok, err = run_clang(harness_src)
            last_clang_err = None if ok else err
            continue

        if action == "refine_and_run_klee":
            harness_c = resp.get("harness_c") or resp.get("harness")
            if not isinstance(harness_c, str) or not harness_c.strip():
                return "E", last_klee_stats, harness_src
            harness_src = harness_c
            ok, err = run_clang(harness_src)
            last_clang_err = None if ok else err
            if not ok:
                # Compilation failed, loop back with error context
                continue

            stats = run_klee_probe()

            if str(stats.get("status", "")).startswith("assertion"):
                return "H2", stats, harness_src
            if stats.get("status") == "ok":
                # No assertion but KLEE ran; we can keep refining or eventually converge to H0
                continue
            # Any non-OK, non-assertion status treated as H1 (refiner can still try more steps)
            continue

        if action == "final":
            if last_klee_stats:
                if str(last_klee_stats.get("status", "")).startswith("assertion"):
                    return "H2", last_klee_stats, harness_src
                if last_klee_stats.get("status") == "ok":
                    return "H0", last_klee_stats, harness_src
                return "H1", last_klee_stats, harness_src
            return "E", None, harness_src

        # Legacy handling if no action matches but harness_c exists
        harness_c = resp.get("harness_c") or resp.get("harness")
        if isinstance(harness_c, str) and harness_c.strip():
            harness_src = harness_c
            ok, err = run_clang(harness_src)
            last_clang_err = None if ok else err
            if not ok:
                continue
            stats = run_klee_probe()
            if str(stats.get("status", "")).startswith("assertion"):
                return "H2", stats, harness_src
            if stats.get("status") == "ok":
                continue
            continue

        # If we get here, the response is malformed. Count as error and exit.
        return "E", last_klee_stats, harness_src


# --------------------------------------------------------------------------------------
# Main agent logic (Backtracking / Replanning)
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
    ap.add_argument(
        "--clang-flags",
        dest="clang_flags",
        nargs="*",
        default=[],
        help="Extra flags to pass to clang",
    )
    ap.add_argument("--klee", default="klee")
    ap.add_argument(
        "--klee-flags",
        dest="klee_flags",
        nargs="*",
        default=[],
        help="Extra flags to pass to KLEE",
    )

    ap.add_argument("--max-a", type=int, default=8)
    ap.add_argument("--max-b", type=int, default=12)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    args = ap.parse_args()

    args.clang_flags = normalize_flag_list(args.clang_flags)
    args.klee_flags = normalize_flag_list(args.klee_flags)

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

    print("[i] Building context...")
    ctx = build_context(
        sa_out_dir=sa_out_dir,
        src_root=src_root,
        spec_path=spec_path,
        vul_file=args.vul_file,
        vul_line=args.vul_line,
        ctx_dir=ctx_dir,
    )

    planner_prompt = load_prompt("planner.txt")
    builder_prompt = load_prompt("builder.txt")
    klee_refiner_prompt = load_prompt("klee_refiner.txt")

    # --- OUTER REPLANNING LOOP ---
    MAX_REPLANS = 3
    final_status = "E"
    harness_src = ""
    klee_final: Dict[str, Any] | None = None

    planner_feedback = None  # Stores error from previous builder run if any
    plan: Dict[str, Any] = {}
    plan_budget: Dict[str, Any] = {}
    build_iters = 0
    last_clang_err = ""

    for r_idx in range(MAX_REPLANS):
        if r_idx > 0:
            print(f"\n[=] REPLAN ATTEMPT {r_idx+1}/{MAX_REPLANS} (Backtracking)")
        else:
            print("[i] LLM Phase 0 – interactive planner")

        # 1. Planner
        plan = interactive_planner(
            ctx=ctx,
            args=args,
            planner_prompt=planner_prompt,
            prompts_dir=prompts_dir,
            src_root=src_root,
            max_iters=6,
            feedback_error=planner_feedback,
        )
        write_json(run_dir / f"plan_R{r_idx}.json", plan)

        if "plan_error" in plan or ("plan_raw" not in plan and "entrypoint" not in plan.get("plan", plan)):
            if "plan_error" in plan:
                print("[!] Planner failed to produce plan.")
                break

        # Extract budget from plan
        if isinstance(plan, dict):
            plan_budget = (
                plan.get("budget")
                or (plan.get("plan", {}) or {}).get("budget", {})
                or {}
            )

        def _as_int(val, default):
            try:
                return int(val)
            except Exception:
                return default

        max_a_effective = _as_int(plan_budget.get("max_builder_iters", args.max_a), args.max_a)
        max_a_effective = max(1, min(args.max_a, max_a_effective))

        # 2. Smart Builder
        build_success, harness_src, build_err = interactive_builder(
            plan=plan,
            ctx=ctx,
            args=args,
            builder_prompt=builder_prompt,
            prompts_dir=prompts_dir,
            src_root=src_root,
            harness_dir=harness_dir,
            logs_dir=logs_dir,
            max_iters=max_a_effective,
            replan_idx=r_idx,
        )

        build_iters += max_a_effective  # approximate tracking
        last_clang_err = build_err

        if build_success:
            print("[+] Builder Success! Moving to KLEE Phase.")
            final_status = "H0"  # It compiled, so it's at least H0-compatible
            break
        else:
            print(f"[-] Builder Failed in R{r_idx}. Preparing feedback for Planner...")
            planner_feedback = (
                f"Builder failed to compile plan from Attempt {r_idx}.\n"
                f"Last Clang Error:\n{build_err}"
            )
            # Continue loop to replan

    # 3. KLEE Phase (Only if build success)
    if final_status != "E":
        def _as_int(val, default):
            try:
                return int(val)
            except Exception:
                return default

        max_b_effective = _as_int(plan_budget.get("max_klee_runs", args.max_b), args.max_b)
        max_b_effective = max(1, min(args.max_b, max_b_effective))

        harness_bc = harness_dir / "harness.bc"

        print("[B] Baseline KLEE run (B000)...")
        baseline_stats = run_klee(
            harness_bc=harness_bc,
            klee=args.klee,
            klee_flags=args.klee_flags,
            timeout=args.timeout,
            log_dir=logs_dir,
            iter_idx=0,
        )

        # H2 classification now differentiates between assertion types
        if baseline_stats["status"] == "assertion_bug":
            print("[B] Baseline KLEE triggered BUG_ASSERT. Class = H2 (Bug Found).")
            final_status = "H2"
            klee_final = baseline_stats
        elif baseline_stats["status"] == "assertion_reach":
            print("[B] Baseline KLEE triggered REACH_ASSERT. Class = H2 (Reached Target).")
            final_status = "H2"
            klee_final = baseline_stats
        elif baseline_stats["status"] == "assertion_other":
            print("[B] Baseline KLEE triggered unknown assertion. Class = H2.")
            final_status = "H2"
            klee_final = baseline_stats
        else:
            print(
                "[B] Baseline KLEE status="
                f"{baseline_stats['status']}, entering interactive KLEE refiner..."
            )
            final_status, klee_final, harness_src = interactive_klee_refiner(
                ctx=ctx,
                args=args,
                plan=plan,
                klee_refiner_prompt=klee_refiner_prompt,
                prompts_dir=prompts_dir,
                src_root=src_root,
                harness_dir=harness_dir,
                logs_dir=logs_dir,
                harness_src_initial=harness_src,
                initial_klee_stats=baseline_stats,
                initial_klee_runs_used=1,  # we already used one KLEE run (baseline)
                max_klee_runs=max_b_effective,
            )

            # Print specific H2 status from refiner for clarity
            if final_status == "H2" and klee_final:
                if klee_final.get("status") == "assertion_bug":
                    print("[B] Refiner KLEE triggered BUG_ASSERT. Class = H2 (Bug Found).")
                elif klee_final.get("status") == "assertion_reach":
                    print("[B] Refiner KLEE triggered REACH_ASSERT. Class = H2 (Reached Target).")
                elif klee_final.get("status") == "assertion_other":
                    print("[B] Refiner KLEE triggered unknown assertion. Class = H2.")

    # 4. Final Metadata & Reporting
    if klee_final is None:
        klee_final = {
            "ran": False,
            "iterations": 0,
            "status": "not_run",
            "assertion_count": 0,
            "timeout": False,
            "completed_paths": 0,
            "time_sec": 0.0,
            "bug_assert_hit": False,
            "reach_assert_hit": False,
        }
    else:
        klee_final = {
            "ran": True,
            "iterations": klee_final.get("iterations", 0),
            "status": klee_final.get("status"),
            "assertion_count": klee_final.get("assertion_count", 0),
            "timeout": klee_final.get("timeout_hit", False),
            "completed_paths": klee_final.get("completed_paths", 0),
            "time_sec": klee_final.get("elapsed", 0.0),
            "bug_assert_hit": klee_final.get("bug_assert_hit", False),
            "reach_assert_hit": klee_final.get("reach_assert_hit", False),
        }

    meta = {
        "spec": str(spec_path),
        "spec_stem": args.spec_stem,
        "target_vul": args.target_vul,
        "class": final_status,
        "build": {
            "clang_ok": (final_status != "E"),
            "iterations": build_iters,
            "last_error": last_clang_err,
        },
        "klee": klee_final,
        "budget": {
            "planner_raw": plan_budget,
            "effective": {
                # These might vary per replan, but recording last is sufficient
                "max_builder_iters": args.max_a,
                "max_klee_runs": args.max_b,
            },
        },
    }

    write_json(run_dir / "run_meta.json", meta)

    if args.summary_tsv:
        summary_path = Path(args.summary_tsv)
        header_needed = not summary_path.exists()
        with summary_path.open("a", encoding="utf-8") as f:
            if header_needed:
                f.write("spec_stem\tclass\tcompleted_paths\ttime_sec\n")
            f.write(
                f"{args.spec_stem}\t{final_status}\t"
                f"{klee_final.get('completed_paths', 0)}\t"
                f"{klee_final.get('time_sec', 0.0):.3f}\n"
            )

    print(f"[✓] SAILR-CEGIR run complete for {args.spec_stem} (class={final_status}).")


if __name__ == "__main__":
    main()
