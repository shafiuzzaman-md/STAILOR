#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
run_agent_for_spec.py

Agentic SAILR-CEGIR driver.
UPDATED: 
 - Robust Entrypoint Check (Strip Comments)
 - Robust Log Parsing (.assert.err files)
 - Strict Replay Scoring (Stub bugs downgraded)
 - Removed Safe Incentives
"""

from __future__ import annotations

import argparse
import fcntl
import json
import os
import re
import shlex
import shutil
import struct
import subprocess
import sys
import time
import traceback
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

# ---------------- KTEST PARSER ----------------

class KTestReader:
    """Minimal parser for KLEE .ktest binary files."""
    def __init__(self, path: Path):
        self.path = path
        self.objects = []
        self.version = 0
        try:
            self._parse()
        except Exception as e:
            print(f"  [!] KTest Parse Error ({path.name}): {e}")

    def _parse(self):
        with open(self.path, 'rb') as f:
            data = f.read()
        
        if data[:5] != b'KTEST': raise ValueError("Invalid KTest magic")
        offset = 5
        self.version, = struct.unpack('>I', data[offset:offset+4])
        offset += 4
        num_args, = struct.unpack('>I', data[offset:offset+4])
        offset += 4
        for _ in range(num_args):
            l, = struct.unpack('>I', data[offset:offset+4])
            offset += 4 + l
        if self.version >= 2:
            offset += 8
        num_objs, = struct.unpack('>I', data[offset:offset+4])
        offset += 4
        for _ in range(num_objs):
            nl, = struct.unpack('>I', data[offset:offset+4])
            offset += 4
            name = data[offset:offset+nl].decode('utf-8', 'ignore')
            offset += nl
            dl, = struct.unpack('>I', data[offset:offset+4])
            offset += 4
            obj_data = data[offset:offset+dl]
            offset += dl
            self.objects.append({'name': name, 'data': obj_data})

# ---------------- STUBBED REPRODUCER (FALLBACK) ----------------

def generate_reproducer_src(harness_src: str, inputs: List[Dict[str, Any]]) -> str:
    """Injects concrete input data into the harness as C arrays."""
    data_defs = []
    init_entries = []
    for i, obj in enumerate(inputs):
        byte_str = ", ".join(f"0x{b:02x}" for b in obj['data'])
        vname = f"kdata_{i}"
        data_defs.append(f"static const unsigned char {vname}[] = {{ {byte_str} }};")
        init_entries.append(f"    {{ \"{obj['name']}\", {vname}, {len(obj['data'])} }},")
    init_entries.append("    { NULL, NULL, 0 }")
    
    stub_code = f"""
/* --- CONCRETE REPLAY STUBS (FALLBACK) --- */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

struct KInput {{ const char* name; const unsigned char* data; size_t size; }};
{chr(10).join(data_defs)}
static struct KInput k_inputs[] = {{
{chr(10).join(init_entries)}
}};

void klee_make_symbolic(void *addr, size_t nbytes, const char *name) {{
    for(int i=0; k_inputs[i].name; i++) {{
        if (strcmp(k_inputs[i].name, name) == 0) {{
            size_t copy_sz = nbytes < k_inputs[i].size ? nbytes : k_inputs[i].size;
            memcpy(addr, k_inputs[i].data, copy_sz);
            if (nbytes > copy_sz) memset((char*)addr + copy_sz, 0, nbytes - copy_sz);
            return;
        }}
    }}
    memset(addr, 0, nbytes);
}}

void klee_assume(uintptr_t condition) {{
    if (!condition) {{
        fprintf(stderr, "[Replay] Assumption violated. Skipping.\\n");
        exit(125); 
    }}
}}

void klee_assert(uintptr_t condition) {{
    if (!condition) {{
        fprintf(stderr, "[Replay] klee_assert FAILED (BUG REPRODUCED)\\n");
        abort(); 
    }}
}}
"""
    clean_src = harness_src.replace("#include <klee/klee.h>", "/* #include <klee/klee.h> */")
    return stub_code + "\n" + clean_src

# ---------------- SYSTEM REPRODUCER (PRIMARY) ----------------

def strip_harness_stubs(harness_src: str) -> str:
    lines = harness_src.splitlines()
    cleaned = []
    skipping = False
    for line in lines:
        if "/* --- Stub Functions --- */" in line:
            skipping = True
            cleaned.append("/* [System Replay] Stubs removed to link against real code */")
            continue
        if "/* --- Embedded Functions --- */" in line or "/* --- Harness --- */" in line:
            skipping = False
        if not skipping:
            cleaned.append(line)
    return "\n".join(cleaned)

def find_libkleeRuntest(args: argparse.Namespace) -> Optional[Path]:
    for flag in args.clang_flags:
        if flag.startswith("-I"):
            path = Path(flag[2:]).resolve()
            if path.name == "include":
                lib_dir = path.parent / "lib"
                if (lib_dir / "libkleeRuntest.so").exists(): return lib_dir
                if (lib_dir / "libkleeRuntest.a").exists(): return lib_dir
    klee_bin = shutil.which(args.klee)
    if klee_bin:
        klee_root = Path(klee_bin).resolve().parent.parent
        lib_dir = klee_root / "lib"
        if (lib_dir / "libkleeRuntest.so").exists(): return lib_dir
    for p in ["/usr/local/lib", "/usr/lib", "/usr/lib/klee"]:
        if (Path(p) / "libkleeRuntest.so").exists(): return Path(p)
    return None

def run_system_replay(harness_src: str, src_root: Path, work_dir: Path, ktest_path: Path, args: argparse.Namespace) -> Tuple[str, str, List[str]]:
    """
    Returns: (verdict_type, log_msg, assumptions)
    verdict_type: 'STRICT', 'STUB', 'FAIL', 'SKIP'
    """
    project_bc = Path(args.project_bc) if args.project_bc else None
    if not project_bc or not project_bc.exists():
        return "FAIL", "Project BC not found", []

    lib_dir = find_libkleeRuntest(args)
    if not lib_dir:
        return "FAIL", "libkleeRuntest not found", []

    stripped_src = strip_harness_stubs(harness_src)
    assumptions = []

    driver_c = work_dir / "system_driver.c"
    driver_c.write_text(stripped_src, encoding="utf-8")
    project_o = work_dir / "project.o"
    driver_bin = work_dir / "system_driver.exe"

    cc_bc = [args.clang, "-c", str(project_bc), "-o", str(project_o)] + args.clang_flags
    rc, out, err, _ = run_cmd(cc_bc, cwd=src_root)
    if rc != 0: return "FAIL", f"Project BC Compile Failed:\n{err}", assumptions

    current_flags = ["-Wl,--allow-multiple-definition", "-L", str(lib_dir), "-lkleeRuntest", f"-Wl,-rpath,{lib_dir}"] + args.clang_flags
    
    max_retries = 3
    link_success = False
    
    print(f"  [*] System Replay: Linking... (Adaptive Mode)")
    for attempt in range(max_retries + 1):
        cmd = [args.clang, "-O0", "-g", str(driver_c), str(project_o)] + current_flags + ["-o", str(driver_bin)]
        rc, out, err, _ = run_cmd(cmd, cwd=src_root)
        if rc == 0:
            link_success = True
            break
        
        if attempt < max_retries:
            # Simple linker fixer stub (simulated for brevity)
            if "undefined reference to" in err and "-lz" not in current_flags:
                current_flags.append("-lz") 
            elif "-lm" not in current_flags:
                 current_flags.append("-lm")

    if not link_success:
        return "FAIL", f"System Link Failed:\n{err}", assumptions

    env = os.environ.copy()
    env["KTEST_FILE"] = str(ktest_path)
    
    # 1. Run Hybrid Replay (Standard)
    rc_run, out_run, err_run, _ = run_cmd([str(driver_bin)], cwd=src_root, timeout=3, env=env)
    
    hybrid_crash = False
    if "Assertion" in err_run or "klee_assert" in err_run: hybrid_crash = True
    if rc_run in [134, -6, 139, -11]: hybrid_crash = True

    if not hybrid_crash:
        if rc_run == 0: return "FAIL", "System Replay Passed (No Crash).", assumptions
        return "FAIL", f"Unknown Crash (RC={rc_run}).\nSTDERR:\n{err_run}", assumptions

    # 2. Hybrid Success -> Try Strict
    print("  [*] Hybrid Success. Attempting STRICT Replay (Real Allocators)...")
    
    strict_src = stripped_src
    allocator_pattern = r"(void\s*\*\s*(?:xmlMalloc|malloc|calloc)\s*\([^)]*\)\s*\{[\s\S]*?\n\})"
    
    if re.search(allocator_pattern, strict_src):
        strict_src = re.sub(allocator_pattern, r"/* STUB REMOVED FOR STRICT REPLAY */", strict_src)
        strict_driver_c = work_dir / "strict_driver.c"
        strict_driver_c.write_text(strict_src, encoding="utf-8")
        strict_bin = work_dir / "strict_driver.exe"
        
        cmd_strict = [args.clang, "-O0", "-g", str(strict_driver_c), str(project_o)] + current_flags + ["-o", str(strict_bin)]
        rc_s, _, err_s, _ = run_cmd(cmd_strict, cwd=src_root)
        
        if rc_s == 0:
            rc_run_s, _, err_run_s, _ = run_cmd([str(strict_bin)], cwd=src_root, timeout=3, env=env)
            
            strict_crash = False
            if "Assertion" in err_run_s or "klee_assert" in err_run_s: strict_crash = True
            if rc_run_s in [134, -6, 139, -11]: strict_crash = True
            
            if strict_crash:
                assumptions.append("STRICT REPLAY: PASSED (Real Allocator).")
                return "STRICT", f"STRICT REPLAY CONFIRMED!\nStrict STDERR:\n{err_run_s}", assumptions
            else:
                assumptions.append("STRICT REPLAY: FAILED (Safe with real allocator).")
                return "STUB", f"HYBRID CONFIRMED (Stub Dependent).\n[!] Strict Replay failed.", assumptions
        else:
            assumptions.append("STRICT REPLAY: ERROR (Compilation failed).")
            # If strict compilation fails, we can't be sure, so we mark it STUB/WEAK
            return "STUB", f"HYBRID CONFIRMED. Strict compile failed:\n{err_s}", assumptions

    assumptions.append("STRICT REPLAY: SKIPPED (No allocator stubs detected).")
    return "STRICT", f"STRICT REPLAY CONFIRMED (Implicit).\nSTDERR:\n{err_run}", assumptions

# ---------------- HELPER: FIND CRASH KTEST ----------------

def find_crash_ktest(logs_dir: Path, idx: int) -> Optional[Path]:
    klee_out = logs_dir / f"klee-out-{idx}"
    if not klee_out.exists(): return None
    
    for ext in [".assert.err", ".ptr.err", ".abort.err", ".external.err"]:
        err_files = list(klee_out.glob(f"*{ext}"))
        if err_files:
            stem = err_files[0].name.replace(ext, "")
            ktest = klee_out / f"{stem}.ktest"
            if ktest.exists(): return ktest
            
    ktests = list(klee_out.glob("*.ktest"))
    if ktests: return sorted(ktests)[-1]
    return None

# ---------------- DISPATCHER ----------------

def run_reproducer_suite(harness_src: str, src_root: Path, work_dir: Path, ktest_path: Optional[Path], args: argparse.Namespace) -> Tuple[str, str]:
    """
    Returns (verdict, details)
    verdict: 'CONFIRMED' (Strict), 'WEAK' (Stub only), 'FAILED'
    """
    if ktest_path and args.project_bc:
        print("  [*] Attempting System Replay (Real Code)...")
        verdict, sys_msg, assumptions = run_system_replay(harness_src, src_root, work_dir, ktest_path, args)
        
        if verdict == "STRICT":
            return "CONFIRMED", f"Status: CONFIRMED (True Positive)\nMethod: Strict Replay\n{sys_msg}"
        elif verdict == "STUB":
            return "WEAK", f"Status: WEAK (Stub Dependent)\nMethod: Hybrid Replay Only\n{sys_msg}"
        else:
            return "FAILED", f"System Replay Failed.\n{sys_msg}"

    # Fallback to Stubbed Replay (GCC)
    if ktest_path:
        print("  [*] Attempting Stubbed Replay (GCC)...")
        try:
            reader = KTestReader(ktest_path)
            if reader.objects:
                stub_src = generate_reproducer_src(harness_src, reader.objects)
                stub_c = work_dir / "stub_driver.c"
                stub_bin = work_dir / "stub_driver.exe"
                stub_c.write_text(stub_src, encoding="utf-8")
                
                cc_cmd = ["gcc", "-O0", "-g", "-w", str(stub_c), "-o", str(stub_bin)]
                rc, out, err, _ = run_cmd(cc_cmd, cwd=src_root)
                if rc == 0:
                    rc_run, _, err_run, _ = run_cmd([str(stub_bin)], cwd=src_root, timeout=3)
                    if rc_run == 125: return "FAILED", "SKIPPED: Stub Assumption Violated."
                    if rc_run != 0: return "WEAK", "SUCCESS: Bug Reproduced in Stubbed Harness (GCC)."
                    return "FAILED", "Stubbed Replay Passed (FP Harness)."
                else:
                    return "FAILED", f"Stubbed Compilation Failed: {err}"
        except Exception as e:
            return "FAILED", f"KTest Parse Error: {e}"

    return "FAILED", "No Replay Strategy Available"

# ---------------- LOGGING / UTILS ----------------

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

def summarize_log(log_text: str, context: str = "Log") -> str:
    if not log_text: return f"[{context}] (Empty)"
    lines = log_text.splitlines()
    summary = []
    interesting_patterns = ["error:", "warning:", "assertion failed", "KLEE: ERROR", "BUG_ASSERT", "REACH_ASSERT", "Segmentation fault"]
    hits = [line for line in lines if any(p in line for p in interesting_patterns)]
    if hits:
        summary.append(f"--- {context} HIGHLIGHTS (Errors/Asserts) ---")
        summary.extend(hits[:10])
    summary.append(f"--- {context} TAIL ---")
    summary.extend(lines[-15:])
    return "\n".join(summary)

def normalize_flag_list(flags) -> List[str]:
    if not flags: return []
    if isinstance(flags, list) and len(flags) == 1:
        s = flags[0]
        if isinstance(s, str) and " " in s: return shlex.split(s)
    if isinstance(flags, str): return shlex.split(flags)
    return list(flags)

def sanitize_shell_command(cmd: str) -> List[str]:
    for ch in ["`"]:
        if ch in cmd: raise ValueError(f"disallowed metacharacter: {ch}")
    if "$(" in cmd or "${" in cmd: raise ValueError("command substitution not allowed")
    try: parts = shlex.split(cmd)
    except ValueError: raise ValueError("Shell command parsing failed")
    if not parts: raise ValueError("empty command")
    return parts

def run_cmd(cmd: List[str] | str, cwd: Path | None = None, timeout: int | None = None, use_shell: bool = False, env: Dict = None) -> Tuple[int, str, str, float]:
    start = time.monotonic()
    try:
        cmd_str = " ".join(shlex.quote(x) for x in cmd) if (use_shell and isinstance(cmd, list)) else cmd
        proc = subprocess.run(
            cmd_str if use_shell else cmd, cwd=str(cwd) if cwd else None,
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True,
            timeout=timeout, shell=use_shell, env=env
        )
        return proc.returncode, proc.stdout, proc.stderr, time.monotonic() - start
    except subprocess.TimeoutExpired as e:
        def _s(x): return x if isinstance(x, str) else (x.decode("utf-8", "ignore") if x else "")
        return 124, _s(e.stdout), _s(e.stderr) + f"\n[TIMEOUT] {timeout}s", time.monotonic() - start

def ensure_dir(p: Path) -> Path:
    p.mkdir(parents=True, exist_ok=True)
    return p

def read_json(path: Path) -> Any:
    try:
        with path.open("r", encoding="utf-8") as f: return json.load(f)
    except Exception: return None

def write_json(path: Path, obj: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f: json.dump(obj, f, indent=2, sort_keys=True)

def extract_json_block(text: str) -> str:
    pattern = r"^```(?:json)?\s*(\{.*\})\s*```$"
    m = re.match(pattern, text.strip(), flags=re.DOTALL | re.IGNORECASE)
    if m: return m.group(1)
    start_idx = text.find("{")
    end_idx = text.rfind("}")
    if start_idx == -1 or end_idx == -1 or end_idx < start_idx: return text
    return text[start_idx:end_idx + 1]

def call_llm_json(system_prompt: str, user_prompt: str, out_dir: Path, tag: str) -> Dict[str, Any]:
    ensure_dir(out_dir)
    messages = [{"role": "system", "content": system_prompt}, {"role": "user", "content": user_prompt}]
    (out_dir / f"{tag}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
    raw = llm_chat(messages)
    (out_dir / f"{tag}_raw_response.txt").write_text(str(raw), encoding="utf-8")
    if isinstance(raw, dict): return raw
    text = extract_json_block(str(raw))
    try: return json.loads(text, strict=False)
    except Exception: return {"_llm_error": "json_parse_failed", "raw": str(raw)}

def get_commands_list(resp: Dict[str, Any]) -> List[str]:
    cmds: List[str] = []
    if "commands" in resp:
        v = resp["commands"]
        if isinstance(v, list): cmds.extend(v)
        elif isinstance(v, str): cmds.append(v)
    if "command" in resp:
        v = resp["command"]
        if isinstance(v, list): cmds.extend(v)
        elif isinstance(v, str): cmds.append(v)
    return [c for c in cmds if isinstance(c, str) and c.strip()]

# ---------------- SOURCE HELPERS ----------------

def extract_c_code(text: str) -> str | None:
    m = re.search(r"```c(.*?)```", text, flags=re.DOTALL | re.IGNORECASE)
    if m: return m.group(1).strip()
    m = re.search(r"```(.*?)```", text, flags=re.DOTALL)
    if m: return m.group(1).strip()
    t = (text or "").strip()
    if t.startswith("#include") or "int main" in t: return t
    return None

def extract_function_body_at(file_path: Path, line_num: int) -> str:
    try:
        txt = file_path.read_text(encoding="utf-8", errors="ignore")
        lines = txt.splitlines()
        idx = line_num - 1
        if idx < 0 or idx >= len(lines): return f"[error] line {line_num} out of bounds"
        func_start = max(0, idx - 50) 
        for i in range(idx, max(-1, idx - 300), -1):
            line = lines[i].strip()
            if re.match(r"^[a-zA-Z_][\w\s\*]+\s+[a-zA-Z_]\w*\s*\(", line) and not line.endswith(";"):
                func_start = i
                break
        return "\n".join(lines[max(0, func_start):min(len(lines), idx + 200)])
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
    stmt: List[str] = []
    for j in range(0, 10):
        if idx + j >= len(lines): break
        line = lines[idx + j].strip()
        if not line or line.startswith(("/", "*")): continue
        stmt.append(line)
        if line.endswith(("{", ";")): break
    return " ".join(stmt)

def perform_smart_lookup(src_root: Path, symbols: List[str]) -> str:
    results: List[str] = []
    for sym in symbols:
        if not re.match(r"^[a-zA-Z_]\w*$", sym): continue
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
                    except Exception: continue
        else: results.append(f"Symbol '{sym}': Definition not found.")
    return "\n".join(results)

# ---------------- HARNESS INJECTION + VALIDATION ----------------

def inject_standard_headers(hsrc: str) -> str:
    headers = ["<limits.h>", "<assert.h>", "<stdint.h>", "<stdlib.h>", "<string.h>", "<stdio.h>", "<stdbool.h>", "<stddef.h>"]
    if "<klee/klee.h>" not in hsrc: headers.append("<klee/klee.h>")
    injections = [f"#include {h}" for h in headers if h not in hsrc]
    injections += [
        "#ifndef REACH_ASSERT", '#define REACH_ASSERT klee_assert(0 && "REACH_ASSERT")', "#endif",
        "#ifndef BUG_ASSERT", '#define BUG_ASSERT(cond) klee_assert((cond) && "BUG_ASSERT")', "#endif",
    ]
    return "\n".join(injections) + "\n" + hsrc

def _pick_llvm_link(explicit: Optional[str]) -> Optional[str]:
    if explicit and shutil.which(explicit): return explicit
    for cand in ("llvm-link-14", "llvm-link"):
        if shutil.which(cand): return cand
    return None

def compile_harness_to_bc(args: argparse.Namespace, src_root: Path, harness_c: Path, out_bc: Path, project_bc: Optional[Path]) -> Tuple[bool, str, Path]:
    cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_c), "-o", str(out_bc)]
    rc, out, err, _ = run_cmd(cmd, cwd=src_root)
    if rc != 0: return False, (out + "\n" + err), out_bc
    if project_bc and project_bc.exists():
        llvm_link = _pick_llvm_link(getattr(args, "llvm_link", None))
        if not llvm_link: return True, "[warn] llvm-link missing; running harness only.", out_bc
        linked_bc = out_bc.parent / "harness.linked.bc"
        lcmd = [llvm_link, str(out_bc), str(project_bc), "-o", str(linked_bc)]
        lrc, lout, lerr, _ = run_cmd(lcmd, cwd=src_root)
        if lrc != 0: return True, f"[warn] Link failed: {lerr}", out_bc
        return True, "", linked_bc
    return True, "", out_bc

# ---------------- VALIDATION: DCV ----------------

def run_dcv(plan_path: Path, ctx: Dict[str, Any], args: argparse.Namespace) -> Tuple[bool, str]:
    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists(): return True, ""
    cmd = [sys.executable, str(dcv_script), "--plan", str(plan_path), "--spec", ctx["spec_path"], "--rule-id", args.rule_id, "--project-name", args.project_id]
    if ctx.get("fact_pack_path"): cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0: return False, f"Rule-Based Validator Rejected the Model:\n{out}\n{err}"
    return True, ""

# ---------------- CONTEXT BUILD ----------------

def build_context(sa_out_dir: Path, src_root: Path, spec_path: Path, vul_file: str, vul_line: int, ctx_dir: Path) -> Dict[str, Any]:
    ensure_dir(ctx_dir)
    spec = read_json(spec_path)
    (ctx_dir / "spec.json").write_text(json.dumps(spec, indent=2), encoding="utf-8")
    
    src_file = find_source_file(src_root, vul_file)
    
    try:
        shutil.copy2(src_file, ctx_dir / src_file.name)
        print(f"  [i] Copied vulnerable file to: {ctx_dir / src_file.name}")
    except Exception as e:
        print(f"  [!] Failed to copy source file: {e}")

    full_src = src_file.read_text(encoding="utf-8", errors="ignore")
    lines = full_src.splitlines()
    
    MAX_FULL_CONTEXT_LINES = 2000
    if len(lines) <= MAX_FULL_CONTEXT_LINES:
        print(f"  [i] Context: File '{vul_file}' is {len(lines)} lines. Using FULL SOURCE.")
        final_context_code = full_src
    else:
        print(f"  [i] Context: File '{vul_file}' is {len(lines)} lines (Huge). Using HYBRID Context.")
        target_body = extract_function_body_at(src_file, vul_line)
        header_lines = lines[:150]
        header_text = "\n".join(header_lines)
        final_context_code = (
            f"/* --- PART 1: FILE HEADER (Imports/Structs) --- */\n{header_text}\n"
            f"\n/* ... [ {len(lines) - 300} lines omitted ] ... */\n"
            f"\n/* --- PART 2: TARGET FUNCTION (Focus) --- */\n{target_body}"
        )

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
        "enclosing_function": final_context_code,
        "local_source_path": str(ctx_dir / src_file.name) 
    }
    write_json(ctx_dir / "context.json", ctx)
    return ctx

# ---------------- PHASE 1: FROZEN CONTEXT ANALYSIS ----------------

def run_frozen_analysis(ctx: Dict[str, Any], args: argparse.Namespace, planner_prompt: str, out_dir: Path, src_root: Path) -> Dict[str, Any]:
    print("\n[=] PHASE 1: Frozen Context Analysis (Identifying Entrypoint & Logic)")
    ensure_dir(out_dir)
    history = ["STRATEGY: Analyze spec -> 'shell' to verify call paths -> 'final_plan'."]
    
    for i in range(5): 
        print(f"  --- [Analysis Turn {i+1}/5] ---")
        hist_txt = "\n\n".join(history[-5:])
        
        anti_grep_msg = ""
        if len(ctx['enclosing_function'].splitlines()) > 50:
            target_fname = Path(ctx['vul_file']).name
            anti_grep_msg = (
                f"\n[SYSTEM NOTICE]: FULL SOURCE CODE for '{target_fname}' IS PROVIDED ABOVE.\n"
                f"1. DO NOT use 'grep' or 'find' on '{target_fname}' itself. Read the text directly.\n"
                f"2. You MAY use 'grep' to search OTHER files for missing symbols/definitions.\n"
                "Proceed to 'final_plan' if you have identified the entrypoint."
            )

        user_msg = (
            f"Spec: {json.dumps(ctx['spec'], indent=2)}\n"
            f"SOURCE CODE CONTEXT:\n{ctx['enclosing_function']}\n" 
            f"History:\n{hist_txt}\n"
            f"{anti_grep_msg}\n"
            f"GOAL: Identify the Public Entrypoint and Exact BUG_ASSERT logic."
        )
        
        resp = call_llm_json(planner_prompt, user_msg, out_dir, f"frozen_iter{i:03d}")
        action = resp.get("action")
        
        if action == "shell":
            log = ""
            for cmd in get_commands_list(resp):
                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:2000]}\n"
                except Exception as e: log += f"Error: {e}\n"
            history.append(log)
            
        elif action == "lookup_symbols":
            res = perform_smart_lookup(src_root, resp.get("symbols", []))
            history.append(f"LOOKUP:\n{res[:4000]}")
            
        elif action == "final_plan":
            raw_plan = resp.get("plan", {})
            
            # Entrypoint Compliance
            required_entry = ctx["spec"].get("entrypoint")
            planned_entry = raw_plan.get("entrypoint", {}).get("name")
            
            if required_entry and planned_entry != required_entry:
                print(f"  [!] Plan Rejected: Entrypoint Mismatch. Spec requires '{required_entry}', Plan has '{planned_entry}'.")
                history.append(
                    f"CRITICAL PLAN ERROR: You selected '{planned_entry}' as the entrypoint, "
                    f"but the mission specification STRICTLY REQUIRES '{required_entry}'.\n"
                    f"You MUST use '{required_entry}' as the public API wrapper in your harness.\n"
                    f"Update your plan to call '{required_entry}'."
                )
                continue

            valid, msg = run_dcv(out_dir / "temp_plan.json" if write_json(out_dir / "temp_plan.json", raw_plan) else out_dir / "temp_plan.json", ctx, args)
            if valid:
                print("  [✓] Frozen Plan Locked.")
                return raw_plan
            else: history.append(f"VALIDATOR ERROR: {msg}")
            
    return {"plan_error": "Analysis Failed"}

# ---------------- KLEE UTILS ----------------

def check_for_assert_files(log_dir: Path) -> Tuple[bool, bool]:
    """Scan KLEE output directory for .assert.err or similar."""
    if not log_dir.exists(): return False, False
    
    bug_hit = False
    reach_hit = False
    
    # Check for specific KLEE error files
    for err_file in log_dir.glob("*.err"):
        content = err_file.read_text(errors="ignore")
        if "BUG_ASSERT" in content: bug_hit = True
        if "REACH_ASSERT" in content: reach_hit = True
        
    return bug_hit, reach_hit

def run_klee(bc_path: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int) -> Dict[str, Any]:
    ensure_dir(log_dir)
    # Clear previous error files to ensure no cross-run pollution
    for f in log_dir.glob("*.err"): f.unlink()
    
    cmd = [klee] + flags + ["--output-dir", str(log_dir / f"klee-out-{idx}")] + [str(bc_path)]
    rc, out, err, t = run_cmd(cmd, timeout=timeout)
    full_log = f"{out}\n{err}"
    (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")
    
    # Robust Log Parsing: Check specific KLEE error files first
    klee_out_dir = log_dir / f"klee-out-{idx}"
    bug_assert, reach_assert = check_for_assert_files(klee_out_dir)
    
    # Fallback to log text if no error files (e.g. timeout kills it before file write)
    if not bug_assert and "BUG_ASSERT" in full_log and "ASSERTION FAIL" in full_log:
        bug_assert = True
    if not reach_assert and "REACH_ASSERT" in full_log and "ASSERTION FAIL" in full_log:
        reach_assert = True
    
    if bug_assert:
        status = "assertion_bug"
    elif reach_assert:
        status = "assertion_reach"
    elif rc == 124:
        status = "timeout"
    else:
        status = "ok"
        
    return {
        "status": status, 
        "bug_assert_hit": bug_assert, 
        "reach_assert_hit": reach_assert, 
        "elapsed": t, 
        "full_log": full_log
    }

# ---------------- PHASE 2: REFINEMENT LOOP ----------------

def strip_c_comments_and_strings(text: str) -> str:
    """Removes C comments and string literals to prevent regex bypass."""
    # Pattern captures: strings, chars, // comments, /* comments */
    pattern = r'(".*?"|\'.*?\'|//.*?$|/\*.*?\*/)'
    # Replace all matches with a single space
    return re.sub(pattern, ' ', text, flags=re.MULTILINE|re.DOTALL)

def validate_harness_calls_entrypoint(harness_src: str, entrypoint: str) -> bool:
    if not entrypoint: return True
    # Clean code first
    clean_code = strip_c_comments_and_strings(harness_src)
    # Check for function call pattern in code
    pattern = re.compile(rf"\b{re.escape(entrypoint)}\s*[(\;]")
    return bool(pattern.search(clean_code))

def check_klee_completion(log_text: str) -> bool:
    if "KLEE: done" not in log_text: return False
    if "halted on" in log_text: return False
    return True

def interactive_synthesizer(
    frozen_plan: Dict[str, Any], ctx: Dict[str, Any], args: argparse.Namespace, builder_prompt: str,
    out_dir: Path, src_root: Path, harness_dir: Path, logs_dir: Path, max_iters: int
) -> Tuple[str, Dict[str, Any]]:

    harness_src = ""
    history = []
    
    # Initialize best_stats with baseline
    best_stats = {"status": "none", "score": 0} 
    best_label = "E"
    
    required_entrypoint = frozen_plan.get("entrypoint", {}).get("name")

    print("\n[=] PHASE 2: Iterative Refinement (Concrete -> Symbolic)")

    for i in range(max_iters):
        print(f"\n  --- [Refinement Turn {i+1}/{max_iters}] ---")
        
        # --- [Prompt Construction & LLM Call] ---
        feedback_section = ""
        if history: feedback_section = f"PREVIOUS ATTEMPT FEEDBACK:\n{history[-1]}"
        
        anti_search_msg = ""
        if len(ctx['enclosing_function'].splitlines()) > 50:
            target_fname = Path(ctx['vul_file']).name
            anti_search_msg = (
                f"\n[SYSTEM NOTICE]: FULL SOURCE for '{target_fname}' IS LOADED ABOVE.\n"
                f"- DO NOT use `find` or `ls` to look for '{target_fname}'.\n"
                f"- Focus on writing the harness. Only use shell if you need EXTERNAL headers."
            )

        warning_msg = ""
        if i >= max_iters - 3:
             warning_msg = (f"\n\n[SYSTEM CRITICAL]: You have used {i}/{max_iters} turns. You MUST stop analyzing and output a 'harness' NOW.")

        user_msg = (
            f"TARGET CODE CONTEXT:\n```c\n{ctx['enclosing_function']}\n```\n"
            f"Frozen Plan: {json.dumps(frozen_plan, indent=2)}\n"
            f"Current Harness:\n{harness_src}\n"
            f"{feedback_section}\n{anti_search_msg}\n{warning_msg}\n"
            f"TASK: Fix errors. Ensure KLEE reaches target.\n"
            f"CRITICAL: Output the COMPLETE harness code in a markdown ```c ... ``` block. Do not use JSON."
        )

        ensure_dir(out_dir)
        messages = [{"role": "system", "content": builder_prompt}, {"role": "user", "content": user_msg}]
        (out_dir / f"refine_T{i:02d}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
        
        raw_response = llm_chat(messages)
        (out_dir / f"refine_T{i:02d}_raw_response.txt").write_text(str(raw_response), encoding="utf-8")
        
        # --- [Shell Handling] ---
        try:
            if '"action": "shell"' in str(raw_response) or "'action': 'shell'" in str(raw_response):
                resp_json = json.loads(extract_json_block(str(raw_response)))
                if resp_json.get("action") == "shell":
                    log = ""
                    for cmd in get_commands_list(resp_json):
                        print(f"  [$] Executing: {cmd}")
                        try:
                            sanitize_shell_command(cmd)
                            rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                            log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:2000]}\n"
                        except Exception as e: 
                            log += f"Error: {e}\n"
                            print(f"  [!] Shell Error: {e}")
                    history.append(log)
                    continue
        except:
            pass

        code = extract_c_code(str(raw_response))
        if not code:
            print("  [!] Error: Agent returned no code.")
            history.append("System: You failed to provide a ```c code block. You must output the full C harness.")
            continue
            
        # --- [Entrypoint Guard] ---
        if required_entrypoint and not validate_harness_calls_entrypoint(code, required_entrypoint):
            print(f"  [!] Generated harness does not call required entrypoint: {required_entrypoint}")
            history.append(f"SYSTEM ERROR: Your harness MUST call the function '{required_entrypoint}', but it was not found. Do not swap the entrypoint.")
            continue

        print(f"  [>] Generated Harness ({len(code)} bytes).")
        harness_src = inject_standard_headers(code)
        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")

        print("  [*] Compiling to Bitcode...")
        okc, msg, bc = False, "", Path("")
        try:
             okc, msg, bc = compile_harness_to_bc(args, src_root, harness_dir/"harness.c", harness_dir/"harness.bc", Path(args.project_bc) if args.project_bc else None)
        except Exception as e:
             print(f"  [!] CRITICAL: Python Exception during compilation: {e}")
             traceback.print_exc()
             history.append(f"SYSTEM ERROR during compilation: {e}")
             continue
             
        if not okc:
            summary = summarize_log(msg, "Clang Error")
            history.append(f"COMPILATION ERROR (Summarized):\n{summary}")
            print(f"  [!] Compilation Failed. Feedback sent.")
            continue

        print(f"  [*] Running KLEE...")
        stats = run_klee(bc, args.klee, args.klee_flags, args.timeout, logs_dir, i)
        log_summary = summarize_log(stats['full_log'], "KLEE Log")

        # =========================================================
        #   UNIFIED SCORING LOGIC
        # =========================================================
        
        current_score = 0
        current_label = "E"
        
        # Case A: KLEE reports a BUG
        if stats["bug_assert_hit"]:
            print("  [!] Bug Found! Identifying inputs for Replay...")
            ktest_file = find_crash_ktest(logs_dir, i)
            
            repro_verdict, repro_msg = run_reproducer_suite(harness_src, src_root, harness_dir, ktest_file, args)
            
            if repro_verdict == "CONFIRMED":
                print("  [✓] STRICT Replay CONFIRMED the bug.")
                (out_dir.parent / "reproduction_success.txt").write_text(repro_msg, encoding="utf-8")
                stats["reproduced"] = True
                stats["status"] = "reproduced_strict"
                # STRICT > ALL: Immediate Exit
                return "H2_BUG", stats # Score 3
            
            elif repro_verdict == "WEAK":
                # [Fix 1] Map Stub-Only bugs to H2_REACH to maintain binary labels
                print("  [~] STUB Replay success (Strict failed). Downgrading to H2_REACH (Stub-Only).")
                current_score = 2
                current_label = "H2_REACH"
                
                # Metadata for analysis, but Score is 2
                stats["replay_verdict"] = "stub_only"
                stats["bug_assert_hit"] = False 
                stats["status"] = "assertion_reach"
                
                history.append(f"KLEE found a bug, but Strict Replay failed (Stub Only).\nDowngraded to H2_REACH.\nREPLAY LOG:\n{repro_msg}")

            else:
                print(f"  [X] Replay FAILED completely. Downgrading to H2_REACH.")
                current_score = 2
                current_label = "H2_REACH"
                
                stats["replay_verdict"] = "failed"
                stats["bug_assert_hit"] = False
                stats["status"] = "assertion_reach"
                
                history.append(f"KLEE found a bug, but Concrete Replay failed (False Positive).\nDowngraded to Reachable.\nREPLAY LOG:\n{repro_msg}")

        # Case B: KLEE reports REACH only
        elif stats["reach_assert_hit"]:
            current_score = 2
            current_label = "H2_REACH"
            
            if check_klee_completion(stats['full_log']):
                msg = "EXPLORATION COMPLETE (NO BUG): Target reached, KLEE finished paths, but BUG_ASSERT never failed."
                history.append(f"KLEE: {msg}\n[SYSTEM TIP]: You must relax constraints or change inputs to trigger the crash.")
            else:
                history.append(f"KLEE: REACHED target (H2_REACH), but BUG_ASSERT did not fail.\nLog Summary:\n{log_summary}")

        # Case C: Timeout
        elif stats["status"] == "timeout":
            current_score = 1
            current_label = "H1"
            history.append(f"KLEE: Timeout ({args.timeout}s). Target not reached.\nLog Summary:\n{log_summary}")

        # Case D: Stuck/Error
        else:
            current_score = 0.5
            current_label = "H0"
            history.append(f"KLEE: {stats['status']}\nLog Summary:\n{log_summary}")

        print(f"  [=] Result: {current_label} (Score: {current_score})")

        # [Fix 2] Use >= to prefer the latest iteration in case of ties
        # This prevents early "Stub Only" results from blocking later "Better Reach" results
        if current_score >= best_stats.get("score", 0):
            best_stats = stats
            best_stats["score"] = current_score
            best_label = current_label

    return best_label, best_stats
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
    
    # Arguments for Replay Mode
    ap.add_argument("--reproduce", action="store_true", help="Run validation only (skip agents)")
    ap.add_argument("--reproduce-ktest", help="Path to .ktest file for reproduction")
    
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

    if args.reproduce:
        print("\n[=] MODE: Validation Only (Skipping Agents)")
        harness_path = run_dir / "refinement" / "harness" / "harness.c"
        if not harness_path.exists():
            print(f"  [!] Error: Harness not found at {harness_path}")
            return

        ktest = Path(args.reproduce_ktest) if args.reproduce_ktest else None
        if not ktest:
            print("  [i] No --reproduce-ktest provided. Searching logs for crashes...")
            logs_dir = run_dir / "refinement" / "logs"
            for k_dir in sorted(logs_dir.glob("klee-out-*"), reverse=True):
                found = find_crash_ktest(logs_dir, int(k_dir.name.split("-")[-1]))
                if found:
                    ktest = found
                    break
        
        if not ktest or not ktest.exists():
            print("  [!] Error: No valid .ktest file found to replay.")
            return

        print(f"  [i] Harness: {harness_path.name}")
        print(f"  [i] Input:   {ktest.name}")
        
        harness_src = harness_path.read_text(encoding="utf-8")
        verdict, msg = run_reproducer_suite(harness_src, Path(args.src_root), run_dir, ktest, args)
        
        print(f"\n[=] REPLAY RESULT: {verdict}")
        print(f"    Details: {msg.splitlines()[0]}")
        return

    prompts = make_prompt.generate_prompts(
        args.vul_file, 
        args.vul_line, 
        args.rule_id,
        ctx.get("vul_statement_text", ""), 
        str(args.src_root),              
        ensure_dir(run_dir / "prompts")  
    )

    frozen_plan = run_frozen_analysis(ctx, args, prompts["planner"], run_dir / "frozen_analysis", Path(args.src_root))
    
    if "plan_error" in frozen_plan:
        print("[!] Frozen analysis failed. Aborting.")
        return

    final_status, stats = interactive_synthesizer(
        frozen_plan, ctx, args, prompts["builder"], 
        run_dir / "refinement", Path(args.src_root), 
        ensure_dir(run_dir / "refinement" / "harness"), 
        ensure_dir(run_dir / "refinement" / "logs"),
        args.max_a
    )

    write_json(run_dir / "run_meta.json", {"spec": str(args.spec), "class": final_status, "klee": stats})

    if args.summary_tsv:
        with open(args.summary_tsv, "a", encoding="utf-8") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            f.write(f"{args.spec_stem}\t{final_status}\t{stats.get('status','none')}\t{stats.get('elapsed',0):.2f}\n")
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {final_status}")

if __name__ == "__main__":
    main()