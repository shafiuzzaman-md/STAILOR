#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver for a *single* spec.
WIRED FOR STATIC ANALYSIS: Automatically consumes fact_pack.json, findings.json, and compile_commands.json.
PATCHED: Includes automated header injection to prevent trivial compilation failures.
UPDATED: 
  - Robust pipe handling (allows shell=True).
  - Increased Planner iterations (15).
  - Added [DEBUG] logs for Builder/Refiner transitions.
  - Added 'execution.log' to capture all console output.
  - Removed error truncation for full build failure logs.
  - Added HISTORY TRUNCATION to prevent LLM 413 "Request Entity Too Large" errors.
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
import fcntl
from pathlib import Path
from typing import Dict, Any, Tuple, List

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
    """Writes to both stdout/stderr and a log file."""
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
    """Redirects sys.stdout and sys.stderr to execution.log."""
    log_path = run_dir / "execution.log"
    # Open in 'a' (append) or 'w' (write). 'w' cleans up old runs.
    f = open(log_path, 'w', encoding='utf-8')
    
    # Redirect
    sys.stdout = Tee(sys.stdout, f)
    sys.stderr = Tee(sys.stderr, f)
    
    print(f"[i] Logging all output to: {log_path}")

# ---------------- BASIC UTILS ----------------

def normalize_flag_list(flags) -> list[str]:
    if not flags: return []
    if isinstance(flags, list) and len(flags) == 1:
        s = flags[0]
        if isinstance(s, str) and " " in s: return shlex.split(s)
    if isinstance(flags, str): return shlex.split(flags)
    return list(flags)

def run_cmd(cmd: list[str] | str, cwd: Path | None = None, timeout: int | None = None, use_shell: bool = False) -> Tuple[int, str, str, float]:
    """
    Runs a command. Supports shell=True for complex agent commands (pipes).
    """
    start = time.monotonic()
    try:
        if use_shell and isinstance(cmd, list):
            cmd_str = " ".join(shlex.quote(x) for x in cmd)
        else:
            cmd_str = cmd 

        proc = subprocess.run(
            cmd_str if use_shell else cmd, 
            cwd=str(cwd) if cwd else None,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE,
            text=True, timeout=timeout,
            shell=use_shell
        )
        elapsed = time.monotonic() - start
        return proc.returncode, proc.stdout, proc.stderr, elapsed
    except subprocess.TimeoutExpired as e:
        elapsed = time.monotonic() - start
        def _to_str(x): return x if isinstance(x, str) else (x.decode('utf-8', 'ignore') if x else "")
        stderr = _to_str(e.stderr) + f"\n[SAILR_TIMEOUT] subprocess timed out after {timeout} seconds."
        return 124, _to_str(e.stdout), stderr, elapsed

def ensure_dir(p: Path) -> Path:
    p.mkdir(parents=True, exist_ok=True)
    return p

def read_json(path: Path) -> Any:
    try:
        with path.open("r", encoding="utf-8") as f: return json.load(f)
    except Exception as e:
        print(f"[!] Error reading JSON {path}: {e}", file=sys.stderr)
        return None

def write_json(path: Path, obj: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        json.dump(obj, f, indent=2, sort_keys=True)

def extract_json_block(text: str) -> str:
    fence_match = re.search(r"```(?:json)?(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if fence_match: return fence_match.group(1).strip()
    return text.strip()

def call_llm_json(system_prompt: str, user_prompt: str, out_dir: Path, tag: str) -> Dict[str, Any]:
    ensure_dir(out_dir)
    messages = [{"role": "system", "content": system_prompt}, {"role": "user", "content": user_prompt}]
    (out_dir / f"{tag}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
    
    raw = llm_chat(messages)
    
    if isinstance(raw, (dict, list)):
        (out_dir / f"{tag}_response.txt").write_text(json.dumps(raw, indent=2), encoding="utf-8")
        return raw if isinstance(raw, dict) else {"_llm_list": raw}

    (out_dir / f"{tag}_response.txt").write_text(str(raw), encoding="utf-8")
    text = extract_json_block(str(raw)).strip()
    if not text: return {"_llm_error": "empty response"}
    if not text.lstrip().startswith("{"):
        m = re.search(r"(\{.*\})", text, flags=re.DOTALL)
        if m: text = m.group(1)
    try: return json.loads(text)
    except Exception as e: return {"_llm_error": f"json_parse_failed: {e}"}

# ---------------- SECURITY & LOOKUP UTILS ----------------

ALLOWED_SHELL_TOOLS = {"rg", "grep", "ls", "find", "sed", "cat", "head", "tail"}

def sanitize_shell_command(cmd: str) -> List[str]:
    """
    Validates command safety. Returns argv list.
    Allows pipes ('|') and semicolons (';'), but blocks dangerous metachars like '&', '`'.
    """
    for ch in ["&", "`"]:
        if ch in cmd: raise ValueError(f"disallowed metacharacter: {ch}")
    if "$(" in cmd or "${" in cmd: raise ValueError("command substitution not allowed")
    
    argv = shlex.split(cmd)
    if not argv: raise ValueError("empty command")
    
    # Check start token
    first_word = argv[0]
    tool = Path(first_word).name
    if tool not in ALLOWED_SHELL_TOOLS:
        raise ValueError(f"tool {first_word!r} not allowed")
        
    return argv

def inject_standard_headers(hsrc: str) -> str:
    headers_map = {
        "<limits.h>": ["INT_MAX", "INT_MIN", "UINT_MAX"],
        "<assert.h>": ["assert(", "__assert_fail", "klee_assert"],
        "<stdint.h>": ["uint8_t", "int32_t", "uint32_t", "uint64_t", "int64_t", "uintptr_t"],
        "<stdlib.h>": ["malloc", "free", "calloc", "realloc", "exit", "abort", "strtoul"],
        "<string.h>": ["memcpy", "memset", "strcpy", "strlen", "memcmp", "strcat", "strdup"],
        "<stdio.h>":  ["printf", "fprintf", "sprintf", "snprintf", "stderr", "stdout"],
        "<stdbool.h>": ["bool", "true", "false"],
        "<stddef.h>": ["NULL", "size_t", "ptrdiff_t", "offsetof"],
    }
    lines = hsrc.splitlines()
    existing_includes = set()
    for line in lines:
        m = re.match(r'^\s*#\s*include\s*[<"]([^>"]+)[>"]', line)
        if m: existing_includes.add(m.group(1))
    
    injections = []
    for header, keywords in headers_map.items():
        if header.strip("<>") not in existing_includes:
            if any(kw in hsrc for kw in keywords):
                injections.append(f"#include {header}")
    
    if not injections: return hsrc
    last_include_idx = -1
    for i, line in enumerate(lines):
        if line.strip().startswith("#include"): last_include_idx = i
    insert_pos = last_include_idx + 1 if last_include_idx != -1 else 0
    return "\n".join(lines[:insert_pos] + injections + lines[insert_pos:])

def looks_like_c(code: str) -> bool:
    if not code or len(code) < 50: return False
    bad = ("copy ", "insert ", "the exact", "example", "should check", "immediately before", "please ")
    if any(b in code.lstrip()[:250].lower() for b in bad): return False
    return any(tok in code for tok in ["#include", "int ", "void ", "typedef", "struct", "klee_make_symbolic", "{", ";"])

def extract_c_code(text: str) -> str | None:
    m = re.search(r"```c(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if m and looks_like_c(m.group(1).strip()): return m.group(1).strip()
    m = re.search(r"```(.*?)```", text, flags=re.DOTALL)
    if m and looks_like_c(m.group(1).strip()): return m.group(1).strip()
    return text.strip() if looks_like_c(text.strip()) else None

def reject_non_code(hsrc: str) -> str | None:
    if re.search(r"^\s*(Copy|Insert|Example|Please|The exact|We need to)\b", hsrc, re.MULTILINE | re.IGNORECASE):
        return "harness begins with natural language instructions"
    if not any(k in hsrc for k in ("#include", "klee_make_symbolic", "klee_assert", "main(", "{")):
        return "missing C structure markers"
    return None

def extract_function_body_at(file_path: Path, line_num: int) -> str:
    try:
        txt = file_path.read_text(encoding="utf-8", errors="ignore")
        lines = txt.splitlines()
        idx = line_num - 1
        if idx < 0 or idx >= len(lines): return f"[error] line {line_num} out of bounds"
        func_start = max(0, idx - 50)
        for i in range(idx, max(-1, idx - 200), -1):
            line = lines[i].strip()
            if re.match(r'^[a-zA-Z_].*\(.*', line) and not line.endswith(';'):
                func_start = i
                break
        return "\n".join(lines[max(0, func_start):min(len(lines), idx + 100)])
    except Exception as e: return f"[error reading file] {e}"

def perform_smart_lookup(src_root: Path, symbols: List[str]) -> str:
    results = []
    for sym in symbols:
        if not re.match(r'^[a-zA-Z_]\w*$', sym): continue
        cmd = ["rg", "-n", "--no-heading", f'\\b{sym}\\s*\\(', "."]
        rc, out, _, _ = run_cmd(cmd, cwd=src_root, timeout=5)
        if rc == 0 and out.strip():
            matches = out.strip().splitlines()[:2]
            found_any = False
            for m in matches:
                parts = m.split(":", 2)
                if len(parts) >= 2:
                    try:
                        fpath = src_root / parts[0].replace("./", "")
                        body = extract_function_body_at(fpath, int(parts[1]))
                        results.append(f"== DEFINITION: {sym} ==\nFile: {parts[0]}:{parts[1]}\nContent:\n{body}\n")
                        found_any = True
                    except: continue
            if not found_any: results.append(f"Symbol '{sym}': matches found but extraction failed.")
        else: results.append(f"Symbol '{sym}': Definition not found.")
    return "\n".join(results)

def find_source_file(src_root: Path, vul_file: str) -> Path:
    direct = src_root / vul_file
    if direct.exists(): return direct
    matches = list(src_root.rglob(vul_file))
    if not matches: raise FileNotFoundError(f"{vul_file} not found under {src_root}")
    return sorted(matches, key=lambda p: len(str(p)))[0]

def ccdb_flags(cc_entry: Dict[str, Any] | None) -> List[str]:
    if not cc_entry: return []
    cmd = cc_entry.get("command")
    argv = shlex.split(cmd) if cmd else cc_entry.get("arguments", [])
    out = []
    i = 0
    while i < len(argv):
        a = argv[i]
        if a in ("-I", "-isystem", "-D", "-U") and i + 1 < len(argv):
            out.extend([a, argv[i + 1]])
            i += 2
        elif any(a.startswith(p) for p in ("-I", "-isystem", "-D", "-U")):
            out.append(a)
            i += 1
        else: i += 1
    return out

# ---------------- CONTEXT & DCV ----------------

def extract_vulnerable_statement_text(lines: List[str], start_line_num: int) -> str:
    idx = start_line_num - 1
    if idx < 0 or idx >= len(lines): return f"[error] line {start_line_num} out of bounds"
    i = idx
    while i >= 0:
        if lines[i].strip().startswith(("if", "while", "for")):
            idx = i
            break
        i -= 1
    stmt = []
    for j in range(0, 10):
        if idx + j >= len(lines): break
        line = lines[idx + j].strip()
        if not line or line.startswith(("/", "*")): continue
        stmt.append(line)
        if line.endswith(("{", ";")): break
    return " ".join(stmt)

def run_dcv(plan_path: Path, ctx: Dict, args: argparse.Namespace) -> Tuple[bool, str]:
    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists(): return True, "" 

    cmd = [sys.executable, str(dcv_script), "--plan", str(plan_path), 
           "--spec", ctx["spec_path"], "--rule-id", args.rule_id, 
           "--project-name", args.project_id]
    
    if ctx.get("fact_pack_path"): cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0:
        return False, f"STDOUT:\n{out}\nSTDERR:\n{err}"
    return True, ""

def build_context(sa_out_dir: Path, src_root: Path, spec_path: Path, vul_file: str, vul_line: int, ctx_dir: Path) -> Dict[str, Any]:
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
    
    func_body = "\n".join(snippet_lines)
    
    cc_entry = None
    ccdb_path = sa_out_dir / "compile_commands.json"
    if ccdb_path.exists():
        try:
            ccdb = read_json(ccdb_path)
            target_abs = src_file.resolve()
            for entry in ccdb:
                if Path(entry.get("directory", "."), entry.get("file", "")).resolve() == target_abs:
                    cc_entry = entry
                    break
        except: pass

    ctx = {
        "spec_path": str(spec_path),
        "spec": spec,
        "vul_file": vul_file,
        "vul_line": vul_line,
        "snippet": snippet_text,
        "vul_statement_text": vul_stmt,
        "fact_pack_path": str(sa_out_dir / "fact_pack.json"),
        "compile_commands_entry": cc_entry,
        "enclosing_function": func_body
    }
    write_json(ctx_dir / "context.json", ctx)
    return ctx

# ---------------- AGENTS ----------------

def interactive_planner(
    ctx: Dict[str, Any], args: argparse.Namespace, planner_prompt: str, prompts_dir: Path, src_root: Path, max_iters: int, feedback_error: str | None
) -> Dict[str, Any]:
    history = []
    if feedback_error:
        history.append(f"SYSTEM: Previous Plan Failed.\nError:\n{feedback_error}\n\nPlease propose a NEW plan.")
    else:
        history.append("STRATEGY: Analyze spec -> Use 'shell' to find function body -> 'final_plan'.")

    # Limit history size to prevent 413 Errors
    MAX_OUT_LEN = 3000

    for i in range(max_iters):
        print(f"\n  --- [Planner Turn {i+1}/{max_iters}] ---")
        
        hist_txt = "\n\n".join(history)
        user_msg = f"""Static Spec: {json.dumps(ctx['spec'], indent=2)}\nSnippet:\n{ctx['snippet']}\nHistory:\n{hist_txt}"""
        
        try:
            resp = call_llm_json(planner_prompt, user_msg, prompts_dir, f"planner_iter{i:03d}")
        except Exception as e:
            print(f"  [!] LLM Call Failed: {e}")
            return {"plan_error": f"LLM API Error: {e}"}

        action = resp.get("action")
        reason = resp.get("reason", "No reasoning provided")

        print(f"  [>] Action: {action}")
        print(f"  [?] Reason: {reason}")

        if action == "shell":
            log = ""
            for cmd in resp.get("commands", []):
                print(f"  [$] Executing: {cmd}")
                try:
                    # FIX: Allow pipes by passing use_shell=True
                    safe_cmd_argv = sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(safe_cmd_argv, cwd=src_root, use_shell=True)
                    
                    # Print summary of output to console
                    out_s = out.strip().replace('\n', ' ')
                    out_s = (out_s[:150] + '...') if len(out_s) > 150 else out_s
                    print(f"      -> RC={rc} | STDOUT: {out_s}")
                    
                    # --- TRUNCATION FOR HISTORY ---
                    # To prevent 413, limit what we store in the prompt
                    out_trunc = out if len(out) < MAX_OUT_LEN else out[:MAX_OUT_LEN] + f"\n... [TRUNCATED {len(out)-MAX_OUT_LEN} chars] ..."
                    err_trunc = err if len(err) < MAX_OUT_LEN else err[:MAX_OUT_LEN] + f"\n... [TRUNCATED {len(err)-MAX_OUT_LEN} chars] ..."
                    
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out_trunc}\nSTDERR:\n{err_trunc}\n"
                except ValueError as e:
                    print(f"  [!] Planner Shell Security Error: {e}")
                    log += f"$ {cmd}\n[SECURITY ERROR] {e}\n"
                except Exception as e:
                    print(f"  [!] Planner Shell Exec Error: {e}")
                    log += f"$ {cmd}\n[EXEC ERROR] {e}\n"
            history.append(log)
        elif action == "lookup_symbols":
            syms = resp.get("symbols", [])
            print(f"  [s] Looking up: {syms}")
            res = perform_smart_lookup(src_root, syms)
            if len(res) > MAX_OUT_LEN:
                res = res[:MAX_OUT_LEN] + "\n... [TRUNCATED] ..."
            history.append(f"LOOKUP RESULTS:\n{res}")
        elif action == "final_plan":
            print("  [=] Planner produced final plan.")
            return resp.get("plan", {})
        else:
            return {"plan_error": f"Planner output invalid action: {action}"}
            
    return {"plan_error": "Planner max iterations exceeded"}

def interactive_builder(
    plan: Dict, ctx: Dict, args: argparse.Namespace, builder_prompt: str, prompts_dir: Path, src_root: Path, harness_dir: Path, logs_dir: Path, max_iters: int, replan_idx: int, project_bc: Path | None
) -> Tuple[bool, str, str, int, int]:
    harness_src = ""
    last_err = ""
    history = []
    MAX_OUT_LEN = 3000
    
    for i in range(max_iters * 2):
        print(f"\n  --- [Builder Turn {i+1}/{max_iters*2}] ---")
        user_msg = f"""Plan: {json.dumps(plan, indent=2)}\nCurrent Harness: {harness_src}\nLast Clang Error: {last_err}\nHistory:\n{chr(10).join(history[-5:])}"""
        
        try:
            resp = call_llm_json(builder_prompt, user_msg, prompts_dir, f"builder_R{replan_idx}_T{i:03d}")
        except Exception as e:
            print(f"  [!] LLM Call Failed: {e}")
            return False, harness_src, f"LLM Crash: {e}", i, i

        action = resp.get("action")
        print(f"  [>] Action: {action}")
        
        if action == "shell":
            cmd = resp.get("command")
            if cmd:
                print(f"  [$] Executing: {cmd}")
                try:
                    safe_cmd_argv = sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(safe_cmd_argv, cwd=src_root, use_shell=True)
                    print(f"      -> RC={rc}")
                    
                    # --- TRUNCATION ---
                    out_trunc = out if len(out) < MAX_OUT_LEN else out[:MAX_OUT_LEN] + "\n...[TRUNCATED]..."
                    err_trunc = err if len(err) < MAX_OUT_LEN else err[:MAX_OUT_LEN] + "\n...[TRUNCATED]..."
                    history.append(f"$ {cmd}\nSTDOUT:\n{out_trunc}\nSTDERR:\n{err_trunc}")
                except ValueError as e:
                    print(f"  [!] Security Error: {e}")
                    history.append(f"$ {cmd}\n[SECURITY ERROR] {e}")
        elif action == "harness":
            raw = resp.get("harness_c", "")
            hsrc = extract_c_code(raw)
            if not hsrc or reject_non_code(hsrc):
                print("  [!] Invalid C code received")
                history.append("SYSTEM: Output invalid C code. Return ONLY C code.")
                continue
            
            print("  [i] Harness received. Attempting compile...")
            harness_src = inject_standard_headers(hsrc)
            hpath = harness_dir / "harness.c"
            hpath.write_text(harness_src, encoding="utf-8")
            
            bc_path = harness_dir / "harness.bc"
            cmd = [args.clang] + args.clang_flags + ["-emit-llvm", "-c", str(hpath), "-o", str(bc_path)]
            rc, out, err, _ = run_cmd(cmd, cwd=src_root)
            
            if rc == 0:
                print("  [+] Compilation Success!")
                return True, harness_src, "", i, i
            
            print(f"  [-] Compilation Failed: {err[:200]}...")
            last_err = err
            history.append(f"SYSTEM: Clang Failed:\n{err}")
    
    return False, harness_src, last_err, max_iters, max_iters * 2

def run_klee(harness_bc: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int) -> Dict:
    ensure_dir(log_dir)
    cmd = [klee] + flags + [str(harness_bc)]
    rc, out, err, t = run_cmd(cmd, timeout=timeout)
    (log_dir / f"klee_{idx}.log").write_text(f"CMD: {' '.join(cmd)}\n\nSTDOUT:\n{out}\n\nSTDERR:\n{err}")
    
    bug = "BUG_ASSERT" in (out + err)
    reach = "REACH_ASSERT" in (out + err)
    status = "assertion_bug" if bug else ("assertion_reach" if reach else ("timeout" if "Timed out" in err else "ok"))
    return {"status": status, "bug_assert_hit": bug, "reach_assert_hit": reach, "elapsed": t}

def interactive_klee_refiner(
    ctx: Dict, args: argparse.Namespace, plan: Dict, refiner_prompt: str, prompts_dir: Path, src_root: Path, harness_dir: Path, logs_dir: Path, harness_src: str, initial_stats: Dict, runs_used: int, max_runs: int, project_bc: Path
) -> Tuple[str, Dict, str]:
    harness = harness_src
    stats = initial_stats
    runs = runs_used
    
    while runs < max_runs:
        print(f"\n  --- [Refiner Run {runs}/{max_runs}] ---")
        user_msg = f"Harness:\n{harness}\nKLEE Stats: {json.dumps(stats, indent=2)}\nGoal: Reach BUG_ASSERT."
        resp = call_llm_json(refiner_prompt, user_msg, prompts_dir, f"refiner_run{runs:02d}")
        action = resp.get("action")
        print(f"  [>] Action: {action}")
        
        if action == "final": return ("H2" if stats.get("bug_assert_hit") else "H0"), stats, harness
        
        if action in ("refine_build_only", "refine_and_run_klee"):
            new_src = extract_c_code(resp.get("harness_c", ""))
            if new_src:
                harness = inject_standard_headers(new_src)
                (harness_dir/"harness.c").write_text(harness, encoding="utf-8")
                
                cmd = [args.clang] + args.clang_flags + ["-emit-llvm", "-c", str(harness_dir/"harness.c"), "-o", str(harness_dir/"harness.bc")]
                rc, _, err, _ = run_cmd(cmd, cwd=src_root)
                if rc != 0: 
                    print(f"  [-] Refinement Compile Failed: {err[:100]}...")
                    continue 
                
                if action == "refine_and_run_klee":
                    runs += 1
                    print("  [i] Running KLEE...")
                    stats = run_klee(harness_dir/"harness.bc", args.klee, args.klee_flags, args.timeout, logs_dir, runs)
                    if stats.get("bug_assert_hit"): return "H2", stats, harness
        
        if action == "shell":
            cmd = resp.get("command")
            if cmd:
                try:
                    # FIX: Allow pipes here too
                    safe_cmd_argv = sanitize_shell_command(cmd)
                    run_cmd(safe_cmd_argv, cwd=src_root, use_shell=True)
                except: pass
    
    return ("H2" if stats.get("bug_assert_hit") else "H1"), stats, harness

# ---------------- MAIN ----------------

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
    ap.add_argument("--clang-flags", dest="clang_flags", nargs="*", default=[])
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", dest="klee_flags", nargs="*", default=[])
    ap.add_argument("--project-bc", default=None)
    ap.add_argument("--max-a", type=int, default=8)
    ap.add_argument("--max-b", type=int, default=12)
    ap.add_argument("--max-cycles", type=int, default=5)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    args = ap.parse_args()

    args.clang_flags = normalize_flag_list(args.clang_flags)
    args.klee_flags = normalize_flag_list(args.klee_flags)
    os.environ["LLM_MODEL"] = args.llm_model
    os.environ["LLM_API_BASE"] = args.llm_api_base.rstrip("/")

    run_dir = Path(args.run_dir).resolve()
    sa_out_dir = Path(args.sa_out_dir).resolve()
    src_root = Path(args.src_root).resolve()
    
    ctx_dir = ensure_dir(run_dir / "ctx")
    prompts_dir = ensure_dir(run_dir / "prompts")

    # --- SETUP LOGGING ---
    setup_logging(run_dir)

    print("[i] Building context...")
    ctx = build_context(sa_out_dir, src_root, Path(args.spec), args.vul_file, args.vul_line, ctx_dir)
    
    args.clang_flags = list(dict.fromkeys(ccdb_flags(ctx.get("compile_commands_entry")) + args.clang_flags))

    prompts_map = make_prompt.generate_prompts(
        args.vul_file, args.vul_line, args.rule_id, ctx.get("vul_statement_text", ""), prompts_dir
    )
    
    planner_prompt = prompts_map["planner"]
    builder_prompt = prompts_map["builder"]
    refiner_prompt = prompts_map["refiner"]

    overall_status = "E"
    klee_final = None
    harness_final = ""
    cycle_feedback = None

    for cycle_idx in range(args.max_cycles):
        print(f"\n[=] CYCLE {cycle_idx+1}/{args.max_cycles}")
        attempt_dir = ensure_dir(run_dir / f"try_{cycle_idx:02d}")
        harness_dir = ensure_dir(attempt_dir / "harness")
        logs_dir = ensure_dir(attempt_dir / "logs")
        
        plan = {}
        # --- PLANNER LOOP ---
        for r_idx in range(3):
            print(f"[i] Planner (replan={r_idx})")
            # --- MAX ITERATIONS: 15 ---
            raw_plan = interactive_planner(ctx, args, planner_prompt, attempt_dir, src_root, 15, cycle_feedback)
            
            if "plan_error" in raw_plan:
                cycle_feedback = raw_plan["plan_error"]
                print(f"[-] Planner failed: {cycle_feedback}")
                continue
            
            plan_path = attempt_dir / f"plan_R{r_idx}.json"
            write_json(plan_path, raw_plan)
            
            dcv_ok, dcv_err = run_dcv(plan_path, ctx, args)
            if not dcv_ok:
                print(f"[!] DCV Rejected Plan: {dcv_err[:200]}...")
                cycle_feedback = f"DCV Plan Validation Failed:\n{dcv_err}"
                continue
            
            plan = raw_plan
            print("[+] Plan Accepted by DCV.")
            cycle_feedback = None
            break
        
        if not plan:
            print("[-] Planner failed to produce valid plan after retries.")
            break

        # --- BUILDER LOOP ---
        print("\n[DEBUG] Starting Builder...")
        build_success, h_src, b_err, _, _ = interactive_builder(
            plan, ctx, args, builder_prompt, attempt_dir, src_root, harness_dir, logs_dir, args.max_a, 0, Path(args.project_bc) if args.project_bc else None
        )
        
        if not build_success:
            error_msg = b_err if b_err else "<No compilation error captured (Builder may have timed out)>"
            # --- REMOVED TRUNCATION FOR FULL ERROR LOG ---
            print(f"[DEBUG] Builder FAILED. Error:\n{error_msg}")
            cycle_feedback = f"Builder failed to compile:\n{error_msg}"
            continue
        
        print("[DEBUG] Builder SUCCEEDED. Harness compiled.")

        # --- BASELINE KLEE ---
        print("[B] Baseline KLEE Run...")
        stats = run_klee(harness_dir/"harness.bc", args.klee, args.klee_flags, args.timeout, logs_dir, 0)
        print(f"[DEBUG] Baseline Result: {stats['status']} (Bug Hit: {stats['bug_assert_hit']})")
        
        if stats["bug_assert_hit"]:
            print("[DEBUG] BUG FOUND in Baseline!")
            overall_status = "H2"
            klee_final = stats
            harness_final = h_src
            break
            
        # --- REFINER LOOP ---
        print("[B] Entering Refiner...")
        status, stats, h_final = interactive_klee_refiner(
            ctx, args, plan, refiner_prompt, attempt_dir, src_root, harness_dir, logs_dir, h_src, stats, 1, args.max_b, Path(args.project_bc) if args.project_bc else None
        )
        
        print(f"[DEBUG] Refiner Finished. Status: {status}")
        
        overall_status = status
        klee_final = stats
        harness_final = h_final
        
        if overall_status == "H2":
            print("[DEBUG] BUG FOUND in Refiner!")
            break
            
        cycle_feedback = f"Refiner finished with {overall_status}. Bug assert not hit."
        print(f"[DEBUG] Cycle failed. Feedback for next cycle: {cycle_feedback}")

    if not klee_final: klee_final = {"status": "not_run", "bug_assert_hit": False}
    
    meta = {
        "spec": str(args.spec),
        "spec_stem": args.spec_stem,
        "class": overall_status,
        "klee": klee_final
    }
    write_json(run_dir / "run_meta.json", meta)
    
    if harness_final:
        (run_dir / "harness_final.c").write_text(harness_final, encoding="utf-8")
        
    if args.summary_tsv:
        with open(args.summary_tsv, "a") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            f.write(f"{args.spec_stem}\t{overall_status}\t{klee_final.get('status')}\t{klee_final.get('elapsed', 0.0):.2f}\n")
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {overall_status}")

if __name__ == "__main__":
    main()