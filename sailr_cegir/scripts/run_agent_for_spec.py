#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver.
UPDATED for 3-Stage Synthesis Pipeline:
  1. Environment Modeling (Planner + Rule-Based Validator)
  2. Reachability Harness Synthesis (Builder + KLEE Reach check)
  3. Vulnerability Harness Synthesis (Refiner + Assertion Validator + KLEE Bug check)
"""

from __future__ import annotations

import argparse
import json
import os
import re
import shlex
import subprocess
import sys
import time
import fcntl
from pathlib import Path
from typing import Dict, Any, Tuple, List

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
    f = open(log_path, 'w', encoding='utf-8')
    sys.stdout = Tee(sys.stdout, f)
    sys.stderr = Tee(sys.stderr, f)
    print(f"[i] Logging all output to: {log_path}")

# ---------------- HARNESS ANALYSIS UTILS ----------------

def get_harness_analysis_string(plan: Dict, harness_src: str) -> str:
    """Generates a text summary of the current harness state for the LLM."""
    out = []
    out.append("[CURRENT HARNESS STATE]")
    
    tf = plan.get("target_function", {})
    if isinstance(tf, str):
        out.append(f"TARGET: {tf}")
    else:
        out.append(f"TARGET: {tf.get('name', 'Unknown')} ({tf.get('file', 'Unknown')})")

    emb = plan.get("embedding_plan")
    if isinstance(emb, dict):
        stubs = emb.get("stub_instead_of_embed", [])
        stub_names = []
        for s in stubs:
            if isinstance(s, dict): stub_names.append(s.get('name', 'Unknown'))
            elif isinstance(s, str): stub_names.append(s)
        stub_list = ", ".join(stub_names) if stub_names else "(None)"
    else:
        stub_list = "(None)"
        
    out.append(f"STUBS (Planned): {stub_list}")

    assertions = re.findall(r'klee_assert\((.*?)\);', harness_src)
    clean_asserts = [" ".join(a.split()) for a in assertions]
    out.append(f"ACTIVE ASSERTIONS: {json.dumps(clean_asserts)}")

    assumptions = re.findall(r'klee_assume\((.*?)\);', harness_src)
    clean_assumes = [" ".join(a.split()) for a in assumptions]
    out.append(f"ACTIVE ASSUMPTIONS: {json.dumps(clean_assumes)}")
    
    return "\n".join(out)

def get_commands_list(resp: Dict[str, Any]) -> List[str]:
    """Robustly extracts commands from LLM response."""
    cmds = []
    if "commands" in resp:
        val = resp["commands"]
        if isinstance(val, list): cmds.extend(val)
        elif isinstance(val, str): cmds.append(val)
    if "command" in resp:
        val = resp["command"]
        if isinstance(val, str): cmds.append(val)
        elif isinstance(val, list): cmds.extend(val)
    return [c for c in cmds if c and isinstance(c, str)]

def log_harness_analysis_console(plan, src):
    print(get_harness_analysis_string(plan, src))

# ---------------- BASIC UTILS ----------------

ALLOWED_SHELL_TOOLS = {"rg", "grep", "ls", "find", "sed", "cat", "head", "tail"}

def normalize_flag_list(flags) -> list[str]:
    if not flags: return []
    if isinstance(flags, list) and len(flags) == 1:
        s = flags[0]
        if isinstance(s, str) and " " in s: return shlex.split(s)
    if isinstance(flags, str): return shlex.split(flags)
    return list(flags)

def sanitize_shell_command(cmd: str) -> List[str]:
    for ch in ["&", "`"]:
        if ch in cmd: raise ValueError(f"disallowed metacharacter: {ch}")
    if "$(" in cmd or "${" in cmd: raise ValueError("command substitution not allowed")
    argv = shlex.split(cmd)
    if not argv: raise ValueError("empty command")
    if Path(argv[0]).name not in ALLOWED_SHELL_TOOLS:
        raise ValueError(f"tool {argv[0]} not allowed")
    return argv

def run_cmd(cmd: list[str] | str, cwd: Path | None = None, timeout: int | None = None, use_shell: bool = False) -> Tuple[int, str, str, float]:
    start = time.monotonic()
    try:
        if use_shell and isinstance(cmd, list): cmd_str = " ".join(shlex.quote(x) for x in cmd)
        else: cmd_str = cmd 
        proc = subprocess.run(cmd_str if use_shell else cmd, cwd=str(cwd) if cwd else None,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, timeout=timeout, shell=use_shell)
        return proc.returncode, proc.stdout, proc.stderr, time.monotonic() - start
    except subprocess.TimeoutExpired as e:
        def _s(x): return x if isinstance(x, str) else (x.decode('utf-8', 'ignore') if x else "")
        return 124, _s(e.stdout), _s(e.stderr) + f"\n[TIMEOUT] {timeout}s", time.monotonic() - start

def ensure_dir(p: Path) -> Path:
    p.mkdir(parents=True, exist_ok=True)
    return p

def read_json(path: Path) -> Any:
    try:
        with path.open("r", encoding="utf-8") as f: return json.load(f)
    except: return None

def write_json(path: Path, obj: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f: json.dump(obj, f, indent=2, sort_keys=True)

def extract_json_block(text: str) -> str:
    """
    Robustly extracts the largest valid JSON object from a string.
    Handles Markdown fences, messy preambles, and C code inside strings.
    """
    # 1. Strip outer Markdown fences if they wrap the whole response
    pattern = r"^```(?:json)?\s*(\{.*\})\s*```$"
    m = re.match(pattern, text.strip(), flags=re.DOTALL | re.IGNORECASE)
    if m:
        return m.group(1)

    # 2. Heuristic: Find the first '{' and the last '}'
    start_idx = text.find('{')
    end_idx = text.rfind('}')
    
    if start_idx == -1 or end_idx == -1 or end_idx < start_idx:
        return text # Let json.loads fail naturally

    # 3. Extract the candidate substring
    candidate = text[start_idx : end_idx + 1]
    return candidate

def call_llm_json(system_prompt: str, user_prompt: str, out_dir: Path, tag: str) -> Dict[str, Any]:
    ensure_dir(out_dir)
    messages = [{"role": "system", "content": system_prompt}, {"role": "user", "content": user_prompt}]
    
    # Save prompt for debugging
    (out_dir / f"{tag}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
    
    raw = llm_chat(messages)
    
    # Save raw response for debugging (CRITICAL for fixing these bugs)
    (out_dir / f"{tag}_raw_response.txt").write_text(str(raw), encoding="utf-8")

    if isinstance(raw, dict): 
        return raw
        
    text = extract_json_block(str(raw))
    
    try:
        # Strict=False helps with control characters inside strings
        return json.loads(text, strict=False)
    except json.JSONDecodeError:
        # --- RECOVERY ATTEMPT ---
        # Sometimes LLMs escape newlines badly in C code. 
        try:
            # Fix: invalid escape sequences for C code newlines
            corrected = text.replace('"\n', '",\n').replace('\n"', ',\n"')
            return json.loads(corrected, strict=False)
        except:
            pass

        return {"_llm_error": "json_parse_failed", "raw": str(raw)}

# ---------------- HELPERS ----------------

def inject_standard_headers(hsrc: str) -> str:
    headers = [
        "<limits.h>", "<assert.h>", "<stdint.h>", "<stdlib.h>", 
        "<string.h>", "<stdio.h>", "<stdbool.h>", "<stddef.h>"
    ]
    # Check if klee.h is missing
    if "<klee/klee.h>" not in hsrc:
        headers.append("<klee/klee.h>")

    injections = [f"#include {h}" for h in headers if h not in hsrc]
    
    # --- FIX: FORCE DEFINITION OF REACH_ASSERT ---
    # This maps the REACH_ASSERT marker to klee_assert(0), which causes
    # KLEE to halt with an "ASSERTION FAIL", proving the line was reached.
    injections.append("#ifndef REACH_ASSERT")
    injections.append("#define REACH_ASSERT klee_assert(0)")
    injections.append("#endif")
    # ---------------------------------------------

    return "\n".join(injections) + "\n" + hsrc

def extract_c_code(text: str) -> str | None:
    m = re.search(r"```c(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if m: return m.group(1).strip()
    m = re.search(r"```(.*?)```", text, flags=re.DOTALL)
    if m: return m.group(1).strip()
    clean_text = text.strip()
    if clean_text.startswith("#include") or "int main" in clean_text:
        return clean_text
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

def find_source_file(src_root: Path, vul_file: str) -> Path:
    direct = src_root / vul_file
    if direct.exists(): return direct
    matches = list(src_root.rglob(vul_file))
    if not matches: raise FileNotFoundError(f"{vul_file} not found under {src_root}")
    return sorted(matches, key=lambda p: len(str(p)))[0]

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
        else:
            results.append(f"Symbol '{sym}': Definition not found.")
    return "\n".join(results)

# ---------------- VALIDATION LOGIC ----------------

def run_dcv(plan_path: Path, ctx: Dict, args: argparse.Namespace) -> Tuple[bool, str]:
    """Runs the Rule-Based Validator (Plan Validator)."""
    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists():
        print("[!] DCV script missing. Skipping validation.")
        return True, "" 

    cmd = [sys.executable, str(dcv_script), "--plan", str(plan_path), 
           "--spec", ctx["spec_path"], "--rule-id", args.rule_id, 
           "--project-name", args.project_id]
    
    if ctx.get("fact_pack_path"):
        cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0:
        return False, f"Rule-Based Validator Rejected the Model:\n{out}\n{err}"
    return True, ""

def validate_harness_integrity(harness_src: str) -> Tuple[bool, str]:
    """
    Stage 3 Validator: Checks for common LLM 'cheats' in the C code.
    Returns (True, "") if clean, or (False, reason) if rejected.
    """
    # Rule 1: No Hardcoded Numbers in BUG_ASSERT
    magic_number_pattern = r'BUG_ASSERT\s*\([^\)]*[<>=]+\s*\d+\s*\)'
    if re.search(magic_number_pattern, harness_src):
        return False, "REJECTED: Usage of hardcoded number (Magic Number) in BUG_ASSERT. You must assert against a variable (e.g., buffer_size), not a constant."

    # Rule 2: No Rigged Allocators (e.g. if(size > 1000) return NULL)
    if "realloc" in harness_src and "return NULL" in harness_src:
        if re.search(r'if\s*\(.*size\s*[><].*\)\s*.*return\s*NULL', harness_src, re.DOTALL):
            return False, "REJECTED: Do not manually rig allocator stubs to fail on specific sizes. Allocators must only fail on real OOM."

    return True, ""

def build_context(sa_out_dir: Path, src_root: Path, spec_path: Path, vul_file: str, vul_line: int, ctx_dir: Path) -> Dict:
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

# ---------------- STAGE 1: ENVIRONMENT MODELING ----------------
def interactive_environment_modeler(
    ctx: Dict[str, Any], 
    args: argparse.Namespace, 
    planner_prompt: str, 
    prompts_dir: Path, 
    src_root: Path, 
    max_iters: int
) -> Dict[str, Any]:
    """Stage 1: Verification Strategy Synthesis."""
    history = []
    history.append("STRATEGY: Analyze spec -> 'shell' to find definitions -> 'final_plan'.")
    feedback_error = None
    seen_shell_actions = set()

    for i in range(max_iters):
        print(f"\n  --- [Environment Modeler Turn {i+1}/{max_iters}] ---")
        
        hist_txt = "\n\n".join(history[-10:]) 
        if feedback_error:
            hist_txt += f"\n\n[SYSTEM FEEDBACK]:\n{feedback_error}\n\nPlease fix the plan violations."

        if i >= max_iters - 2:
            hist_txt += "\n\n[SYSTEM WARNING]: You are running out of turns! Stop searching and output 'final_plan' NOW."

        user_msg = f"Spec: {json.dumps(ctx['spec'], indent=2)}\nSnippet:\n{ctx['snippet']}\nHistory:\n{hist_txt}"
        
        resp = call_llm_json(planner_prompt, user_msg, prompts_dir, f"modeler_iter{i:03d}")
        action = resp.get("action")
        reason = resp.get("reason", "No reasoning provided")

        print(f"  [>] Action: {action}")
        print(f"  [?] Reason: {reason}")
        
        if action == "shell":
            cmds = get_commands_list(resp)
            if not cmds:
                print("  [!] Warning: Empty shell command list.")
                history.append("SYSTEM: Error: You selected 'shell' but provided NO commands.")
                continue

            cmd_signature = tuple(cmds)
            if cmd_signature in seen_shell_actions:
                print("  [!] Warning: Detected duplicate shell commands.")
                history.append(f"SYSTEM: Duplicate commands. Try something else.")
                continue
            seen_shell_actions.add(cmd_signature)

            log = ""
            for cmd in cmds:
                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, use_shell=True)
                    trunc_out = out[:2000] 
                    if len(out) > 2000: trunc_out += "\n...[Output Truncated]..."
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT: {trunc_out}\nSTDERR: {err[:500]}\n"
                    if (rc != 0 or not out.strip()) and (cmd.strip().startswith("/") or "/mnt/" in cmd):
                        log += "\n[SYSTEM HINT]: Do not use absolute paths.\n"
                except Exception as e: log += f"Error: {e}\n"
            history.append(log)
            feedback_error = None

        elif action == "lookup_symbols":
            syms = resp.get("symbols", [])
            print(f"  [s] Looking up: {syms}")
            try:
                res = perform_smart_lookup(src_root, syms)
                history.append(f"LOOKUP:\n{res[:2000]}")
            except Exception as e:
                print(f"  [!] Lookup Failed: {e}")
                history.append(f"SYSTEM ERROR: Lookup failed: {e}")
            feedback_error = None

        elif action == "final_plan":
            raw_plan = resp.get("plan", {})
            temp_plan_path = prompts_dir / "temp_plan.json"
            write_json(temp_plan_path, raw_plan)
            
            valid, msg = run_dcv(temp_plan_path, ctx, args)
            if valid:
                print("  [✓] Model Validated.")
                return raw_plan
            else:
                print("  [x] Validator Rejected Model.")
                feedback_error = msg
        else:
            print(f"  [!] Invalid Action: {action}")
            history.append(f"SYSTEM ERROR: Invalid action '{action}'.")
            
    return {"plan_error": "Max iterations exhausted in modeling phase"}

def run_klee(bc_path: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int) -> Dict:
    ensure_dir(log_dir)
    cmd = [klee] + flags + [str(bc_path)]
    rc, out, err, t = run_cmd(cmd, timeout=timeout)
    
    full_log = f"{out}\n{err}"
    (log_dir/f"klee_{idx}.log").write_text(full_log)
    
    log_tail = full_log[-2000:] if len(full_log) > 2000 else full_log
    
    # 1. BUG Check (Explicit Assertion)
    bug_assert = "BUG_ASSERT" in full_log
    
    # 2. Memory Error Check (Implicit Oracle)
    # Detects: "memory error: out of bound pointer", "invalid pointer", etc.
    memory_error = "memory error" in full_log.lower() or "out of bound" in full_log.lower()
    
    # 3. Reachability Check
    # "REACH_ASSERT" text OR "ASSERTION FAIL: 0" (since we defined REACH_ASSERT as klee_assert(0))
    reach_marker = "REACH_ASSERT" in full_log
    assertion_fail = "ASSERTION FAIL" in full_log
    reach = reach_marker or assertion_fail
    
    # Stage 3 Success = Explicit Bug OR Memory Error
    bug_found = bug_assert or memory_error

    status = "assertion_bug" if bug_found else ("assertion_reach" if reach else ("timeout" if "Timed out" in err else "ok"))
    
    return {
        "status": status, 
        "bug_assert_hit": bug_found, 
        "reach_assert_hit": reach, 
        "elapsed": t,
        "log_tail": log_tail  
    }

# ---------------- STAGE 2: REACHABILITY HARNESS SYNTHESIS ----------------
def interactive_reachability_synthesizer(
    plan: Dict, 
    ctx: Dict, 
    args: argparse.Namespace, 
    prompt: str, 
    prompts_dir: Path, 
    src_root: Path, 
    harness_dir: Path, 
    logs_dir: Path, 
    max_iters: int
) -> Tuple[bool, str, Dict]:
    harness_src = ""
    history = []
    best_stats = {}
    
    SHELL_BUDGET = 10 
    shell_turns = 0
    
    for i in range(max_iters):
        print(f"\n  --- [Reachability Synthesizer Turn {i+1}] ---")
        
        # 1. Generate Feedback
        klee_feedback = ""
        if best_stats:
            status = best_stats.get("status")
            log_tail = best_stats.get("log_tail", "").strip()
            # Escape braces for f-string safety
            log_tail_safe = log_tail.replace("{", "{{").replace("}", "}}")
            
            if status == "assertion_reach":
                return True, harness_src, best_stats
            elif status == "timeout":
                klee_feedback = (f"Previous Run: TIMEOUT.\nLOG:\n{log_tail_safe}\nHINT: Simplify harness.")
            else:
                hint = "HINT: Unreachable."
                if "memory error" in log_tail.lower(): hint += " Fix memory error (check log)."
                elif "undefined reference" in log_tail.lower(): hint += " Fix linker error (missing stub)."
                klee_feedback = (f"Previous Run: UNREACHABLE.\nLOG:\n{log_tail_safe}\n{hint}")

        # 2. Define Status Message (Fixed Scope)
        budget_msg = f"(Shell Budget: {shell_turns}/{SHELL_BUDGET} used)"
        if i >= max_iters - 2:
             print("  [!] SYSTEM: Injecting 'Final Turn' Warning...")
             budget_msg += " CRITICAL: 2 TURNS LEFT. STOP SEARCHING. WRITE HARNESS NOW."

        # 3. Build Prompt
        user_msg = (f"Model: {json.dumps(plan)}\n"
                    f"Status: {budget_msg}\n"
                    f"Harness:\n{harness_src}\n"
                    f"KLEE Feedback:\n{klee_feedback}\n"
                    f"History:\n" + "\n".join(history[-5:]))
                    
        resp = call_llm_json(prompt, user_msg, prompts_dir, f"reach_gen_T{i:02d}")
        
        action = resp.get("action")
        reason = resp.get("reason", "No reasoning provided")
        
        print(f"  [>] Action: {action}")
        print(f"  [?] Reason: {reason}")
        
        if action == "shell":
            if shell_turns >= SHELL_BUDGET:
                print("  [!] HARD CAP: Shell Budget Exceeded.")
                history.append('SYSTEM: SHELL BUDGET EXHAUSTED. Output { "action": "harness" }.')
                continue

            cmds = get_commands_list(resp)
            if not cmds:
                 print("  [!] WARNING: Empty shell command list.")
                 history.append("SYSTEM: Error: You sent 'shell' with no commands.")
                 continue

            shell_turns += 1
            for cmd in cmds:
                try:
                    sanitize_shell_command(cmd)
                    print(f"  [$] Executing: {cmd}")
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, use_shell=True)
                    snippet = out[:200].replace('\n', ' ')
                    print(f"      -> RC={rc} | Output: {snippet}...")
                    if rc != 0 and (cmd.strip().startswith("/") or "/mnt/" in cmd):
                         err += "\nSYSTEM HINT: Do not use absolute paths."
                    history.append(f"$ {cmd}\nRC={rc}\nSTDOUT: {out[:500]}")
                except Exception as e: history.append(f"Error: {e}")

        elif action == "harness":
            raw_harness = resp.get("harness_c", "")
            code = extract_c_code(raw_harness)
            if not code:
                print("  [!] ERROR: No C code found.")
                history.append("SYSTEM ERROR: No code block found. Wrap code in ```c ... ```.")
                continue

            harness_src = inject_standard_headers(code)
            (harness_dir/"harness.c").write_text(harness_src, encoding="utf-8")
            
            # [FIX] Added -g for debug info
            cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_dir/"harness.c"), "-o", str(harness_dir/"harness.bc")]
            rc, _, err, _ = run_cmd(cmd, cwd=src_root)
            
            if rc != 0:
                print(f"  [-] Compile Error:\n{err[:300]}")
                history.append(f"COMPILER ERROR:\n{err[:500]}")
                continue 
            
            print("  [>] Compiles. Checking Reachability...")
            stats = run_klee(harness_dir/"harness.bc", args.klee, args.klee_flags, args.timeout, logs_dir, i)
            best_stats = stats
            
            if stats["reach_assert_hit"] or stats["bug_assert_hit"]:
                print("  [✓] PATH FOUND!")
                return True, harness_src, stats
            else:
                print("  [x] Unreachable.")
                history.append(f"KLEE RESULT: Unreachable (H0). Time: {stats['elapsed']}s")

        else:
             print(f"  [!] ERROR: Invalid Action: {action}")
             if shell_turns > 0:
                 hint = "SYSTEM: Invalid response. You have enough info. Output 'harness' now."
             else:
                 hint = "SYSTEM: Invalid JSON format. Retry."
             history.append(hint)
             continue
                
    return False, harness_src, best_stats

# ---------------- STAGE 3: VULNERABILITY HARNESS SYNTHESIS ----------------

def interactive_vulnerability_synthesizer(
    ctx, args, plan, prompt, prompts_dir, src_root, harness_dir, logs_dir, 
    start_src, start_stats, max_runs
) -> Tuple[str, Dict, str]:
    """Stage 3: Vulnerability Harness Synthesis (Refiner)."""
    src = start_src
    stats = start_stats
    runs = 0
    
    if stats.get("bug_assert_hit"):
        return "H2", stats, src

    while runs < max_runs:
        print(f"\n  --- [Vulnerability Synthesizer Run {runs+1}/{max_runs}] ---")
        
        harness_analysis = get_harness_analysis_string(plan, src)
        klee_log_snippet = stats.get("log_tail", "(No KLEE output available yet)")
        
        user_msg = (
            f"{harness_analysis}\n\n"
            f"Current Harness:\n{src}\n"
            f"KLEE Stats: {json.dumps(stats)}\n"
            f"KLEE Output (Last 2k chars):\n{klee_log_snippet}\n\n"
            f"Goal: Trigger BUG_ASSERT (or trigger a Memory Error)."
        )
        resp = call_llm_json(prompt, user_msg, prompts_dir, f"vuln_gen_{runs:02d}")
        action = resp.get("action")
        print(f"  [>] Action: {action}")
        
        if action == "final":
            if stats.get("bug_assert_hit"): return "H2", stats, src
            return ("H2_REACH", stats, src) 
            
        if "refine" in action:
            new_code = extract_c_code(resp.get("harness_c", ""))
            
            # --- [NEW] ASSERTION VALIDATOR GATE ---
            is_valid, reject_reason = validate_harness_integrity(new_code)
            if not is_valid:
                print(f"  [!] Validator Rejected Harness: {reject_reason}")
                stats = {"log_tail": f"SYSTEM FEEDBACK: {reject_reason} Fix the code and retry."}
                runs += 1
                continue 
            # --------------------------------------

            if new_code:
                src = inject_standard_headers(new_code)
                (harness_dir/"harness.c").write_text(src, encoding="utf-8")
                
                # [FIX] Added -g
                cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_dir/"harness.c"), "-o", str(harness_dir/"harness.bc")]
                rc, _, err, _ = run_cmd(cmd, cwd=src_root)
                if rc != 0:
                    print("  [-] Compile Failed in Refiner")
                    stats = {"log_tail": f"COMPILER ERROR:\n{err[:1000]}"}
                    runs += 1
                    continue
                
                if action == "refine_and_run_klee":
                    runs += 1
                    print("  [i] Running KLEE...")
                    stats = run_klee(harness_dir/"harness.bc", args.klee, args.klee_flags, args.timeout, logs_dir, runs + 100)
                    if stats.get("bug_assert_hit"):
                        print("  [!!!] BUG TRIGGERED!")
                        return "H2", stats, src
                        
    return ("H2_REACH", stats, src)

# ---------------- MAIN PIPELINE ----------------

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
    ap.add_argument("--clang-flags", nargs="*", default=[])
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", nargs="*", default=[])
    ap.add_argument("--project-bc", default=None)
    ap.add_argument("--max-a", type=int, default=15) # Increased per suggestion
    ap.add_argument("--max-b", type=int, default=12)
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
    
    ctx = build_context(Path(args.sa_out_dir), Path(args.src_root), Path(args.spec), args.vul_file, args.vul_line, ensure_dir(run_dir/"ctx"))
    prompts = make_prompt.generate_prompts(args.vul_file, args.vul_line, args.rule_id, ctx.get("vul_statement_text", ""), ensure_dir(run_dir/"prompts"))

    overall_status = "E"
    klee_final = {}
    
    for cycle in range(args.max_cycles):
        print(f"\n[=] PIPELINE CYCLE {cycle+1}/{args.max_cycles}")
        d = ensure_dir(run_dir / f"try_{cycle:02d}")
        
        # --- STAGE 1: ENVIRONMENT MODELING ---
        plan = interactive_environment_modeler(ctx, args, prompts["planner"], d, Path(args.src_root), 8)
        if "plan_error" in plan: 
            print("[!] Modeling Failed.")
            continue
        
        # --- STAGE 2: REACHABILITY HARNESS SYNTHESIS ---
        reach_success, h_src, stats = interactive_reachability_synthesizer(
            plan, ctx, args, prompts["builder"], d, Path(args.src_root), 
            ensure_dir(d/"harness"), ensure_dir(d/"logs"), args.max_a
        )
        
        if not reach_success:
            fail_reason = stats.get('status', 'unknown')
            print(f"[!] Reachability Failed ({fail_reason}). Restarting Pipeline.")
            overall_status = "H0"
            klee_final = stats
            continue
            
        # --- STAGE 3: VULNERABILITY HARNESS SYNTHESIS ---
        print("[+] Path Found. Engaging Vulnerability Synthesizer.")
        vuln_status, final_stats, final_src = interactive_vulnerability_synthesizer(
            ctx, args, plan, prompts["refiner"], d, Path(args.src_root), 
            ensure_dir(d/"harness"), ensure_dir(d/"logs"), h_src, stats, args.max_b
        )
        
        klee_final = final_stats
        if vuln_status == "H2":
            print("[!!!] VULNERABILITY VERIFIED.")
            overall_status = "H2"
            break 
        elif vuln_status == "H2_REACH":
            print("[-] Reached target but could not trigger bug.")
            overall_status = "H2_REACH"
            
    # Final Reporting
    write_json(run_dir / "run_meta.json", {"spec": str(args.spec), "class": overall_status, "klee": klee_final})
    if args.summary_tsv:
        with open(args.summary_tsv, "a") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            f.write(f"{args.spec_stem}\t{overall_status}\t{klee_final.get('status','none')}\t{klee_final.get('elapsed',0):.2f}\n")
            fcntl.flock(f, fcntl.LOCK_UN)
            
    print(f"[✓] Finished {args.spec_stem}: {overall_status}")

if __name__ == "__main__":
    main()