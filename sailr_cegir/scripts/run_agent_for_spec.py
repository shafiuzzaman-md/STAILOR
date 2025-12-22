#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver.

Key invariants enforced:
  - REACH_ASSERT is always *after* BUG_ASSERT on the target path.
  - REACH_ASSERT is a strict marker: it must appear in KLEE logs (no "ASSERTION FAIL" fallback).
  - Harness integrity checks reject common FP-manufacturing patterns:
      * symbolic pointer VALUE (not pointee)
      * rigged allocator stubs (size-threshold return NULL)
      * capacity bookkeeping decoupled from allocation size

Compatibility:
  - Accepts --project-bc because wrapper scripts may pass it.
  - If --project-bc is provided, will try to llvm-link harness.bc + project.bc and run KLEE on the linked bc.
"""

from __future__ import annotations

import argparse
import fcntl
import json
import os
import re
import shlex
import shutil
import subprocess
import sys
import time
from pathlib import Path
from typing import Dict, Any, Tuple, List, Optional

# Add repo root to path for imports
REPO_ROOT = Path(__file__).resolve().parents[2]
SCRIPT_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(REPO_ROOT))
sys.path.insert(0, str(SCRIPT_DIR))

try:
    from llm_utils import llm_chat
except Exception as e:
    print(f"[!] Failed to import llm_utils.llm_chat: {e}", file=sys.stderr)
    sys.exit(1)

try:
    import make_prompt
except ImportError as e:
    print(f"[!] Failed to import make_prompt: {e}", file=sys.stderr)
    sys.exit(1)

# ---------------- LOGGING UTILS ----------------

class Tee:
    def __init__(self, original_stream, log_file):
        self.original_stream = original_stream
        self.log_file = log_file

    def write(self, message):
        self.original_stream.write(message)
        self.log_file.write(message)
        self.flush()

    def flush(self):
        self.original_stream.flush()
        self.log_file.flush()

def setup_logging(run_dir: Path):
    log_path = run_dir / "execution.log"
    f = open(log_path, "w", encoding="utf-8")
    sys.stdout = Tee(sys.stdout, f)
    sys.stderr = Tee(sys.stderr, f)
    print(f"[i] Logging all output to: {log_path}")

# ---------------- BASIC UTILS ----------------

ALLOWED_SHELL_TOOLS = {"rg", "grep", "ls", "find", "sed", "cat", "head", "tail"}

def normalize_flag_list(flags) -> List[str]:
    if not flags:
        return []
    if isinstance(flags, list) and len(flags) == 1:
        s = flags[0]
        if isinstance(s, str) and " " in s:
            return shlex.split(s)
    if isinstance(flags, str):
        return shlex.split(flags)
    return list(flags)

def sanitize_shell_command(cmd: str) -> List[str]:
    for ch in ["&", "`"]:
        if ch in cmd:
            raise ValueError(f"disallowed metacharacter: {ch}")
    if "$(" in cmd or "${" in cmd:
        raise ValueError("command substitution not allowed")
    argv = shlex.split(cmd)
    if not argv:
        raise ValueError("empty command")
    if Path(argv[0]).name not in ALLOWED_SHELL_TOOLS:
        raise ValueError(f"tool {argv[0]} not allowed")
    return argv

def run_cmd(
    cmd: List[str] | str,
    cwd: Path | None = None,
    timeout: int | None = None,
    use_shell: bool = False
) -> Tuple[int, str, str, float]:
    start = time.monotonic()
    try:
        if use_shell and isinstance(cmd, list):
            cmd_str = " ".join(shlex.quote(x) for x in cmd)
        else:
            cmd_str = cmd
        proc = subprocess.run(
            cmd_str if use_shell else cmd,
            cwd=str(cwd) if cwd else None,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=timeout,
            shell=use_shell
        )
        return proc.returncode, proc.stdout, proc.stderr, time.monotonic() - start
    except subprocess.TimeoutExpired as e:
        def _s(x):
            return x if isinstance(x, str) else (x.decode("utf-8", "ignore") if x else "")
        return 124, _s(e.stdout), _s(e.stderr) + f"\n[TIMEOUT] {timeout}s", time.monotonic() - start

def ensure_dir(p: Path) -> Path:
    p.mkdir(parents=True, exist_ok=True)
    return p

def read_json(path: Path) -> Any:
    try:
        with path.open("r", encoding="utf-8") as f:
            return json.load(f)
    except Exception:
        return None

def write_json(path: Path, obj: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        json.dump(obj, f, indent=2, sort_keys=True)

def extract_json_block(text: str) -> str:
    pattern = r"^```(?:json)?\s*(\{.*\})\s*```$"
    m = re.match(pattern, text.strip(), flags=re.DOTALL | re.IGNORECASE)
    if m:
        return m.group(1)
    start_idx = text.find("{")
    end_idx = text.rfind("}")
    if start_idx == -1 or end_idx == -1 or end_idx < start_idx:
        return text
    return text[start_idx:end_idx + 1]

def call_llm_json(system_prompt: str, user_prompt: str, out_dir: Path, tag: str) -> Dict[str, Any]:
    ensure_dir(out_dir)
    messages = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt},
    ]
    (out_dir / f"{tag}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
    raw = llm_chat(messages)
    (out_dir / f"{tag}_raw_response.txt").write_text(str(raw), encoding="utf-8")

    if isinstance(raw, dict):
        return raw
    text = extract_json_block(str(raw))
    try:
        return json.loads(text, strict=False)
    except Exception:
        return {"_llm_error": "json_parse_failed", "raw": str(raw)}

def get_commands_list(resp: Dict[str, Any]) -> List[str]:
    cmds: List[str] = []
    if "commands" in resp:
        v = resp["commands"]
        if isinstance(v, list):
            cmds.extend(v)
        elif isinstance(v, str):
            cmds.append(v)
    if "command" in resp:
        v = resp["command"]
        if isinstance(v, list):
            cmds.extend(v)
        elif isinstance(v, str):
            cmds.append(v)
    return [c for c in cmds if isinstance(c, str) and c.strip()]

# ---------------- SOURCE HELPERS ----------------

def extract_c_code(text: str) -> str | None:
    m = re.search(r"```c(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if m:
        return m.group(1).strip()
    m = re.search(r"```(.*?)```", text, flags=re.DOTALL)
    if m:
        return m.group(1).strip()
    t = (text or "").strip()
    if t.startswith("#include") or "int main" in t:
        return t
    return None

def extract_function_body_at(file_path: Path, line_num: int) -> str:
    try:
        txt = file_path.read_text(encoding="utf-8", errors="ignore")
        lines = txt.splitlines()
        idx = line_num - 1
        if idx < 0 or idx >= len(lines):
            return f"[error] line {line_num} out of bounds"
        func_start = max(0, idx - 50)
        for i in range(idx, max(-1, idx - 200), -1):
            line = lines[i].strip()
            if re.match(r"^[a-zA-Z_].*\(.*", line) and not line.endswith(";"):
                func_start = i
                break
        return "\n".join(lines[max(0, func_start):min(len(lines), idx + 100)])
    except Exception as e:
        return f"[error reading file] {e}"

def find_source_file(src_root: Path, vul_file: str) -> Path:
    direct = src_root / vul_file
    if direct.exists():
        return direct
    matches = list(src_root.rglob(vul_file))
    if not matches:
        raise FileNotFoundError(f"{vul_file} not found under {src_root}")
    return sorted(matches, key=lambda p: len(str(p)))[0]

def extract_vulnerable_statement_text(lines: List[str], start_line_num: int) -> str:
    idx = start_line_num - 1
    if idx < 0 or idx >= len(lines):
        return f"[error] line {start_line_num} out of bounds"
    stmt: List[str] = []
    for j in range(0, 10):
        if idx + j >= len(lines):
            break
        line = lines[idx + j].strip()
        if not line or line.startswith(("/", "*")):
            continue
        stmt.append(line)
        if line.endswith(("{", ";")):
            break
    return " ".join(stmt)

def perform_smart_lookup(src_root: Path, symbols: List[str]) -> str:
    results: List[str] = []
    for sym in symbols:
        if not re.match(r"^[a-zA-Z_]\w*$", sym):
            continue
        cmd = ["rg", "-n", "--no-heading", f"\\b{sym}\\s*\\(", "."]
        rc, out, _, _ = run_cmd(cmd, cwd=src_root, timeout=5)
        if rc == 0 and out.strip():
            matches = out.strip().splitlines()[:2]
            for m in matches:
                parts = m.split(":", 2)
                if len(parts) >= 2:
                    try:
                        fpath = src_root / parts[0].replace("./", "")
                        body = extract_function_body_at(fpath, int(parts[1]))
                        results.append(f"== DEFINITION: {sym} ==\nFile: {parts[0]}:{parts[1]}\nContent:\n{body}\n")
                    except Exception:
                        continue
        else:
            results.append(f"Symbol '{sym}': Definition not found.")
    return "\n".join(results)

# ---------------- HARNESS INJECTION + VALIDATION ----------------

def inject_standard_headers(hsrc: str) -> str:
    """
    Unconditionally injects standard headers and macros if missing.

    NOTE: REACH_ASSERT is defined so that the string "REACH_ASSERT" appears in KLEE logs.
    """
    headers = [
        "<limits.h>", "<assert.h>", "<stdint.h>", "<stdlib.h>",
        "<string.h>", "<stdio.h>", "<stdbool.h>", "<stddef.h>"
    ]
    if "<klee/klee.h>" not in hsrc:
        headers.append("<klee/klee.h>")

    injections = [f"#include {h}" for h in headers if h not in hsrc]

    injections += [
        "#ifndef REACH_ASSERT",
        '#define REACH_ASSERT klee_assert(0 && "REACH_ASSERT")',
        "#endif",
        "#ifndef BUG_ASSERT",
        '#define BUG_ASSERT(cond) klee_assert((cond) && "BUG_ASSERT")',
        "#endif",
    ]
    return "\n".join(injections) + "\n" + hsrc

def validate_harness_integrity(harness_src: str, window: int = 10) -> Tuple[bool, str]:
    """
    TP-safe harness integrity checks.

    Core rule: Every executable REACH_ASSERT must be preceded by BUG_ASSERT within `window` lines.
    """
    lines = harness_src.splitlines()

    def is_code_line(s: str) -> bool:
        t = s.strip()
        if not t:
            return False
        if t.startswith("#") or t.startswith("//"):
            return False
        return True

    reach_lines: List[int] = []
    bug_lines: List[int] = []

    for i, line in enumerate(lines):
        if not is_code_line(line):
            continue
        if "define" not in line and re.search(r"\bREACH_ASSERT\b", line):
            reach_lines.append(i)
        if "define" not in line and re.search(r"\bBUG_ASSERT\s*\(", line):
            bug_lines.append(i)

    if reach_lines and not bug_lines:
        return False, (
            "REJECTED: REACH_ASSERT present but no BUG_ASSERT(...) call found. "
            "Place BUG_ASSERT(<safety-bound>) immediately before REACH_ASSERT at the target site."
        )

    bug_set = set(bug_lines)
    for r in reach_lines:
        lo = max(0, r - window)
        if not any(b in bug_set for b in range(lo, r)):
            snippet = "\n".join(f"{j+1}: {lines[j]}" for j in range(lo, min(len(lines), r + 1)))
            return False, (
                "REJECTED: REACH_ASSERT is not preceded by BUG_ASSERT(...) within the required window. "
                "Fix: place `BUG_ASSERT(<safety-bound>);` immediately before `REACH_ASSERT;`.\n"
                f"Context:\n{snippet}"
            )

    # Reject symbolic pointer VALUE: detect variable made symbolic AND declared as pointer.
    for m in re.finditer(r'klee_make_symbolic\s*\(\s*&\s*([A-Za-z_]\w*)\s*,\s*sizeof\s*\(\s*\1\s*\)', harness_src):
        var = m.group(1)
        decl_ptr = re.search(rf'\b[A-Za-z_]\w*(?:\s+[A-Za-z_]\w*)*\s*\*\s*{re.escape(var)}\b', harness_src)
        if decl_ptr:
            return False, (
                f"REJECTED: You made pointer '{var}' symbolic. This causes immediate SEGFAULTS.\n"
                f"FIX: Allocate memory first, then make the CONTENT symbolic:\n"
                f"  {var} = ({decl_ptr.group(0).split('*')[0]} *)malloc(sizeof(*{var}));\n"
                f"  if ({var}) klee_make_symbolic({var}, sizeof(*{var}), \"{var}_obj\");"
            )

    # Reject rigged allocator stubs: size-threshold return NULL (generic but narrow).
    if re.search(r'if\s*\(\s*(?:size|len|n)\s*(?:>=|>)\s*\d+\s*\)\s*[^;{]*\breturn\s+NULL\s*;', harness_src):
        return False, (
            "REJECTED: Allocator stub appears rigged to fail based on a size threshold (e.g., if (size > 64) return NULL;). "
            "Remove threshold failure logic; it manufactures false positives."
        )

    # Reject symbolic capacity bookkeeping not tied to allocation size.
    sym_scalars = set(m.group(1) for m in re.finditer(
        r'klee_make_symbolic\s*\(\s*&\s*([A-Za-z_]\w*)\s*,\s*sizeof\s*\(\s*\1\s*\)', harness_src
    ))
    alloc_exprs = set(re.sub(r'\s+', '', m.group(1)) for m in re.finditer(r'\bmalloc\s*\(\s*([^)]+)\s*\)', harness_src))
    alloc_exprs |= set(re.sub(r'\s+', '', m.group(1)) for m in re.finditer(r'\brealloc\s*\(\s*[^,]+,\s*([^)]+)\s*\)', harness_src))

    for m in re.finditer(r'->\s*(?:nodemem|capacity|cap|bufsz|buf_size|size|alloc|mem)\s*=\s*([A-Za-z_]\w*)\s*;', harness_src):
        rhs = m.group(1)
        if rhs in sym_scalars:
            rhs_norm = re.sub(r'\s+', '', rhs)
            if rhs_norm not in alloc_exprs:
                return False, (
                    "REJECTED: Symbolic capacity bookkeeping is not tied to the backing allocation size. "
                    f"Found capacity_field := {rhs} but no malloc/realloc({rhs}) sizing. "
                    "Fix: allocate using the same capacity expression (malloc(cap)) or set capacity to the allocation constant."
                )

    return True, ""

def _pick_llvm_link(explicit: Optional[str]) -> Optional[str]:
    if explicit and shutil.which(explicit):
        return explicit
    for cand in ("llvm-link-14", "llvm-link"):
        if shutil.which(cand):
            return cand
    return None

def compile_harness_to_bc(
    args: argparse.Namespace,
    src_root: Path,
    harness_c: Path,
    out_bc: Path,
    project_bc: Optional[Path],
) -> Tuple[bool, str, Path]:
    """
    Returns: (ok, error_or_warning_message, bc_to_run)
    """
    cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_c), "-o", str(out_bc)]
    rc, out, err, _ = run_cmd(cmd, cwd=src_root)
    if rc != 0:
        return False, (out + "\n" + err), out_bc

    # If whole-project bc is available, attempt to link for better TP stability.
    if project_bc and project_bc.exists():
        llvm_link = _pick_llvm_link(getattr(args, "llvm_link", None))
        if not llvm_link:
            return True, (
                f"[warn] --project-bc provided ({project_bc}) but llvm-link not found; running KLEE on harness.bc only."
            ), out_bc

        linked_bc = out_bc.parent / "harness.linked.bc"
        lcmd = [llvm_link, str(out_bc), str(project_bc), "-o", str(linked_bc)]
        lrc, lout, lerr, _ = run_cmd(lcmd, cwd=src_root)
        if lrc != 0:
            return True, (
                "[warn] llvm-link failed; running KLEE on harness.bc only.\n"
                f"CMD: {' '.join(lcmd)}\n"
                f"STDOUT:\n{lout}\nSTDERR:\n{lerr}"
            ), out_bc
        return True, "", linked_bc

    return True, "", out_bc

# ---------------- VALIDATION: DCV ----------------

def run_dcv(plan_path: Path, ctx: Dict[str, Any], args: argparse.Namespace) -> Tuple[bool, str]:
    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists():
        return True, ""
    cmd = [
        sys.executable, str(dcv_script),
        "--plan", str(plan_path),
        "--spec", ctx["spec_path"],
        "--rule-id", args.rule_id,
        "--project-name", args.project_id,
    ]
    if ctx.get("fact_pack_path"):
        cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0:
        return False, f"Rule-Based Validator Rejected the Model:\n{out}\n{err}"
    return True, ""

# ---------------- CONTEXT BUILD ----------------

def build_context(
    sa_out_dir: Path,
    src_root: Path,
    spec_path: Path,
    vul_file: str,
    vul_line: int,
    ctx_dir: Path
) -> Dict[str, Any]:
    ensure_dir(ctx_dir)
    spec = read_json(spec_path)
    (ctx_dir / "spec.json").write_text(json.dumps(spec, indent=2), encoding="utf-8")

    src_file = find_source_file(src_root, vul_file)
    full_src = src_file.read_text(encoding="utf-8", errors="ignore")
    lines = full_src.splitlines()

    idx = max(0, vul_line - 1)
    snippet_lines = lines[max(0, idx - 25):min(len(lines), idx + 26)]
    snippet_text = "\n".join(f"{i+1+max(0, idx-25):5d}: {ln}" for i, ln in enumerate(snippet_lines))
    vul_stmt = extract_vulnerable_statement_text(lines, vul_line)

    ctx = {
        "spec_path": str(spec_path),
        "spec": spec,
        "vul_file": vul_file,
        "vul_line": vul_line,
        "snippet": snippet_text,
        "vul_statement_text": vul_stmt,
        "fact_pack_path": str(sa_out_dir / "fact_pack.json"),
        "enclosing_function": "\n".join(snippet_lines),
    }
    write_json(ctx_dir / "context.json", ctx)
    return ctx

# ---------------- STAGE 1: ENVIRONMENT MODELING ----------------

def interactive_environment_modeler(
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    planner_prompt: str,
    out_dir: Path,
    src_root: Path,
    max_iters: int
) -> Dict[str, Any]:
    history = ["STRATEGY: Analyze spec -> 'shell' to find definitions -> 'final_plan'."]
    feedback_error = None

    for i in range(max_iters):
        print(f"\n  --- [Environment Modeler Turn {i+1}/{max_iters}] ---")
        hist_txt = "\n\n".join(history[-10:])
        if feedback_error:
            hist_txt += f"\n\n[SYSTEM FEEDBACK]:\n{feedback_error}"

        warning_msg = ""
        if i >= max_iters - 3: # If 3 or fewer turns remain
            warning_msg = (
                f"\n\n[SYSTEM CRITICAL]: You have used {i}/{max_iters} turns. "
                "You are running out of budget. "
                "You MUST stop searching and output 'final_plan' NOW, or the mission will fail."
            )

        user_msg = f"Spec: {json.dumps(ctx['spec'], indent=2)}\nSnippet:\n{ctx['snippet']}\nHistory:\n{hist_txt}{warning_msg}"
        resp = call_llm_json(planner_prompt, user_msg, out_dir, f"modeler_iter{i:03d}")
        action = resp.get("action")
        reason = resp.get("reason", "No reasoning provided")

        print(f"  [>] Action: {action}")
        print(f"  [?] Reason: {reason}")

        if action == "shell":
            log = ""
            for cmd in get_commands_list(resp):
                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:2000]}\nSTDERR:\n{err[:500]}\n"
                except Exception as e:
                    log += f"Error: {e}\n"
            history.append(log)
        elif action == "lookup_symbols":
            syms = resp.get("symbols", [])
            res = perform_smart_lookup(src_root, syms)
            history.append(f"LOOKUP:\n{res[:4000]}")
        elif action == "final_plan":
            raw_plan = resp.get("plan", {})
            temp_plan_path = out_dir / "temp_plan.json"
            write_json(temp_plan_path, raw_plan)
            valid, msg = run_dcv(temp_plan_path, ctx, args)
            if valid:
                print("  [✓] Model Validated.")
                return raw_plan
            feedback_error = msg
        else:
            history.append(f"SYSTEM: Unknown action: {action}")

    return {"plan_error": "Exhausted"}

# ---------------- KLEE ----------------

def run_klee(bc_path: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int) -> Dict[str, Any]:
    ensure_dir(log_dir)
    cmd = [klee] + flags + [str(bc_path)]
    rc, out, err, t = run_cmd(cmd, timeout=timeout)
    full_log = f"{out}\n{err}"
    (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")

    bug_assert = "BUG_ASSERT" in full_log
    reach_assert = "REACH_ASSERT" in full_log

    status = "assertion_bug" if bug_assert else ("assertion_reach" if reach_assert else "ok")
    if rc == 124 and status == "ok":
        status = "timeout"

    return {
        "status": status,
        "bug_assert_hit": bug_assert,
        "reach_assert_hit": reach_assert,
        "elapsed": t,
        "log_tail": full_log[-2000:],
    }

# ---------------- STAGE 2: REACHABILITY HARNESS SYNTHESIS ----------------
def interactive_reachability_synthesizer(
    plan: Dict[str, Any],
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    builder_prompt: str,
    out_dir: Path,
    src_root: Path,
    harness_dir: Path,
    logs_dir: Path,
    max_iters: int,
    start_src: str = ""
) -> Tuple[bool, str, Dict[str, Any]]:

    harness_src = ""
    history: List[str] = []
    best_stats: Dict[str, Any] = {}

    project_bc = Path(args.project_bc) if args.project_bc else None

    for i in range(max_iters):
        print(f"\n  --- [Reachability Synthesizer Turn {i+1}] ---")
        klee_fb = ""
        if best_stats:
            klee_fb = f"Previous Run: {best_stats.get('status')}\nLOG:\n{best_stats.get('log_tail','')}"

        # --- NEW: Budget Warning (Fixes Analysis Paralysis) ---
        warning_msg = ""
        if i >= max_iters - 3:
            warning_msg = (
                f"\n\n[SYSTEM CRITICAL]: You have used {i}/{max_iters} turns. "
                "You are running out of budget. "
                "You MUST stop analyzing and output a 'harness' NOW, or the mission will fail."
            )
        # ------------------------------------------------------

        user_msg = (
            f"Model: {json.dumps(plan)}\n"
            f"Harness:\n{harness_src}\n"
            f"KLEE Feedback:\n{klee_fb}\n"
            f"History:\n" + "\n".join(history[-5:]) +
            warning_msg  # <--- Injected here
        )
        resp = call_llm_json(builder_prompt, user_msg, out_dir, f"reach_gen_T{i:02d}")
        
        # --- Summarized Logging ---
        action = resp.get("action")
        reason = resp.get("reason", "No reasoning provided")
        print(f"  [>] Action: {action}")
        if reason:
            print(f"  [?] Reason: {reason}")
        # --------------------------

        if action == "shell":
            for cmd in get_commands_list(resp):
                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                    history.append(f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:800]}\nSTDERR:\n{err[:200]}")
                except Exception as e:
                    print(f"  [!] Shell Error: {e}")
                    history.append(f"Error: {e}")
            continue

        if action != "harness":
            print(f"  [!] Invalid Action: {action}")
            history.append(f"SYSTEM: expected 'harness' or 'shell', got '{action}'")
            continue

        code = extract_c_code(resp.get("harness_c", ""))
        if not code:
            print("  [!] No code block found in response.")
            history.append("SYSTEM ERROR: No code block found. Wrap code in ```c ... ```.")
            continue

        harness_src = inject_standard_headers(code)

        ok, reason = validate_harness_integrity(harness_src)
        if not ok:
            print(f"  [!] Validator Rejected Harness: {reason}")
            history.append(f"VALIDATOR REJECT:\n{reason}")
            continue

        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")

        print("  [*] Compiling harness...")
        okc, msg, bc_to_run = compile_harness_to_bc(
            args,
            src_root,
            harness_dir / "harness.c",
            harness_dir / "harness.bc",
            project_bc
        )
        if msg:
            if not okc: print(f"  [!] Compilation Failed:\n{msg[:300]}...") 
            history.append(msg)
        if not okc:
            history.append(f"COMPILER ERROR:\n{msg[:1500]}")
            continue

        print(f"  [*] Running KLEE (Timeout: {args.timeout}s)...")
        stats = run_klee(bc_to_run, args.klee, args.klee_flags, args.timeout, logs_dir, i)
        best_stats = stats

        # Concise status report
        status_str = stats.get("status", "unknown")
        bug_hit = "YES" if stats.get("bug_assert_hit") else "no"
        reach_hit = "YES" if stats.get("reach_assert_hit") else "no"
        print(f"  [=] Result: {status_str} | Reach: {reach_hit} | Bug: {bug_hit}")

        # Reach stage success = reached marker OR (bug found early).
        if stats.get("reach_assert_hit") or stats.get("bug_assert_hit"):
            return True, harness_src, stats

    return False, harness_src, best_stats
# ---------------- STAGE 3: VULNERABILITY HARNESS SYNTHESIS ----------------

def interactive_vulnerability_synthesizer(
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    plan: Dict[str, Any],
    builder_prompt: str,
    out_dir: Path,
    src_root: Path,
    harness_dir: Path,
    logs_dir: Path,
    start_src: str,
    start_stats: Dict[str, Any],
    max_runs: int
) -> Tuple[str, Dict[str, Any], str]:

    src = start_src
    stats = start_stats
    project_bc = Path(args.project_bc) if args.project_bc else None

    if stats.get("bug_assert_hit"):
        return "H2", stats, src

    for runs in range(max_runs):
        print(f"\n  --- [Vulnerability Synthesizer Run {runs+1}/{max_runs}] ---")

        user_msg = (
            f"Current Harness:\n{src}\n"
            f"KLEE Stats: {json.dumps(stats)}\n"
            f"Goal: Trigger BUG_ASSERT.\n"
            f"SYSTEM CONSTRAINTS:\n"
            f"  - Do NOT add/change steering assumptions that were only needed for environment reach.\n"
            f"  - Keep reachability assumptions identical; only ensure vulnerability operands remain symbolic.\n"
            f"  - Ensure BUG_ASSERT precedes REACH_ASSERT at the target site.\n"
        )
        resp = call_llm_json(builder_prompt, user_msg, out_dir, f"vuln_gen_{runs:02d}")

        if resp.get("action") == "final":
            return "H2_REACH", stats, src

        new_code = extract_c_code(resp.get("harness_c", ""))
        if not new_code:
            continue

        src = inject_standard_headers(new_code)

        ok, reason = validate_harness_integrity(src)
        if not ok:
            print(f"  [!] Validator Rejected Harness: {reason}")
            continue

        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(src, encoding="utf-8")

        okc, msg, bc_to_run = compile_harness_to_bc(
            args,
            src_root,
            harness_dir / "harness.c",
            harness_dir / "harness.bc",
            project_bc
        )
        if msg:
            print(msg)
        if not okc:
            continue

        stats = run_klee(bc_to_run, args.klee, args.klee_flags, args.timeout, logs_dir, runs + 100)
        if stats.get("bug_assert_hit"):
            return "H2", stats, src

    return "H2_REACH", stats, src

# ---------------- MAIN ----------------
def main():
    ap = argparse.ArgumentParser()
    # ... [Args setup matches your file] ...
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
    ap.add_argument("--project-bc", default=None)
    ap.add_argument("--llvm-link", default=None)
    ap.add_argument("--llm-model", required=True)
    ap.add_argument("--llm-api-base", required=True)
    ap.add_argument("--clang", default="clang-14")
    ap.add_argument("--clang-flags", nargs="*", default=[])
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", nargs="*", default=[])
    ap.add_argument("--max-a", type=int, default=15)
    ap.add_argument("--max-b", type=int, default=3)
    ap.add_argument("--max-cycles", type=int, default=5)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    args = ap.parse_args()

    args.clang_flags = normalize_flag_list(args.clang_flags)
    args.klee_flags = normalize_flag_list(args.klee_flags)
    os.environ["LLM_MODEL"] = args.llm_model
    os.environ["LLM_API_BASE"] = args.llm_api_base

    run_dir = ensure_dir(Path(args.run_dir).resolve())
    setup_logging(run_dir)

    ctx = build_context(
        Path(args.sa_out_dir), Path(args.src_root), Path(args.spec),
        args.vul_file, args.vul_line, ensure_dir(run_dir / "ctx")
    )

    prompts = make_prompt.generate_prompts(
        args.vul_file, args.vul_line, args.rule_id,
        ctx.get("vul_statement_text", ""), ensure_dir(run_dir / "prompts")
    )

    # Priority: Bug (3) > Reach (2) > Timeout (1) > Unreachable (0.5) > Error (0)
    status_priority = { "H2": 4, "H2_REACH": 3, "H1": 2, "H0": 1, "E": 0 }

    def update_best(cur_status, cur_stats, new_status, new_stats):
        if status_priority.get(new_status, 0) > status_priority.get(cur_status, 0):
            return new_status, new_stats
        return cur_status, cur_stats

    overall_status = "E"
    klee_final = {}
    best_harness_src = ""
    for cycle in range(args.max_cycles):
        print(f"\n[=] CYCLE {cycle+1}/{args.max_cycles}")
        d = ensure_dir(run_dir / f"try_{cycle:02d}")

        if best_harness_src:
            print("  [i] Carrying forward harness from previous cycle. Skipping Modeler.")
            plan = {"action": "final_plan", "explanation": "Carried forward"}
        else:
            plan = interactive_environment_modeler(ctx, args, prompts["planner"], d, Path(args.src_root), 10)
            if "plan_error" in plan:
                continue

        reach_ok, h_src, stats = interactive_reachability_synthesizer(
            plan, ctx, args, prompts["builder"],
            d, Path(args.src_root), ensure_dir(d / "harness"), ensure_dir(d / "logs"), args.max_a,
            start_src=best_harness_src
        )
        # --- Save successful harness for next cycle ---
        if h_src and stats and stats.get("status") != "error":
             best_harness_src = h_src

        if not reach_ok:
            # Distinguish H0 (Unreachable) vs H1 (Timeout) vs E (Compile Error)
            if not stats: 
                fail_status = "E" # No stats = Compile/Gen Failure
            elif stats.get("status") == "timeout":
                fail_status = "H1"
            else:
                fail_status = "H0"
            
            overall_status, klee_final = update_best(overall_status, klee_final, fail_status, stats)
            continue

        v_status, f_stats, _ = interactive_vulnerability_synthesizer(
            ctx, args, plan, prompts["builder"],
            d, Path(args.src_root), ensure_dir(d / "harness"), ensure_dir(d / "logs"),
            h_src, stats, args.max_b
        )

        overall_status, klee_final = update_best(overall_status, klee_final, v_status, f_stats)
        if overall_status == "H2":
            break

    # Final logic: If we ended up with E but we saw a timeout somewhere, prefer H1
    if klee_final.get("status") == "timeout" and overall_status == "E":
         overall_status = "H1"

    write_json(run_dir / "run_meta.json", {"spec": str(args.spec), "class": overall_status, "klee": klee_final})

    if args.summary_tsv:
        with open(args.summary_tsv, "a", encoding="utf-8") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            f.write(f"{args.spec_stem}\t{overall_status}\t{klee_final.get('status','none')}\t{klee_final.get('elapsed',0):.2f}\n")
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {overall_status}")

if __name__ == "__main__":
    main()
