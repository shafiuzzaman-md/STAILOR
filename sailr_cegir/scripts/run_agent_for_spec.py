#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
run_agent_for_spec.py
"""

from __future__ import annotations

import argparse
import fcntl
import json
import yaml
import os
import re
import shlex
import shutil
import struct
import subprocess
import sys
import time
from pathlib import Path
from typing import Dict, Any, Tuple, List, Set, Optional
from copy import deepcopy

# Add repo root to path for imports
REPO_ROOT = Path(__file__).resolve().parents[2]
SCRIPT_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(REPO_ROOT))
sys.path.insert(0, str(SCRIPT_DIR))

# [FIX] Import Strategies Hard (No Silent Failure)
try:
    from sailr_cegir.scripts.strategies import infer_strategy
except ImportError:
    try:
        from strategies import infer_strategy
    except ImportError as e:
        print(f"[!] CRITICAL: Could not import 'strategies.py'. Check PYTHONPATH: {e}", file=sys.stderr)
        sys.exit(1) # Die immediately if logic is missing


# --- GLOBAL TOKEN TRACKER ---
_TOKEN_STATS = {
    "prompt_tokens": 0,
    "completion_tokens": 0,
    "total_tokens": 0
}

def update_token_stats(response: Any):
    """Safe extraction of usage stats from response objects."""
    global _TOKEN_STATS
    usage = None
    if isinstance(response, dict):
        usage = response.get("usage")
    elif hasattr(response, "usage"):
        usage = getattr(response, "usage")
        
    if usage:
        # Handle usage being a dict or object
        p = getattr(usage, "prompt_tokens", 0) if not isinstance(usage, dict) else usage.get("prompt_tokens", 0)
        c = getattr(usage, "completion_tokens", 0) if not isinstance(usage, dict) else usage.get("completion_tokens", 0)
        t = getattr(usage, "total_tokens", 0) if not isinstance(usage, dict) else usage.get("total_tokens", 0)
        
        _TOKEN_STATS["prompt_tokens"] += p
        _TOKEN_STATS["completion_tokens"] += c
        _TOKEN_STATS["total_tokens"] += t

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


# ---------------- POLICY GENERATOR ----------------

def parse_ql_metadata(ql_path: Path) -> Dict[str, Any]:
    """Parses CodeQL file for metadata tags like @id and @tags."""
    if not ql_path.exists():
        return {}
    
    content = ql_path.read_text(errors="ignore")
    meta = {"id": None, "tags": []}
    
    # Extract @id
    m_id = re.search(r"@id\s+([^\s]+)", content)
    if m_id:
        meta["id"] = m_id.group(1).strip()
        
    # Extract @tags (can be multiple)
    m_tags = re.findall(r"@tags\s+(.+)", content)
    for tag_line in m_tags:
        meta["tags"].extend(tag_line.split())
        
    return meta

def generate_auto_policy(project_id: str, ql_meta: Dict[str, Any], rule_id_arg: str) -> Dict[str, Any]:
    """
    Auto-generates a validation policy based on Project Knowledge and Rule Knowledge.
    """
    # 1. Base Policy Template
    policy = {
        "validation": {
            "external_stub_allowlist": [
                "malloc", "calloc", "realloc", "free",
                "memcpy", "memmove", "memset", "memcmp",
                "strlen", "strnlen", "strcmp", "strncmp", "strchr", "strrchr",
                "open", "close", "read", "write", "lseek",
                "fopen", "fclose", "fread", "fwrite", "fflush", "fseek", "ftell",
                "getenv", "setenv", "unsetenv",
                "time", "clock_gettime",
                "abort", "exit",
                "socket", "connect", "accept", "bind", "listen", "recv", "send",
                "pthread_create", "pthread_join", "pthread_mutex_init", "pthread_mutex_lock", "pthread_mutex_unlock"
            ],
            "semantic_stub_denylist": [
                "ALWAYS_TRUE", "ALWAYS_FALSE", "ALWAYS_NULL", 
                "CONSTANT_RETURN", "HASH_COLLISION", "MEMCMP_STEER"
            ],
            "hash_function_names": [],
            "exceptions_by_rule": {},
            "exceptions_by_spec": {},
            "exception_detectors": {
                "HASH_COLLISION": {
                    "symbols": [],
                    "constant_return_regex": "\\breturn\\s+(0|1|2|3|0x[0-9a-fA-F]+|[A-Z_]+)\\s*;",
                    "forbid_constants": ["0"],
                    "constant_return_value": "1"
                }
            }
        }
    }
    # 2. Project-specific knowledge (optional)
    #
    # If a project requires replay-critical overrides (e.g., hash-collision forcing),
    # provide them via a user-supplied validation policy YAML. We intentionally avoid
    # hardcoded project heuristics here to keep the pipeline generic.


    # 3. Rule Knowledge (Auto-Enable Exceptions)
    # Use the ID from the QL file if valid, otherwise fallback to the CLI arg
    active_rule_id = ql_meta.get("id") or rule_id_arg
    tags = ql_meta.get("tags", [])
    
    # Heuristics to enable HASH_COLLISION / MEMCMP_STEER
    # If the rule targets OOB, Memory, or Buffers, we need these helpers.
    needs_reachability_help = False
    
    if "oob" in active_rule_id or "memfunc" in active_rule_id or "overflow" in active_rule_id:
        needs_reachability_help = True
    
    for tag in tags:
        if tag in ["security", "external/cwe/cwe-120", "external/cwe/cwe-125", "external/cwe/cwe-787"]:
            needs_reachability_help = True

    if needs_reachability_help:
        # Enable exceptions for this rule
        policy["validation"]["exceptions_by_rule"][active_rule_id] = ["HASH_COLLISION", "MEMCMP_STEER"]
        # Also map the CLI arg ID just in case they differ
        if rule_id_arg != active_rule_id:
             policy["validation"]["exceptions_by_rule"][rule_id_arg] = ["HASH_COLLISION", "MEMCMP_STEER"]

    return policy

def load_validation_policy(path: str | None) -> dict:
    """Load YAML validation policy used for exceptions + replay stub gating."""
    if not path:
        return {"validation": {}}
    p = Path(path)
    if not p.exists():
        return {"validation": {}} # Soft fail if file passed but missing
    data = yaml.safe_load(p.read_text(encoding="utf-8")) or {}
    if not isinstance(data, dict):
        raise ValueError("Validation policy YAML must be a mapping at the top level.")
    if "validation" not in data or not isinstance(data.get("validation"), dict):
        data["validation"] = {}
    return data


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

import re

_STUB_EXCEPTION_RE = re.compile(r"\bSTUB_EXCEPTION\[[^\]]+\]")

def strip_harness_for_system_replay(harness_src: str) -> str:
    """
    STRICT replay source constructor (Trust Assurance Mode):
      - RETAINS /* --- Embedded Functions --- */.
      - RETAINS 'stub_*', 'harness_*', and 'strict_alloc'.
      - RETAINS Preprocessor Directives (#ifdef, #include, #define) to prevent logic corruption.
      - REMOVES conflicting overrides inside /* --- Stub Functions --- */.
    """
    required = [
        "/* --- Stub Functions --- */",
        "/* --- Embedded Functions --- */",
        "/* --- Harness --- */",
    ]
    missing = [m for m in required if m not in harness_src]
    if missing:
        raise ValueError(f"Missing section markers: {', '.join(missing)}")

    lines = harness_src.splitlines()
    out: list[str] = []

    # State flags
    in_stub_section = False
    in_embedded_section = False
    
    # Logic to capture specific functions
    capturing_function = False
    brace_depth = 0

    def _brace_delta(s: str) -> int:
        return s.count("{") - s.count("}")

    for line in lines:
        # 1. Section Markers
        if "/* --- Stub Functions --- */" in line:
            in_stub_section = True
            in_embedded_section = False
            out.append(line)
            continue
        
        if "/* --- Embedded Functions --- */" in line:
            in_stub_section = False
            in_embedded_section = True
            out.append(line) 
            continue

        if "/* --- Harness --- */" in line:
            in_stub_section = False
            in_embedded_section = False
            capturing_function = False
            out.append(line)
            continue

        # 2. Handling Logic
        if in_embedded_section:
            out.append(line)
            continue

        if in_stub_section:
            # [FIX] Always Keep Preprocessor Directives (#include, #define, #ifdef, #endif, #else)
            # This prevents flattening of conditional logic which causes redefinition errors.
            if line.strip().startswith("#"):
                out.append(line)
                continue

            # Capture Whitelisted Functions
            if not capturing_function:
                # Allow wrappers (stub_) and safety helpers (strict_alloc)
                is_wrapper = re.search(r"^\s*(?:[\w\*]+\s+)+(stub_|harness_)\w+\s*\(", line)
                is_helper = re.search(r"^\s*(?:[\w\*]+\s+)+\bstrict_alloc\s*\(", line)
                
                if is_wrapper or is_helper:
                    capturing_function = True
                    brace_depth = 0
            
            if capturing_function:
                out.append(line)
                brace_depth += _brace_delta(line)
                if "}" in line and brace_depth <= 0:
                    capturing_function = False
                continue
            
            # Keep Types
            if re.search(r"^\s*(typedef|struct|union|enum)\b", line):
                out.append(line)
                continue
            
            # Keep Externs
            if re.search(r"^\s*extern\b.*?;", line):
                out.append(line)
                continue

            # Drop conflicting bodies
            continue

        # 3. Harness & Globals
        if _STUB_EXCEPTION_RE.search(line):
            continue 
            
        out.append(line)

    return "\n".join(out)

EXTERNAL_STUB_ALLOWLIST = {
    # libc / OS-ish
    "malloc", "calloc", "realloc", "free",
    "memcpy", "memmove", "memset", "memcmp",
    "strlen", "strnlen", "strcmp", "strncmp", "strchr", "strrchr",
    "open", "close", "read", "write", "lseek",
    "fopen", "fclose", "fread", "fwrite", "fflush", "fseek", "ftell",
    "getenv", "setenv", "unsetenv",
    "time", "clock_gettime",
    "abort", "exit",
    # networking
    "socket", "connect", "accept", "bind", "listen", "recv", "send", "shutdown",
    "getaddrinfo", "freeaddrinfo",
    # threads
    "pthread_create", "pthread_join",
    "pthread_mutex_init", "pthread_mutex_lock", "pthread_mutex_unlock", "pthread_mutex_destroy",
}

REPLAY_SEMANTIC_STUB_DENYLIST = {
    # [UPDATED] Empty list allows Smart Stubbing for Hash/Dict functions in Phase 2.
    # The System Replay stripper will automatically remove these stubs during Phase 3 verification.
}

def _section_bounds_by_markers(src: str) -> Dict[str, Tuple[int, int]]:
    pat = re.compile(r"/\*\s*---\s*(.+?)\s*---\s*\*/")
    hits = [(m.group(1).strip(), m.start(), m.end()) for m in pat.finditer(src)]
    out: Dict[str, Tuple[int, int]] = {}
    for i, (name, s, e) in enumerate(hits):
        body_s = e
        body_e = hits[i + 1][1] if i + 1 < len(hits) else len(src)
        out[name] = (body_s, body_e)
    return out

def _get_section(src: str, name: str) -> str:
    b = _section_bounds_by_markers(src)
    if name not in b:
        return ""
    s, e = b[name]
    return src[s:e]

def _parse_undefined_symbols(link_err: str) -> List[str]:
    syms = set()
    for m in re.finditer(r"undefined reference to [`']([^`' ]+)[`']", link_err):
        syms.add(m.group(1))
    for m in re.finditer(r"undefined reference to\s+([A-Za-z0-9_]+)", link_err):
        syms.add(m.group(1))
    for m in re.finditer(r"undefined symbol:\s*([A-Za-z0-9_]+)", link_err, flags=re.IGNORECASE):
        syms.add(m.group(1))
    return sorted(syms)

def _project_defined_symbols(project_bc: Path, cwd: Path) -> set:
    nm = shutil.which("llvm-nm") or shutil.which("nm")
    if not nm:
        return set()
    cmd = [nm, "--defined-only", str(project_bc)] if "llvm-nm" in nm else [nm, str(project_bc)]
    rc, out, err, _ = run_cmd(cmd, cwd=cwd)
    if rc != 0:
        return set()
    defs = set()
    for ln in out.splitlines():
        parts = ln.strip().split()
        if not parts:
            continue
        sym = parts[-1]
        if sym.startswith(".L") or sym.startswith("L") and sym[1:2].isdigit():
            continue
        defs.add(sym)
    return defs

def _extract_function_body(src: str, fn_name: str) -> str:
    pat = re.compile(rf"(?m)^[ \t]*(?:static[ \t]+)?[^\n;]*\b{re.escape(fn_name)}\s*\([^;]*\)\s*\{{")
    m = pat.search(src)
    if not m:
        return ""
    i = m.start()
    j = src.find("{", m.end() - 1)
    if j < 0:
        return ""
    depth = 0
    k = j
    while k < len(src):
        ch = src[k]
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                return src[i:k + 1] + "\n"
        k += 1
    return ""

def _select_external_stubs(harness_src: str, undefined_syms: List[str], project_defs: set) -> List[str]:
    selected = []
    for s in undefined_syms:
        sym = s.strip()
        if sym in REPLAY_SEMANTIC_STUB_DENYLIST:
            continue
        if sym in project_defs:
            continue
        if sym in EXTERNAL_STUB_ALLOWLIST:
            selected.append(sym)
    return sorted(set(selected))

def _build_env_replay_source(harness_src: str, selected_stubs: List[str]) -> str:
    strict_src = strip_harness_for_system_replay(harness_src)
    stub_section = _get_section(harness_src, "Stub Functions")
    stub_bodies = []
    for fn in selected_stubs:
        body = _extract_function_body(stub_section, fn)
        if body:
            stub_bodies.append(body)

    injected = "\n/* --- External Dependency Stubs (Retained for Replay) --- */\n" + "".join(stub_bodies) + "\n"
    if "/* --- Harness --- */" in strict_src:
        return strict_src.replace("/* --- Harness --- */", injected + "/* --- Harness --- */", 1)

    m = re.search(r"(?m)^[ \t]*int\s+main\s*\(", strict_src)
    if m:
        return strict_src[:m.start()] + injected + strict_src[m.start():]
    return strict_src + "\n" + injected

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


def run_system_replay(
    harness_src: str,
    src_root: Path,
    work_dir: Path,
    ktest_path: Path,
    args: argparse.Namespace
) -> Tuple[str, str, List[str]]:
    assumptions: List[str] = []
    project_bc = Path(args.project_bc) if args.project_bc else None
    if not project_bc or not project_bc.exists():
        return "SKIP", "Replay skipped: project.bc not available.", assumptions

    lib_dir = find_libkleeRuntest(args)
    if not lib_dir:
        return "FAIL", "Replay failed: libkleeRuntest not found.", assumptions

    try:
        strict_src = strip_harness_for_system_replay(harness_src)
    except Exception as e:
        return "FAIL", f"Replay failed: cannot construct strict harness: {e}", assumptions

    # [FIX] Force Sanitizers and GNU Source for Replay Verification
    # -fsanitize=address: Catches OOB writes/reads (Trust Assurance)
    # -D_GNU_SOURCE: Enables MAP_ANONYMOUS for strict_alloc (Realism)
    sanitizer_flags = ["-fsanitize=address,undefined", "-fno-sanitize-recover=all", "-D_GNU_SOURCE"]

    project_o = work_dir / "project.o"
    # [UPDATE] Add sanitizer_flags to project compilation
    cc_bc = [args.clang, "-c", str(project_bc), "-o", str(project_o)] + args.clang_flags + sanitizer_flags
    rc, out, err, _ = run_cmd(cc_bc, cwd=src_root)
    if rc != 0:
        (work_dir / "system_replay_project_compile.stderr").write_text(err, encoding="utf-8", errors="replace")
        return "FAIL", f"Replay failed: project.bc -> project.o compile failed. See system_replay_project_compile.stderr", assumptions

    # [UPDATE] Add sanitizer_flags to driver linking
    base_flags = ["-L", str(lib_dir), "-lkleeRuntest", f"-Wl,-rpath,{lib_dir}"] + args.clang_flags + sanitizer_flags

    def _link_driver(driver_c: Path, out_bin: Path, extra_flags: List[str]) -> Tuple[int, str, str]:
        cmd = [args.clang, "-O0", "-g", str(driver_c), str(project_o)] + base_flags + extra_flags + ["-o", str(out_bin)]
        rc, o, e, _ = run_cmd(cmd, cwd=src_root)
        return rc, o, e

    def _run_driver(bin_path: Path) -> Tuple[int, str, str]:
        env = os.environ.copy()
        env["KTEST_FILE"] = str(ktest_path)
        # [OPTIONAL] Ensure ASan options are set to abort on error for easier detection
        env["ASAN_OPTIONS"] = "abort_on_error=1:halt_on_error=1"
        rc, o, e, _ = run_cmd([str(bin_path)], cwd=src_root, timeout=20, env=env)
        return rc, o, e

    def _looks_like_crash(rc: int, out_s: str, err_s: str) -> bool:
        """
        Classify whether the replay run successfully triggered the bug.
        Accepts:
          1. Assertion Triggers (Logic Violations caught by the Harness)
          2. Memory Corruption (ASan / SegFaults)
        """
        hay = (out_s or "") + "\n" + (err_s or "")

        # --- 1. The Assertion Trigger (Logic Validation) ---
        if "BUG_ASSERT" in hay: 
            return True
            
        if "klee_assert" in hay and "failed" in hay:
            return True

        if "Assertion" in hay and "failed" in hay:
            return True

        # --- 2. The Hard Crash (Memory Corruption) ---
        
        # Sanitizers
        if "AddressSanitizer" in hay or "heap-buffer-overflow" in hay or "global-buffer-overflow" in hay:
            return True
        if "UndefinedBehaviorSanitizer" in hay or "runtime error:" in hay:
            return True

        # Signals (SegFaults)
        if "Segmentation fault" in hay or "SIGSEGV" in hay:
            return True
        if rc == -11 or rc == 139: # SIGSEGV
            return True

        # System Corruption (Double Free, etc)
        if "double free or corruption" in hay: return True
        if "stack smashing detected" in hay: return True

        # --- 3. Filter Generic Aborts ---
        # Note: 'Aborted' often means BUG_ASSERT(pred) -> abort() triggered.
        if "Aborted" in hay and rc != 0:
            return True
            
        return False

    # ---------------- STRICT replay ----------------
    strict_driver_c = work_dir / "system_driver_strict.c"
    strict_driver_bin = work_dir / "system_driver_strict.exe"
    strict_driver_c.write_text(strict_src, encoding="utf-8")

    extra_flags: List[str] = []
    link_err_last = ""
    
    # [SMART FIX] Auto-Linker Loop (Retries up to 6 times)
    # Detects missing symbols from linker errors and injects standard libraries.
    for attempt in range(6):
        rc_link, o_link, e_link = _link_driver(strict_driver_c, strict_driver_bin, extra_flags)
        
        if rc_link == 0:
            # Success! Run the binary.
            (work_dir / "system_replay_link_strict.stderr").write_text(e_link, encoding="utf-8", errors="replace")
            assumptions.append("REPLAY_MODE=STRICT")
            
            rc_run, o_run, e_run = _run_driver(strict_driver_bin)
            (work_dir / "system_replay_run_strict.stderr").write_text(e_run, encoding="utf-8", errors="replace")
            
            if _looks_like_crash(rc_run, o_run, e_run):
                return "STRICT", "STRICT REPLAY CONFIRMED (linked against real project.o).", assumptions
            else:
                return "FAIL", (
                    f"STRICT REPLAY executed but did NOT crash.\n"
                    f"Exit Code: {rc_run}\n"
                    f"--- OUTPUT ---\n{o_run[:500]}\n{e_run[:500]}\n"
                ), assumptions

        # --- Linker Recovery Logic ---
        link_err_last = e_link or link_err_last
        err_lower = (e_link or "").lower()
        new_flags = []
        
        # 1. Threads (pthread_create, pthread_mutex_...)
        if ("pthread" in err_lower) and ("-lpthread" not in extra_flags):
            new_flags.append("-lpthread")

        # 2. Math (pow, floor, ceil, sin, cos, sqrt, log, exp)
        if (re.search(r"undefined reference to `(pow|floor|ceil|sin|cos|sqrt|log|exp)", err_lower)) and ("-lm" not in extra_flags):
            new_flags.append("-lm")

        # 3. Zlib (inflate, deflate, crc32, gz...)
        if (re.search(r"undefined reference to `(inflate|deflate|crc32|gz)", err_lower)) and ("-lz" not in extra_flags):
            new_flags.append("-lz")

        # 4. LZMA (lzma_...)
        if ("lzma" in err_lower) and ("-llzma" not in extra_flags):
            new_flags.append("-llzma")

        # 5. Dynamic Linking (dlopen, dlsym)
        if ("dlopen" in err_lower or "dlsym" in err_lower) and ("-ldl" not in extra_flags):
            new_flags.append("-ldl")
        
        # 6. Realtime extensions (clock_gettime)
        if ("clock_gettime" in err_lower) and ("-lrt" not in extra_flags):
            new_flags.append("-lrt")

        if not new_flags:
            # If we failed but found no new flags to add, stop trying.
            break 
            
        print(f"  [i] Auto-Linker: Detected missing symbols. Injecting flags: {new_flags}")
        extra_flags.extend(new_flags)

    return "FAIL", (
        "STRICT REPLAY link failed. Validation requires real libraries; stubs are not permitted.\n"
        f"Last Linker Error:\n{link_err_last}\n"
        "See system_replay_link_strict.stderr for details."
    ), assumptions
# ---------------- HELPER: VERIFY RESCUE ELIGIBILITY (NEW) ----------------

def verify_rescue_eligibility(run_dir: Path, klee_log: str, harness_path: Path) -> bool:
    """
    Strictly verifies that the KLEE memory error occurred AT the CHECK_READ line.
    Prevents confirming harness setup bugs (like unaligned symbolic pointers) as valid findings.
    """
    # 1. Extract Crash Line Number from Log
    # Pattern: "KLEE: ERROR: .../harness.c:150: memory error..."
    match = re.search(r"harness\.c:(\d+):\s*memory error", klee_log)
    if not match:
        # Try finding "out of bound pointer" specifically if the generic message is missing
        match = re.search(r"harness\.c:(\d+):\s*.*?out of bound pointer", klee_log)
        
    if not match:
        return False
        
    crash_line_num = int(match.group(1))
    
    # 2. Read the Harness Source
    if not harness_path.exists():
        return False
        
    try:
        lines = harness_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    except Exception:
        return False
    
    # 3. Verify Content of the Crashing Line
    # (Line numbers are 1-based)
    if crash_line_num < 1 or crash_line_num > len(lines):
        return False
        
    crashing_code = lines[crash_line_num - 1].strip()
    
    # 4. The Gate: Must be the CHECK_READ macro
    if "CHECK_READ" in crashing_code:
        print(f"  [i] Rescue Verified: Crash at line {crash_line_num} matches 'CHECK_READ'.")
        return True
    
    print(f"  [!] Rescue Rejected: Crash at line {crash_line_num} is '{crashing_code}' (Not CHECK_READ).")
    return False
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
                    if rc_run == 125: 
                        return "INVALID_HARNESS", "SKIPPED: Harness Assumption Violated during Replay (Out of Model)."
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
        if isinstance(s, str) and " " in s: 
            return shlex.split(s)
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
    
def run_cmd_stream(cmd: List[str], timeout: int) -> Tuple[int, str, str, float]:
    """Runs a command while streaming stdout/stderr to the console in real-time."""
    start = time.monotonic()
    
    # Merge stdout and stderr for simpler streaming
    proc = subprocess.Popen(
        cmd, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.STDOUT, # Redirect stderr to stdout
        text=True, 
        bufsize=1 # Line buffered
    )

    captured_log = []
    
    try:
        # Stream output line by line
        for line in proc.stdout:
            sys.stdout.write(f"      [KLEE] {line}") # Indent for readability
            captured_log.append(line)
            
        proc.wait(timeout=max(1, timeout - (time.monotonic() - start)))
        rc = proc.returncode
    except subprocess.TimeoutExpired:
        proc.kill()
        sys.stdout.write("\n      [!] KLEE TIMEOUT TRIGGERED\n")
        captured_log.append("\n[TIMEOUT]\n")
        rc = 124
    except Exception as e:
        proc.kill()
        rc = -1
        captured_log.append(f"\n[EXCEPTION] {e}\n")

    elapsed = time.monotonic() - start
    return rc, "".join(captured_log), "", elapsed

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
    update_token_stats(raw)
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

def extract_harness_code_from_llm_response(raw_response: str) -> Tuple[Optional[str], Dict[str, Any]]:
    """
    Robustly extract the harness C source from an LLM response.

    Supports:
      - Plain fenced code blocks (```c ... ```)
      - Plain C text (starts with #include / contains int main)
      - JSON objects that wrap the harness (e.g., {"harness_c": "..."} or {"harness": "..."}).
        In JSON mode we accept either fenced or unfenced C source in the string value.
    """
    meta: Dict[str, Any] = {}
    s = (raw_response or "").strip()

    # Clean markdown fences first to detect wrapped JSON
    clean_s = s
    if s.startswith("```") and s.endswith("```"):
        # Remove first line (```json) and last line (```)
        lines = s.splitlines()
        if len(lines) >= 2:
            clean_s = "\n".join(lines[1:-1]).strip()

    # JSON-wrapped response (builder protocol)
    if clean_s.startswith("{") and clean_s.endswith("}"):
        try:
            obj = json.loads(clean_s)
        except Exception:
            obj = None

        if isinstance(obj, dict):
            meta = obj

            # Common field names used across builder versions.
            for key in ("harness_c", "harness", "harness_code", "code", "c_code"):
                val = obj.get(key)
                if isinstance(val, str) and val.strip():
                    # If the value itself has fences, extract from it; otherwise accept raw C.
                    extracted = extract_c_code(val)
                    if extracted:
                        return extracted, meta
                    if val.lstrip().startswith("#include") or ("int main" in val):
                        return val.strip(), meta

            # Sometimes nested (e.g., {"result": {"harness_c": ...}})
            for key in ("result", "data", "payload"):
                nested = obj.get(key)
                if isinstance(nested, dict):
                    for k2 in ("harness_c", "harness", "harness_code", "code", "c_code"):
                        val2 = nested.get(k2)
                        if isinstance(val2, str) and val2.strip():
                            extracted2 = extract_c_code(val2)
                            if extracted2:
                                return extracted2, meta
                            if val2.lstrip().startswith("#include") or ("int main" in val2):
                                return val2.strip(), meta

    # Plain response
    extracted = extract_c_code(raw_response)
    return extracted, meta

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
def _has_macro_define(hsrc: str, name: str) -> bool:
    clean = strip_c_comments_and_strings(hsrc)
    return re.search(rf"(?m)^\s*#\s*define\s+{re.escape(name)}\b", clean) is not None

def inject_standard_headers(hsrc: str, frozen_plan: Optional[Dict[str, Any]] = None, strategy: str = "") -> str:
    # ---------------------------------------------------------
    # [FIX] Inject KLEE includes at the VERY TOP
    # This prevents "conflicting types" errors if the agent manually declares KLEE intrinsics later.
    # ---------------------------------------------------------
    top_injections = []
    if "<klee/klee.h>" not in hsrc:
        top_injections.append("#include <klee/klee.h>")
        
    # Always ensure core types are present
    forced_headers = ["<stddef.h>", "<string.h>", "<stdlib.h>", "<stdint.h>", "<assert.h>", "<stdbool.h>", "<stdio.h>"]
    for h in forced_headers:
        if h not in hsrc:
            top_injections.append(f"#include {h}")

    injections = []

    # 1. Inject klee_int helper if used
    if "klee_int" in hsrc and "int klee_int(" not in hsrc:
        injections.append("""
static int klee_int(const char *name) {
    int x;
    klee_make_symbolic(&x, sizeof(x), name);
    return x;
}
""")

    # 2. Inject Macros
    assertion_macros = """
#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif
"""
    if not _has_macro_define(hsrc, "BUG_ASSERT"):
        injections.append(assertion_macros)

    # 3. Strategy-Specific Support (OOB_READ)
    plan_assertions = (frozen_plan or {}).get("assertions", []) if isinstance(frozen_plan, dict) else []
    uses_check_read = (strategy or "").upper() == "OOB_READ" or any((a.get("id") == "CHECK_READ") for a in plan_assertions)

    if uses_check_read and not _has_macro_define(hsrc, "CHECK_READ"):
        injections.append(r'''
#ifndef CHECK_READ
#ifdef __KLEE__
  #define CHECK_READ(ptr, size) klee_check_memory_access((void*)(ptr), (size))
#else
  #define CHECK_READ(ptr, size) ((void)0)
#endif
#endif
''')

    # 4. bcmp Redirector
    if "bcmp" in hsrc and "int bcmp" not in hsrc and "#define bcmp" not in hsrc:
        injections.append("""
/* [Auto-Fix] Redirect bcmp to memcmp */
#ifndef bcmp
int bcmp(const void *s1, const void *s2, size_t n) {
    return memcmp(s1, s2, n);
}
#endif
""")

    # Combine: Top Headers + Helper Stubs + Original Source
    return "\n".join(top_injections) + "\n" + "\n".join(injections) + "\n" + hsrc

def _pick_llvm_link(explicit: Optional[str]) -> Optional[str]:
    # 1. Trust user override
    if explicit and shutil.which(explicit): return explicit
    
    # 2. Try to match the Clang version (14) explicitly first
    # This prevents "Invalid bitcode signature" errors generic to all projects
    candidates = ["llvm-link-14", "llvm-link-14.0", "llvm-link"]
    
    for cand in candidates:
        if shutil.which(cand): 
            return cand
            
    return None

def compile_harness_to_bc(args: argparse.Namespace, src_root: Path, harness_c: Path, out_bc: Path, project_bc: Optional[Path]) -> Tuple[bool, str, Path]:
    # ---------------------------------------------------------
    # [GENERIC FIX] Dynamic Collision Detection
    # 1. Get list of defined symbols in the project library to avoid redefinitions
    # ---------------------------------------------------------
    defined_symbols = set()
    if project_bc and project_bc.exists():
        # Use llvm-nm to list defined global symbols
        # Fallback to standard nm if llvm-nm is not in path
        nm_tool = shutil.which("llvm-nm") or shutil.which("nm")
        if nm_tool:
            # llvm-nm format: just symbols
            nm_cmd = [nm_tool, "--defined-only", "--format=just-symbols", str(project_bc)]
            # Standard nm fallback
            if "llvm-nm" not in nm_tool:
                nm_cmd = [nm_tool, "--defined-only", str(project_bc)]
                
            rc, out, _, _ = run_cmd(nm_cmd, cwd=src_root)
            if rc == 0:
                for line in out.splitlines():
                    clean = line.strip()
                    if clean and not clean.startswith(" "):
                        parts = clean.split()
                        sym = parts[-1] 
                        defined_symbols.add(sym)

    # 2. Rename ANY stub in harness that conflicts with these symbols
    if harness_c.exists() and defined_symbols:
        try:
            src = harness_c.read_text(encoding="utf-8", errors="replace")
            original_src = src
            
            # Regex: matches "void funcName(...) {" or "int funcName(...) {"
            # Captures: 1=Type, 2=Name, 3=Args+Brace
            func_pattern = r"(?m)(^\s*(?:void|int|char|unsigned|size_t|double|float|long|struct\s+\w+)[\s\*]+)([a-zA-Z_]\w+)(\s*\([^)]*\)\s*\{{)"
            
            def collision_replacer(match):
                ret, name, rest = match.groups()
                if name == "main": return match.group(0)
                
                # If the symbol exists in the library, force a rename to stub_
                if name in defined_symbols:
                    print(f"  [i] Auto-Repair: Renaming colliding stub '{name}' to 'stub_{name}'")
                    return f"{ret}stub_{name}{rest}"
                    
                return match.group(0)

            new_src = re.sub(func_pattern, collision_replacer, src)
            
            if new_src != original_src:
                harness_c.write_text(new_src, encoding="utf-8")
                
        except Exception as e:
            print(f"  [!] Warning: Generic auto-repair failed: {e}")
    # ---------------------------------------------------------

    cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_c), "-o", str(out_bc)]
    rc, out, err, _ = run_cmd(cmd, cwd=src_root)
    if rc != 0: return False, (out + "\n" + err), out_bc

    if project_bc and project_bc.exists():
        llvm_link = _pick_llvm_link(getattr(args, "llvm_link", None))
        if not llvm_link: 
            return True, "[warn] llvm-link missing; running harness only.", out_bc
            
        linked_bc = out_bc.parent / "harness.linked.bc"
        lcmd = [llvm_link, str(out_bc), str(project_bc), "-o", str(linked_bc)]
        
        lrc, lout, lerr, _ = run_cmd(lcmd, cwd=src_root)
        
        if lrc != 0: 
            if "symbol multiply defined" in lerr:
                collided_sym = re.search(r"globals named '([^']+)'", lerr)
                sym_name = collided_sym.group(1) if collided_sym else "the symbol"
                print(f"  [!] Detected Linker Collision on {sym_name}")
                return False, (
                    f"LINKER ERROR: Symbol '{sym_name}' is multiply defined.\n"
                    f"CAUSE: You defined '{sym_name}' in your stub section, but it already exists in the library.\n"
                    f"ACTION: Remove your definition of '{sym_name}' or rename it to 'stub_{sym_name}'."
                ), out_bc

            print(f"  [!] LINKER ERROR: {lerr}")
            return False, f"LINKER FAILED: {lerr}\n(The harness refers to symbols that are not in project.bc)", out_bc
            
        return True, "", linked_bc
        
    return True, "", out_bc
# ---------------- VALIDATION: DCV ----------------

def run_dcv(plan_path: Path, ctx: Dict[str, Any], args: argparse.Namespace) -> Tuple[bool, str]:
    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists(): return True, ""
    cmd = [sys.executable, str(dcv_script), "--plan", str(plan_path), "--spec", ctx["spec_path"], "--rule-id", args.rule_id, "--project-name", args.project_id]
    
    # [FIX] Pass Rule ID (if exists)
    if args.rule_id:
        cmd.extend(["--rule-id", args.rule_id])

    strat = ((ctx.get("strategy") or {}).get("name") or "")
    if strat:
        cmd.extend(["--strategy", strat])

        
    if ctx.get("fact_pack_path"): cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0: return False, f"Rule-Based Validator Rejected the Model:\n{out}\n{err}"
    return True, ""

# ---------------- CONTEXT BUILD ----------------

def build_context(sa_out_dir: Path, src_root: Path, spec_path: Path, vul_file: str, vul_line: int, ctx_dir: Path) -> Dict[str, Any]:
    ensure_dir(ctx_dir)
    spec = read_json(spec_path)

    if spec is None:
        print(f"[!] Critical Error: Could not load spec file from: {spec_path}")
        print(f"    Check if the file exists and is valid JSON.")
        sys.exit(1)

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
_KIND_ORDER = {"bug": 0, "reach": 1}

_cmp_inv = {
    "<":  ">=",
    "<=": ">",
    ">":  "<=",
    ">=": "<",
}

_simple_cmp_re = re.compile(r"^\s*(?P<a>.+?)\s*(?P<op><=|<|>=|>)\s*(?P<b>.+?)\s*$")

def invert_simple_comparison(cond: str) -> str | None:
    """
    Invert a simple comparison a < b, a <= b, a > b, a >= b.
    Returns None if not a simple comparison.
    """
    m = _simple_cmp_re.match(cond.strip())
    if not m:
        return None
    a, op, b = m.group("a").strip(), m.group("op"), m.group("b").strip()
    inv = _cmp_inv.get(op)
    if not inv:
        return None
    return f"{a} {inv} {b}"

def infer_sink_kind(ctx: Dict[str, Any], placement_target: str) -> str:
    """
    Heuristic: distinguish index-sink vs memfunc-sink to choose strictness.
    Returns 'index', 'memfunc', or 'unknown'.
    """
    s = (ctx.get("vul_statement_text", "") or "") + "\n" + (placement_target or "")
    if re.search(r"\b(memcmp|memcpy|memmove|bcmp)\s*\(", s):
        return "memfunc"
    if re.search(r"\[[^\]]*\blen\b[^\]]*\]", s) or re.search(r"->\w+\s*\[\s*len\s*\]", s):
        return "index"
    return "unknown"

def fix_bug_polarity(assert_obj: Dict[str, Any], ctx: Dict[str, Any], rule_id: str) -> Dict[str, Any]:
    """
    Automated Polarity Fixer.
    Triggers based on the Rule ID semantics (e.g. 'oob', 'memfunc').
    """
    if assert_obj.get("kind") != "bug":
        return assert_obj

    cond = (assert_obj.get("condition") or "").strip()
    rationale = (assert_obj.get("rationale") or "").lower()

    # Heuristic 1: Check Rule ID for OOB/Memory/Overflow semantics
    # Your .ql file is: local.oob.memfunc.length-misuse.maxcover.v5
    is_oob_rule = any(tag in rule_id for tag in ["oob", "memfunc", "overflow", "bounds"])
    
    # Heuristic 2: Check if rationale implies safety
    is_safety_rationale = any(x in rationale for x in ["safety", "precondition", "valid when"])
    
    # Logic: If it's an OOB rule and the condition looks like "len <= cap", it's WRONG.
    # We must flip it to "len > cap".
    if is_oob_rule or is_safety_rationale:
        # Matches: var < bound or var <= bound.
        # REJECTS: > or >= (already correct), == (equality)
        if re.search(r"\b(<|<=)\b", cond) and not re.search(r"\b(>|>=|==|!=)\b", cond):
            inv = invert_simple_comparison(cond) # Ensure this helper is available
            if inv:
                assert_obj["condition"] = inv
                assert_obj["rationale"] = rationale + " [Auto-Fix: Inverted safety precondition based on Rule ID]"
                return assert_obj

    return assert_obj

def _infer_len_variable(plan: Dict[str, Any]) -> str:
    """Try to guess the length variable name from the entrypoint arguments."""
    args = plan.get("entrypoint", {}).get("arguments", [])
    for arg in args:
        # Look for int/size_t types that look like lengths
        if any(t in arg.get("type", "") for t in ["int", "size_t", "unsigned"]) and \
           any(n in arg.get("name", "") for n in ["len", "size", "n", "count"]):
            return arg.get("name")
    return "len" # Default fallback

def _bind_placeholders(assumptions: List[Dict], len_var: str) -> List[Dict]:
    """Inject the actual variable name into strategy constraints."""
    out = []
    for a in assumptions or []:
        aa = deepcopy(a)
        for k in ("constraint", "instruction"):
            if isinstance(aa.get(k), str):
                aa[k] = aa[k].replace("{{LEN_VAR}}", len_var)
        out.append(aa)
    return out

def finalize_frozen_plan(
    plan: Dict[str, Any], 
    ctx: Dict[str, Any], 
    rule_id: str, 
    spec_stem: str, 
    policy: Dict[str, Any],
    project_bc_path: Optional[Path] = None,
    src_root: Optional[Path] = None  
) -> Dict[str, Any]:
    """
    Automated Plan Fixer.
    Generic implementation that applies Strategy-defined assumptions.
    """
    p = deepcopy(plan)
    vcfg = (policy or {}).get("validation", {}) or {}
    
    # --- 1. Automated Assertion Fix (Polarity) ---
    assertions = p.get("assertions") or []
    if isinstance(assertions, list) and assertions:
        norm = [fix_bug_polarity(deepcopy(a), ctx, rule_id) for a in assertions]
        p["assertions"] = sorted(norm, key=lambda x: _KIND_ORDER.get(x.get("kind", ""), 9))

    # --- 2. Strategy Assumption Injection ---
    strategy_cfg = ctx.get("strategy", {})
    frozen_assumptions = strategy_cfg.get("frozen_assumptions", [])

    if frozen_assumptions:
        len_var = _infer_len_variable(p)
        strat_asms = _bind_placeholders(frozen_assumptions, len_var)
        existing = p.get("assumptions", []) or []
        filtered_existing = []
        for a in existing:
            if isinstance(a, dict) and (a.get("type") == "klee_assume"):
                c = str(a.get("constraint") or "")
                if ("sizeof" in c and (len_var and re.search(rf"\b{re.escape(len_var)}\b", c)) and ("<" in c or "<=" in c)): continue
                if ("min" in c.lower() and "sizeof" in c): continue
            filtered_existing.append(a)
        
        merged = []
        seen = set()
        for a in (strat_asms + filtered_existing):
            key = str(a)
            if key in seen: continue
            seen.add(key)
            merged.append(a)
        p["assumptions"] = merged

    # --- 3. Automated Stub Injection (Policy Driven) ---
    # Contract integrity: semantic shortcut stubs (e.g., HASH_COLLISION) MUST be explicitly declared
    # in stub_contracts[].exception. If enabled by policy, we auto-declare the exception so DCV/Builder
    # can reason about it deterministically.
    rule_excs = set(vcfg.get("exceptions_by_rule", {}).get(rule_id, []) or [])
    spec_excs = set(vcfg.get("exceptions_by_spec", {}).get(spec_stem, []) or [])
    if "HASH_COLLISION" in (rule_excs | spec_excs):
        safe_const = str(vcfg.get("exception_detectors", {}).get("HASH_COLLISION", {}).get("constant_return_value", "1"))
        target_hashes = set(vcfg.get("hash_function_names", []))
        if target_hashes:
            # 3A) Ensure the Frozen Plan explicitly records the exception.
            sc = p.setdefault("stub_contracts", [])
            if not isinstance(sc, list):
                sc = []
                p["stub_contracts"] = sc

            def _has_hash_collision_decl(fn: str) -> bool:
                for ent in sc:
                    if isinstance(ent, dict) and ent.get("function") == fn and str(ent.get("exception") or "").upper() == "HASH_COLLISION":
                        return True
                return False

            for fname in sorted(target_hashes):
                if not _has_hash_collision_decl(fname):
                    sc.append({
                        "function": fname,
                        "reason": "HASH_COLLISION exception required to explore collision-handling paths.",
                        "stub_kind": "nondet",
                        "constraints": [f"return constant {safe_const} to force collisions"],
                        "exception": "HASH_COLLISION",
                    })

            # 3B) Inject the constant-return stub directive (builder consumes this).
            stubs = p.setdefault("embedding_plan", {}).setdefault("stub_instead_of_embed", [])
            stub_map = {s.get("name"): s for s in stubs if isinstance(s, dict) and s.get("name")}
            for fname in sorted(target_hashes):
                if fname not in stub_map:
                    stubs.append({"name": fname, "strategy": f"constant_return_{safe_const}", "notes": "[Auto-Inject HASH_COLLISION]"})
            # B. [FIX] Inject into stub_contracts (Permission for Builder)
            # This satisfies the "Must declare exception" contract rule.
            contracts = p.setdefault("stub_contracts", [])
            contract_map = {c.get("function"): c for c in contracts}
            for fname in target_hashes:
                if fname not in contract_map:
                    contracts.append({
                        "function": fname,
                        "stub_kind": "nondet",
                        "reason": "Auto-injected hash collision strategy",
                        "constraints": [f"return {safe_const};"],
                        "exception": "HASH_COLLISION" # <--- LEGITIMIZES THE STUB
                    })
    # --- 4. [GENERIC FIX] Sanitize Instrumentation (klee_assert) ---
    # Fixes: "undefined reference to function: klee_assert"
    inst_list = p.get("instrumentation", [])
    if isinstance(inst_list, list):
        for instr in inst_list:
            if isinstance(instr, dict) and "code" in instr:
                if "extern void klee_assert" in instr["code"]:
                    instr["code"] = instr["code"].replace(
                        "extern void klee_assert(int);", 
                        "#include <klee/klee.h>"
                    )

    # --- 5. [GENERIC FIX] Prevent Allocator Collisions (Dynamic Lookup) ---
    # Fixes: "symbol multiply defined" for xmlMalloc, apr_palloc, etc.
    if project_bc_path and project_bc_path.exists():
        # Dynamically check what symbols exist in the project binary
        try:
            defined_syms = _project_defined_symbols(project_bc_path, project_bc_path.parent)
            stub_list = p.get("stub_contracts", [])
            if isinstance(stub_list, list):
                for s in stub_list:
                    if isinstance(s, dict):
                        fname = s.get("function")
                        # If the project ALREADY defines it, ignore the stub request.
                        if fname in defined_syms:
                            s["stub_kind"] = "ignore"
        except Exception as e:
            print(f"[!] Warning: Could not check symbols in project.bc: {e}")

    # --- 6. [AUTO-CORRECT] OOB_WRITE Instrumentation Logic ---
    # Enforces:
    # 1. BUG_ASSERT(0) must be 'insert_after' the vulnerable line (not before).
    # 2. REACH_ASSERT() must be injected alongside BUG_ASSERT(0).
    strategy_name = (ctx.get("strategy") or {}).get("name", "")
    if strategy_name == "OOB_WRITE":
        instr_list = p.get("instrumentation", [])
        
        # [cite_start][NEW] Helper to find safe insertion point for multi-line statements [cite: 1]
        def _find_safe_after_line(fname: str, start_line: int) -> int:
            if not src_root: return start_line
            try:
                # Handle potential absolute paths or relative
                tgt = (src_root / fname).resolve() if not Path(fname).is_absolute() else Path(fname)
                if not tgt.exists(): return start_line
                
                lines = tgt.read_text(encoding="utf-8", errors="replace").splitlines()
                idx = start_line - 1 # 0-based
                if idx >= len(lines): return start_line
                
                # Scan forward for statement terminator (max 10 lines)
                for offset in range(0, 10):
                    curr = idx + offset
                    if curr >= len(lines): break
                    
                    line_clean = lines[curr].split("//")[0].strip() # ignore comments
                    if not line_clean: continue
                    
                    # If we find a semicolon or closing brace, this is likely the end.
                    if ";" in line_clean or "}" in line_clean:
                        return start_line + offset
                return start_line
            except Exception:
                return start_line

        # 1. Fix Assertion Placement
        for instr in instr_list:
            if "BUG_ASSERT" in instr.get("code", ""):
                # If they placed it at the target line, force it AFTER to catch the crash
                if instr.get("line") == ctx.get("vul_line"):
                    
                    # [cite_start][FIX] Adjust line number to avoid breaking multi-line calls [cite: 2]
                    safe_line = _find_safe_after_line(instr.get("file", ""), instr["line"])
                    
                    if safe_line != instr["line"]:
                        print(f"  [i] Auto-Correct: Adjusted insertion point from L{instr['line']} to L{safe_line} (Multi-line stmt detected).")
                        instr["line"] = safe_line

                    if instr.get("kind") != "insert_after":
                        print(f"  [i] Auto-Correct: Changed BUG_ASSERT placement to 'insert_after' line {instr['line']}.")
                        instr["kind"] = "insert_after"

        # 2. Ensure REACH_ASSERT exists
        has_reach = any("REACH_ASSERT" in i.get("code", "") for i in instr_list)
        if not has_reach:
            # Use the safe line for REACH_ASSERT too
            safe_vuln_line = _find_safe_after_line(ctx.get("vul_file"), ctx.get("vul_line"))
            print(f"  [i] Auto-Correct: Injecting missing REACH_ASSERT for OOB_WRITE at L{safe_vuln_line}.")
            instr_list.append({
                "file": ctx.get("vul_file"),
                "line": safe_vuln_line,
                "kind": "insert_after",
                "code": "REACH_ASSERT();"
            })

    # [PATCH 2] Force Allocation Safety for OOB
    if strategy_name in ["OOB_WRITE", "OOB_READ"]:
        sym_inputs = p.get("symbolic_inputs", [])
        if isinstance(sym_inputs, list):
            for sym in sym_inputs:
                sz = sym.get("allocation_size")
                # Bump 64 -> 256 to match the Strategy
                if isinstance(sz, int) and sz < 256:
                    print(f"  [i] Auto-Correct: Boosting allocation_size from {sz} to 256.")
                    sym["allocation_size"] = 256
                    sym["allocation_strategy"] = "concrete_capacity_256"
    # --- 7. [AUTO-CORRECT] Path Normalization (Absolute -> Relative) ---
    # Fixes planner hallucination of absolute paths which breaks instrumentation application.
    if src_root:
        inst_list = p.get("instrumentation", [])
        if isinstance(inst_list, list):
            src_root_abs = src_root.resolve()
            for instr in inst_list:
                fpath = str(instr.get("file", "")).strip()
                if not fpath: continue
                
                path_obj = Path(fpath)
                if path_obj.is_absolute():
                    try:
                        # Attempt 1: Clean relative path (preferred)
                        # resolve() handles symlinks and ../ issues
                        rel = path_obj.resolve().relative_to(src_root_abs)
                        instr["file"] = str(rel)
                        print(f"  [i] Auto-Correct: Relativized instrumentation path: {rel}")
                    except ValueError:
                        # Attempt 2: Fallback to basename
                        # (Handles cases where planner hallucinated a /usr/include path or similar)
                        print(f"  [i] Auto-Correct: Path '{path_obj}' outside root. Fallback to basename: {path_obj.name}")
                        instr["file"] = path_obj.name

    p.setdefault("frozen_meta", {})
    p["frozen_meta"]["canonicalized"] = True
    return p

def fix_static_entrypoint(src_root: Path, vul_file: str, plan: Dict[str, Any]) -> Dict[str, Any]:
    """
    [AUTO-REPAIR] Checks if the plan's entrypoint is static (private).
    If so, scans the source for a PUBLIC wrapper function that calls it,
    and updates the plan to use the public API instead.
    """
    entry = plan.get("entrypoint", {})
    name = entry.get("name")
    if not name: return plan
    
    # 1. Read Source
    try:
        fpath = find_source_file(src_root, vul_file)
        content = fpath.read_text(errors="replace")
    except Exception:
        return plan # Cannot analyze
        
    # 2. Check if Entrypoint is Static
    # Matches: static [inline] type name(
    def_pat = re.compile(rf"(?m)^[ \t]*static\s+.*?\b{re.escape(name)}\s*\(")
    if not def_pat.search(content):
        return plan # Likely public, no fix needed
        
    print(f"  [i] Automated Fix: Entrypoint '{name}' is static (private). Searching for public wrapper...")
    
    # 3. Find Public Callers
    # Regex to find function definitions: type name(...) {
    # Captures: 1=static? 2=type 3=name 4=args
    func_pat = re.compile(r"(?m)^[ \t]*(static\s+)?([\w\*\s]+)\b(\w+)\s*\(([^;\{]*)\)\s*\{")
    
    best_wrapper = None
    
    for m in func_pat.finditer(content):
        is_static = bool(m.group(1))
        if is_static: continue # Skip other static functions
        
        wrapper_name = m.group(3)
        if wrapper_name == name: continue
        
        # Get the body (heuristic: text until next function def)
        start = m.end()
        rest = content[start:]
        # Find start of next function to limit scope
        next_match = func_pat.search(rest)
        body_end = next_match.start() if next_match else len(rest)
        body = rest[:body_end]
        
        # Check if wrapper calls the target
        if re.search(rf"\b{re.escape(name)}\s*\(", body):
            # Found one!
            ret_type = m.group(2).strip()
            args = m.group(4).strip()
            args_clean = " ".join(args.split())
            sig = f"{ret_type} {wrapper_name}({args_clean})"
            
            best_wrapper = {"name": wrapper_name, "signature": sig}
            break # Take the first valid wrapper found
            
    if best_wrapper:
        print(f"  [i] Switching Entrypoint: {name} -> {best_wrapper['name']}")
        
        # Update Entrypoint
        plan["entrypoint"]["name"] = best_wrapper["name"]
        plan["entrypoint"]["signature"] = best_wrapper["signature"]
        # Clear args so the Builder re-infers them for the new function
        plan["entrypoint"]["arguments"] = [] 
        
        # Update Call Sequence
        for call in plan.get("call_sequence", []):
            if call.get("function") == name:
                call["function"] = best_wrapper["name"]
                call["purpose"] += " (Auto-Switched Public Wrapper)"
    else:
        print(f"  [!] Warning: No public wrapper found for '{name}'. Linking may fail.")
        
    return plan

# ---------------------------------------------------------
# [CONTRIBUTION] QL-DRIVEN ASSERTION VALIDATOR
# ---------------------------------------------------------
# Knowledge Base derived from your CodeQL files (CWE-120, CWE-125, CWE-787).
# Maps Function Name -> Critical Argument Index (The Length/Size Parameter).
QL_SEMANTICS = {
    # Reads (CWE-125.ql): Index 2 is length
    "memcmp": 2, "bcmp": 2, "strncmp": 2, "strncasecmp": 2, 
    "memchr": 2, "strnstr": 2, "memscan": 2, "write": 2, "send": 2, "sendto": 2,
    
    # Writes (CWE-120.ql / CWE-787.ql): Index 2 is usually length
    "memcpy": 2, "memmove": 2, "memset": 2, "strncpy": 2, "strncat": 2,
    "strlcpy": 2, "strlcat": 2, "recv": 2, "read": 2, "pread": 2,
    
    # Special Cases (from QL logic)
    "fgets": 1,      # Arg 1 is size
    "snprintf": 1,   # Arg 1 is size
    "vsnprintf": 1
}

def extract_call_arguments(stmt: str, func_name: str) -> List[str]:
    """
    Robustly extracts arguments from a C function call string, handling nested parens/casts.
    Example: "memcmp(buf, str, (size_t)len)" -> ["buf", "str", "(size_t)len"]
    """
    start = stmt.find(f"{func_name}(")
    if start == -1: return []
    
    args = []
    current_arg = []
    depth = 0
    in_str = False
    
    # Start parsing immediately after the opening parenthesis
    idx = start + len(func_name) + 1
    
    while idx < len(stmt):
        char = stmt[idx]
        
        if char == '"' and stmt[idx-1] != '\\': 
            in_str = not in_str
        
        if not in_str:
            if char == '(': depth += 1
            elif char == ')':
                if depth == 0:
                    args.append("".join(current_arg).strip())
                    return args # Parsing finished at closing paren
                depth -= 1
            elif char == ',' and depth == 0:
                args.append("".join(current_arg).strip())
                current_arg = []
                idx += 1
                continue
        
        current_arg.append(char)
        idx += 1
    return args

def validate_and_fix_assertions(src_root: Path, vul_file: str, plan: Dict[str, Any], rule_id: str) -> Dict[str, Any]:
    """
    [SOPHISTICATED FIX] QL-Semantics Validation.
    Uses the Ground Truth from standard QL files to verify that assertions target
    the CRITICAL ARGUMENT (Length/Index) instead of memory content.
    """
    inst_list = plan.get("instrumentation", [])
    if not inst_list: return plan

    try:
        fpath = find_source_file(src_root, vul_file)
        content = fpath.read_text(errors="replace").splitlines()
    except Exception:
        return plan

    # 1. Iterate over all BUG_ASSERT insertions
    for instr in inst_list:
        if "BUG_ASSERT" not in instr.get("code", ""): continue
        
        line_num = int(instr.get("line", 0))
        if line_num <= 0 or line_num > len(content): continue
        
        # Identify the Code Context (Target Statement)
        target_stmt = content[line_num - 1].strip()
        
        # 2. Sink Identification (QL Knowledge)
        detected_sink = None
        critical_idx = -1
        
        for func, idx in QL_SEMANTICS.items():
            # Regex ensures we match whole word function calls
            if re.search(rf"\b{re.escape(func)}\s*\(", target_stmt):
                detected_sink = func
                critical_idx = idx
                break
        
        if detected_sink:
            print(f"  [i] QL-Validation: Identified Vulnerable Sink '{detected_sink}' at line {line_num}.")
            
            # 3. Variable Extraction
            args = extract_call_arguments(target_stmt, detected_sink)
            if len(args) > critical_idx:
                len_var_raw = args[critical_idx]
                # Strip casts like (size_t)len or (int)n
                len_var_clean = re.sub(r"\([^\)]+\)", "", len_var_raw).strip()
                
                if len_var_clean:
                    print(f"      Critical Argument (Length): '{len_var_clean}'")
                    
                    # 4. Logic Validation
                    current_code = instr["code"]
                    
                    # DETECT FLAW: Dereferencing the Critical Variable
                    # If we see `[len]` or `*(...len)` in the assertion, it's checking CONTENT, not BOUNDS.
                    # This violates the principle of OOB detection.
                    deref_pattern = re.search(rf"\[\s*{re.escape(len_var_clean)}", current_code)
                    
                    if deref_pattern:
                        print(f"  [!] REJECTED: Assertion checks CONTENT at index '{len_var_clean}' (Fragile).")
                        print(f"      Violation of {rule_id}: OOB bugs must be detected by BOUNDS, not VALUES.")
                        
                        # 5. Auto-Correction
                        # We switch to a robust bounds check. 
                        # Assumption: OOB implies index > limit. For 1-byte priming, limit is 1.
                        new_pred = f"BUG_ASSERT({len_var_clean} > 1);"
                        instr["code"] = new_pred
                        print(f"      [Auto-Fix] Rewrote assertion to QL-compliant bounds check: '{new_pred}'")
                        
                    elif len_var_clean not in current_code and "0" not in current_code:
                         print(f"  [!] WARNING: Assertion does not reference the critical length variable '{len_var_clean}'.")

    # --- Placement Alignment (Legacy logic preserved for robustness) ---
    for instr in inst_list:
        if "BUG_ASSERT" in instr.get("code", ""):
            orig_line = int(instr.get("line", 0))
            if orig_line <= 0: continue
            
            target_text = content[orig_line - 1].strip()
            is_weak = (not target_text) or target_text.startswith(("//", "/*", "*")) or target_text in ["}", "{", "else", "do {"]
            
            if is_weak:
                best_line = orig_line
                for offset in range(1, 6):
                    if orig_line + offset <= len(content) and ";" in content[orig_line + offset - 1]:
                        best_line = orig_line + offset
                        break
                if best_line != orig_line:
                    instr["line"] = best_line
                    print(f"  [i] Auto-Align: Moved assertion from L{orig_line} to L{best_line}")

    return plan

def run_frozen_analysis(ctx: Dict[str, Any], args: argparse.Namespace, planner_prompt: str, out_dir: Path, src_root: Path) -> Dict[str, Any]:
    # [UPDATED] Scientific Control Short-Circuit
    plan_path = out_dir / "frozen_plan.json"
    if plan_path.exists():
        print(f"\n[=] PHASE 1: SKIPPED (Provenance Re-Use)")
        print(f"  [i] Reusing locked Frozen Plan found at: {plan_path}")
        # BUG WAS HERE: Returned raw JSON without fixing the klee_assert issue
        cached_plan = read_json(plan_path)
        
        # [FIX] Always re-run finalizer to apply code sanitizers (like klee_assert fix)
        return finalize_frozen_plan(
            cached_plan, 
            ctx, 
            args.rule_id, 
            args.spec_stem, 
            args.validation_policy_obj,
            project_bc_path=Path(args.project_bc) if args.project_bc else None,
            src_root=src_root
        )
        
    print("\n[=] PHASE 1: Frozen Context Analysis (Identifying Entrypoint & Logic)")
    ensure_dir(out_dir)
    history = ["STRATEGY: Analyze spec -> 'shell' to verify call paths -> 'final_plan'."]
    
    for i in range(10): 
        print(f"  --- [Analysis Turn {i+1}/10] ---")
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
            # [INSERT THIS BLOCK START]
            f"\n[CRITICAL INSTRUCTION]:\n"
            f"1. STOP using 'grep' piped to 'head' (e.g. '| head -n'). It hides the function body you need.\n"
            f"2. If you see a line number from a previous grep (e.g. '2479: void x...'), "
            f"IMMEDIATELY use the 'read_file' tool to read 50-100 lines around that line.\n"
            f"3. Do NOT search for the same term twice.\n"
            # [INSERT THIS BLOCK END]
            f"GOAL: Identify the Public Entrypoint and the bug-triggering (violating) predicate for BUG_ASSERT."
        )
        
        resp = call_llm_json(planner_prompt, user_msg, out_dir, f"frozen_iter{i:03d}")

        action = resp.get("action")
        rationale = (resp.get("rationale") or "").strip()
        turn_hdr = f"ACTION: {action}\n" + (f"RATIONALE: {rationale}\n" if rationale else "")
        
        if action == "shell":
            log = ""
            for cmd in get_commands_list(resp):
                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:2000]}\nSTDERR:\n{err[:2000]}\n"
                except Exception as e: log += f"Error: {e}\n"
            history.append(turn_hdr + log)
            
        elif action == "lookup_symbols":
            res = perform_smart_lookup(src_root, resp.get("symbols", []))
            history.append(turn_hdr + f"LOOKUP:\n{res[:4000]}")
            
        elif action == "final_plan":
            raw_plan = resp.get("plan", {})
            
            # Entrypoint Compliance
            required_entry = ctx["spec"].get("entrypoint")
            planned_entry = raw_plan.get("entrypoint", {}).get("name")
            
            if required_entry and planned_entry != required_entry:
                print(f"  [!] Plan Rejected: Entrypoint Mismatch. Spec requires '{required_entry}', Plan has '{planned_entry}'.")
                history.append(
                    turn_hdr + f"CRITICAL PLAN ERROR: You selected '{planned_entry}' as the entrypoint, "
                    f"but the mission specification STRICTLY REQUIRES '{required_entry}'.\n"
                    f"You MUST use '{required_entry}' as the public API wrapper in your harness.\n"
                    f"Update your plan to call '{required_entry}'."
                )
                continue

            # [FIX 1] Auto-Switch Static Entrypoints
            raw_plan = fix_static_entrypoint(src_root, ctx['vul_file'], raw_plan)

            # [FIX 2] QL-Driven Assertion Validation (NEW)
            raw_plan = validate_and_fix_assertions(src_root, ctx['vul_file'], raw_plan, args.rule_id or "")

            # 1) Canonicalize frozen plan
            frozen_plan = finalize_frozen_plan(
                raw_plan, 
                ctx, 
                args.rule_id, 
                args.spec_stem, 
                args.validation_policy_obj,
                project_bc_path=Path(args.project_bc) if args.project_bc else None,
                src_root=src_root 
            )

            temp_path = out_dir / "temp_plan.json"
            write_json(temp_path, frozen_plan)

            # 2) Validate the canonical plan (not the raw LLM output)
            valid, msg = run_dcv(temp_path, ctx, args)
            if valid:
                write_json(out_dir / "frozen_plan.json", frozen_plan)  # stable artifact for Phase 2
                print("  [✓] Frozen Plan Locked.")
                # Persist what the agent decided, so later turns don't "forget" the chosen plan.
                history.append(turn_hdr + "FINAL_PLAN_ACCEPTED")
                return frozen_plan
            else:
                history.append(turn_hdr + f"VALIDATOR ERROR: {msg}")

            
    return {"plan_error": "Analysis Failed"}

# ---------------- KLEE UTILS ----------------
def check_for_assert_files(log_dir: Path) -> Tuple[bool, bool]:
    """Scan KLEE output directory and discriminate between real bugs and noise."""
    if not log_dir.exists(): return False, False
    
    bug_hit = False
    reach_hit = False
    
    for err_file in log_dir.glob("*.err"):
        content = err_file.read_text(errors="ignore").lower()
        
        # 1. Explicit Logic Assertions
        if "bug_assert" in content: 
            bug_hit = True
            continue
        if "reach_assert" in content: 
            reach_hit = True
            continue

        # 2. Implicit Memory Errors (Hybrid Strategy)
        if err_file.name.endswith(".ptr.err"):
            # Filter Null Pointer noise from missing stubs
            if "out of bound" in content:
                bug_hit = True 
            elif "null pointer" in content:
                pass # Ignore likely noise from missing externals
            else:
                bug_hit = True # Other invalid access
        
        elif err_file.name.endswith((".free.err", ".overflow.err", ".abort.err", ".div.err")):
            bug_hit = True

    return bug_hit, reach_hit

def check_crash_locality(log_text: str, target_file: str, target_line: int, window: int = 5) -> Tuple[bool, str]:
    """
    Verifies that a crash (implicit bug) occurred near the target line.
    """
    target_name = Path(target_file).name
    
    # Regex to capture "KLEE: ERROR: [file]:[line]: [message]"
    regex = re.compile(r"KLEE: ERROR:\s*(.*?):(\d+):\s*(.*)", re.IGNORECASE)
    matches = regex.findall(log_text)
    
    if not matches:
        return False, "Could not determine crash source line from log."

    # --- 1. TRUSTED SIGNALS (Assertions & Aborts) ---
    # We explicitly injected BUG_ASSERT. If it fires, it is a True Positive.
    # We do not check line distance for these because instrumentation (headers/stubs)
    # shifts the line numbers, and we know we placed the assertion correctly.
    
    if "ASSERTION FAIL" in log_text and "BUG_ASSERT" in log_text:
        return True, "Explicit BUG_ASSERT triggered (confirmed by message)"

    # Handle BUG_ASSERT(x) -> abort() macro
    # KLEE reports this as "abort failure". 
    if "abort failure" in log_text:
        for fpath, lnum_str, msg in matches:
            if "abort failure" in msg and target_name in Path(fpath).name:
                # [FIX] Trust 'abort' in the target file unconditionally. 
                # We assume the library logic does not randomly abort().
                return True, f"Explicit BUG_ASSERT (abort) triggered at {fpath}:{lnum_str} (Trusted Signal)"

    # --- 2. Handle Harness Errors (Refinement Signal) ---
    for fpath, lnum_str, msg in matches:
        try:
            if Path(fpath).name == "harness.c":
                lnum = int(lnum_str)
                msg_s = (msg or "").strip()
                return False, f"HARNESS_LOCAL_CRASH: harness.c:{lnum}: {msg_s}"
        except Exception:
            continue

    # --- 3. Handle Implicit Crashes (Memory Errors, Segfaults) ---
    # For implicit crashes, we MUST verify locality to avoid confirming unrelated bugs.
    best_dist = float('inf')
    crash_loc = "unknown"

    for fpath, lnum_str, msg in matches:
        if target_name not in Path(fpath).name: continue
        try:
            lnum = int(lnum_str)
            dist = abs(lnum - target_line)
            if dist < best_dist:
                best_dist = dist
                crash_loc = f"{target_name}:{lnum}"
        except ValueError: continue

    if best_dist <= window:
        return True, f"Crash at {crash_loc} is within {window} lines of target."
    
    return False, f"Crash Locality Violation: Best match {crash_loc} is {best_dist} lines away from target {target_line}. (Threshold: {window})"

def run_klee(bc_path: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int, 
             target_file: str = "", target_line: int = 0) -> Dict[str, Any]:
    ensure_dir(log_dir)

    # Clear previous per-run output
    out_dir = log_dir / f"klee-out-{idx}"
    if out_dir.exists():
        shutil.rmtree(out_dir, ignore_errors=True)

    # Add flags to prevent inode exhaustion & Enable Tracing
    cmd = [klee] + flags + [
        "--output-dir", str(out_dir),
        "--only-output-states-covering-new", 
    ]

    # Opt-in Tracing: Only enable if env var is set to avoid massive logs
    if os.environ.get("KLEE_TRACE", "0") == "1":
        print("      [i] Enabling instruction trace (Expect slower execution)")
        cmd.append("-debug-print-instructions=src:stderr")
    
    cmd.append(str(bc_path))

    # [UX] Informative output
    print(f"      [>] Output Dir:   {out_dir}")
    print(f"      [>] Streaming KLEE output ({timeout}s max)...")
    print("      ---------------------------------------------------")

    # Use the streaming runner
    rc, out, err, t = run_cmd_stream(cmd, timeout=timeout)
    
    print("      ---------------------------------------------------")

    full_log = f"{out}\n{err}"
    (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")

    # Trace Extraction
    execution_trace = ""
    if "-debug-print-instructions" in cmd:
        trace_lines = []
        target_fname = Path(target_file).name if target_file else ""
        for line in full_log.splitlines():
             if ".c:" in line and (target_fname in line or "harness.c" in line):
                trace_lines.append(line.split("/")[-1].strip())
        execution_trace = "\n".join(trace_lines[-30:]) if trace_lines else "(No relevant trace found)"
    

    # Robust Log Parsing
    bug_assert, reach_assert = check_for_assert_files(out_dir)
    
    # [FIX] Enhanced Detection for "Abort Failure" (used by our BUG_ASSERT macro) 
    if not bug_assert:
        if "BUG_ASSERT" in full_log and "ASSERTION FAIL" in full_log:
            bug_assert = True
        elif "abort failure" in full_log:
            # KLEE reports abort() calls as "abort failure"
            bug_assert = True

    if not reach_assert:
        if "REACH_ASSERT" in full_log and "ASSERTION FAIL" in full_log:
            reach_assert = True
    
    # [FIX] Filter out "Provably False" errors from Harness Crashes
    # These are logic errors in the harness, not execution crashes.
    if "invalid klee_assume call (provably false)" in full_log:
        # If we didn't find a real bug, treat this as a harness configuration error (H0), NOT a crash.
        if not bug_assert:
            print("  [i] KLEE: Assumption failure (provably false). Marking as H0 (Refinement needed).")
            # We explicitly do NOT set failure_reason to HARNESS_LOCAL_CRASH to avoid downgrading the whole run.
            return {
                "status": "harness_constraint_error", # New status
                "bug_assert_hit": False, "reach_assert_hit": False, 
                "elapsed": t, "full_log": full_log, 
                "failure_reason": "Harness assumption provably false (Constraint Error)"
            }
        

    # Locality Check
    failure_reason = None
    if bug_assert and target_line > 0:
        is_local, loc_msg = check_crash_locality(full_log, target_file, target_line)

        # [FIX] If the crash is an "Explicit BUG_ASSERT", we trust it regardless of locality 
        # (because instrumentation might have shifted lines).
        if "Explicit BUG_ASSERT" in loc_msg:
            pass # Keep bug_assert = True
            
        elif not is_local:
            # If it's a memory error (e.g. encoding.c:1059) but far from target (1129),
            # we discard it to avoid false attribution.
            print(f"  [!] Discarding unrelated crash: {loc_msg}")
            bug_assert = False  
            failure_reason = loc_msg
            full_log += f"\n\n[SYSTEM ANALYSIS]: Crash discarded: {loc_msg}\n"
            (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")

    # --- NEW: if KLEE produced an error and we did NOT reach any assertion, classify harness-local crash ---
    # This fixes the common case where KLEE errors out in the harness (e.g., buf[len-1]) before entering target,
    # which previously returned status "ok" and did not drive refinement.
    if (not bug_assert) and (not reach_assert) and ("KLEE: ERROR:" in full_log) and target_file:
        # target_line may be 0 in some runs; we still want harness classification
        _is_local, loc_msg = check_crash_locality(full_log, target_file, target_line or 0)
        if loc_msg.startswith("HARNESS_LOCAL_CRASH:"):
            failure_reason = loc_msg
            full_log += f"\n\n[SYSTEM ANALYSIS]: {loc_msg}\n"
            (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")

    status = (
        "harness_error"
        if (failure_reason or "").startswith("HARNESS_LOCAL_CRASH:")
        else ("assertion_bug" if bug_assert else ("assertion_reach" if reach_assert else ("timeout" if rc == 124 else "ok")))
    )
        
    return {
        "status": status, "bug_assert_hit": bug_assert, "reach_assert_hit": reach_assert, 
        "elapsed": t, "full_log": full_log, "failure_reason": failure_reason,
        "execution_trace": execution_trace 
    }
# ---------------- PHASE 2: REFINEMENT LOOP ----------------

def strip_c_comments_and_strings(text: str) -> str:
    """Removes C comments and string literals to prevent regex bypass."""
    # Pattern captures: strings, chars, // comments, /* comments */
    pattern = r'(".*?"|\'.*?\'|//.*?$|/\*.*?\*/)'
    # Replace all matches with a single space
    return re.sub(pattern, ' ', text, flags=re.MULTILINE|re.DOTALL)
def strip_c_comments_and_strings(text: str) -> str:
    """Removes C comments and string literals to prevent regex bypass."""
    # Pattern captures: strings, chars, // comments, /* comments */
    pattern = r'(".*?"|\'.*?\'|//.*?$|/\*.*?\*/)'
    # Replace all matches with a single space
    return re.sub(pattern, ' ', text, flags=re.MULTILINE|re.DOTALL)


# ---------------- Instrumented Source Tree (for OOB_READ predicate oracles) ----------------

def _copy_tree_filtered(src_root: Path, dst_root: Path) -> None:
    if dst_root.exists():
        shutil.rmtree(dst_root)
    ignore = shutil.ignore_patterns(".git", "se_runs", "__pycache__", "*.o", "*.a", "*.so", "*.dSYM", "build", "cmake-build-*")
    shutil.copytree(src_root, dst_root, ignore=ignore, dirs_exist_ok=False)

def _ensure_bug_assert_macro_in_file(p: Path) -> None:
    txt = p.read_text(encoding="utf-8", errors="replace")
    if "BUG_ASSERT(" in txt and "define BUG_ASSERT" in txt:
        return
    macro = (
        "\n#ifndef BUG_ASSERT\n"
        "#include <stdlib.h>\n"
        "#define BUG_ASSERT(pred) do { if ((pred)) abort(); } while(0)\n"
        "#endif\n"
    )
    # Insert after the initial include block if present, else at top.
    m = re.search(r"(?:^\s*#include[^\n]*\n)+", txt, flags=re.M)
    if m:
        ins = m.end()
        txt2 = txt[:ins] + macro + txt[ins:]
    else:
        txt2 = macro + txt
    p.write_text(txt2, encoding="utf-8")

def apply_plan_instrumentation(inst_root: Path, plan: Dict[str, Any]) -> List[str]:
    """
    Applies plan.instrumentation edits to the source tree.
    [FIX] Uses BATCH PROCESSING (Read Once -> Apply All Descending -> Write Once)
    to prevent line number drift caused by incremental edits.
    """
    actions: List[str] = []
    inst = plan.get("instrumentation", [])
    if not isinstance(inst, list) or not inst:
        return actions

    # 1. Group directives by File
    file_map: Dict[str, List[Dict[str, Any]]] = {}
    for ent in inst:
        if not isinstance(ent, dict): continue
        rel = str(ent.get("file") or "").strip()
        if not rel: continue
        if rel not in file_map:
            file_map[rel] = []
        file_map[rel].append(ent)

    # 2. Process each file in a single pass
    for rel, directives in file_map.items():
        target = (inst_root / rel).resolve()
        if not target.exists():
            actions.append(f"[instrumentation] missing file: {rel}")
            continue

        # Sort DESCENDING by line number.
        # This ensures we edit the bottom first, preserving offsets for top lines.
        directives.sort(key=lambda x: -int(x.get("line") or 0))

        # Read content once
        lines = target.read_text(encoding="utf-8", errors="replace").splitlines(True)
        
        modified = False
        for ent in directives:
            line_idx = int(ent.get("line") or 0)
            kind = (ent.get("kind") or "insert_before").strip()
            code = str(ent.get("code") or "").rstrip()

            # If line number is greater than file length, it's a hallucination.
            # We reject it to avoid appending garbage to the end of the file.
            if line_idx > len(lines):
                print(f"  [!] Skipping invalid instrumentation at {rel}:{line_idx} (File has {len(lines)} lines)")
                actions.append(f"[instrumentation] SKIP OOB {rel}:{line_idx}")
                continue

            if line_idx <= 0 or not code: continue
            
            # Calculate insertion index (0-based) from line number (1-based)
            # Clamp to valid range
            idx = max(0, min(len(lines), line_idx - 1))
            
            # Prepare injection with debug tag
            debug_tag = f" /* [STAILOR] Injected at orig line {line_idx} */"
            ins = f"{code}{debug_tag}\n" if not code.endswith("\n") else f"{code.rstrip()}{debug_tag}\n"

            if kind == "insert_after":
                # For 'after', we insert at idx + 1. 
                # Since we process descending, this doesn't affect lower indices.
                insert_pos = idx + 1
            else:
                insert_pos = idx
            
            # Final sanity check: Don't append if it pushes beyond EOF unless file is empty
            if insert_pos > len(lines) and len(lines) > 0:
                 continue
            
            if insert_pos >= len(lines):
                lines.append(ins)
            else:
                lines.insert(insert_pos, ins)
                
            actions.append(f"[instrumentation] {kind} {rel}:{line_idx}")
            modified = True

        # Write back only if changed
        if modified:
            target.write_text("".join(lines), encoding="utf-8")

    return actions

def build_instrumented_project_bc(
    *,
    src_root: Path,
    work_dir: Path,
    frozen_plan: Dict[str, Any],
    args: argparse.Namespace
) -> Tuple[Optional[Path], List[str], str]:
    """
    If frozen_plan requests target instrumentation, create an instrumented source tree
    and rebuild a project.bc for KLEE + replay to link against.
    """
    inst = frozen_plan.get("instrumentation", [])
    if not isinstance(inst, list) or not inst:
        return (Path(args.project_bc) if args.project_bc else None, [], "")

    if not getattr(args, "build_project_bc_cmd", None):
        return (None, [], "Instrumentation required but --build-project-bc-cmd was not provided.")

    inst_root = work_dir / "instrumented_source"
    _copy_tree_filtered(src_root, inst_root)
    
    # -------------------------------------------------------------
    # [PIPELINE FIX] Automated KLEE Header Injection (Trojan Horse)
    # -------------------------------------------------------------
    # Goal: Copy 'klee/klee.h' into the project's include dir so the build finds it
    # without needing fragile CFLAGS exports.
    
    klee_src_dir = None
    
    # 1. Find KLEE includes from arguments
    # We look for a path containing 'klee/klee.h' inside the flags
    candidates = []
    if args.clang_flags:
        for flag in args.clang_flags:
            if flag.startswith("-I"):
                p = Path(flag[2:]).resolve()
                candidates.append(p)
    
    # Fallback checks
    candidates.extend([
        Path("/usr/include"), 
        Path("/usr/local/include"),
        Path.home() / "tools/klee/include"
    ])

    for p in candidates:
        if (p / "klee" / "klee.h").exists():
            klee_src_dir = p / "klee"
            break
            
    if klee_src_dir:
        # 2. Determine Project Include Root
        # libxml2 usually uses 'include/', but we fallback to root if missing
        proj_inc = inst_root / "include"
        if not proj_inc.exists():
            proj_inc = inst_root
            
        klee_dst_dir = proj_inc / "klee"
        
        # 3. Copy headers
        try:
            if klee_dst_dir.exists():
                shutil.rmtree(klee_dst_dir)
            shutil.copytree(klee_src_dir, klee_dst_dir)
            print(f"  [i] Pipeline: Injected KLEE headers into {klee_dst_dir} to fix build dependencies.")
        except Exception as e:
            print(f"  [!] Warning: Failed to inject KLEE headers: {e}")
    else:
        print("  [!] Warning: Could not locate 'klee/klee.h' in CLANG_FLAGS. Instrumented build might fail.")
    # -------------------------------------------------------------

    actions = apply_plan_instrumentation(inst_root, frozen_plan)

    out_bc = inst_root / "project.bc"
    cmd_tmpl = str(args.build_project_bc_cmd)
    cmd = cmd_tmpl.format(SRC_ROOT=str(inst_root), OUT_BC=str(out_bc))

    rc, out, err, _ = run_cmd(["bash", "-lc", cmd], cwd=inst_root, timeout=1800)
    (work_dir / "instrumented_build.stdout").write_text(out, encoding="utf-8", errors="replace")
    (work_dir / "instrumented_build.stderr").write_text(err, encoding="utf-8", errors="replace")

    if rc != 0:
        return (None, actions, f"Instrumented build failed (rc={rc}). See instrumented_build.stderr/stdout.")
    if not out_bc.exists():
        cands = list(inst_root.rglob("*.bc"))
        if len(cands) == 1:
            out_bc = cands[0]
        else:
            return (None, actions, "Instrumented build did not produce OUT_BC (project.bc). Provide a cmd that writes {OUT_BC}.")

    return (out_bc, actions, "")
    
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

def _extract_bug_assert_predicate_from_main(harness_src: str) -> Optional[str]:
    """
    Robustly extracts the predicate from BUG_ASSERT() inside main(),
    ignoring comments, strings, and preprocessor macros.
    """
    # 1. Strip comments and strings first to prevent parsing noise
    clean_src = strip_c_comments_and_strings(harness_src)
    
    # 2. Remove preprocessor lines (prevents matching #define BUG_ASSERT...)
    no_pp = "\n".join(
        ln for ln in clean_src.splitlines()
        if not ln.lstrip().startswith("#")
    )

    # 3. Only search inside main()
    # Matches: int main(...) {
    mm = re.search(r"\bint\s+main\s*\([^)]*\)\s*\{", no_pp)
    if not mm:
        return None
    
    body = no_pp[mm.end():]

    # 4. Stop at end of main (Robust Brace Counting on stripped text)
    depth = 1
    end_idx = -1
    for i, char in enumerate(body):
        if char == '{':
            depth += 1
        elif char == '}':
            depth -= 1
            if depth == 0:
                end_idx = i
                break
    
    if end_idx != -1:
        body = body[:end_idx]

    # 5. Search for BUG_ASSERT(pred);
    # Robust regex allowing for newlines inside parens
    m = re.search(r"\bBUG_ASSERT\s*\((.*?)\)\s*;", body, flags=re.DOTALL)
    if m:
        return m.group(1).strip()
    return None

def validate_harness_structure(
    harness_src: str,
    required_entrypoint: str,
    policy: Dict[str, Any],
    rule_id: str,
    spec_stem: str,
    frozen_plan: Dict[str, Any] = None,
    defined_symbols: Set[str] = None  # <--- [NEW] Project symbols set
) -> Tuple[bool, str]:
    """
    Hardened validation with Robust Parsing, Policy Enforcement, and Collision Prevention.
    """
    # --- 1. Marker Check ---
    required_markers = [
        "/* --- Global Constants --- */",
        "/* --- Stub Functions --- */",
        "/* --- Harness --- */",
    ]
    for mk in required_markers:
        if mk not in harness_src:
            return False, f"Missing required section marker: {mk}"

    try:
        global_sec, rest = harness_src.split("/* --- Stub Functions --- */", 1)
        stub_sec_raw, harness_sec = rest.split("/* --- Harness --- */", 1)
    except Exception:
        return False, "Failed to split harness into sections. Ensure markers are present and ordered."
    
    clean_harness = strip_c_comments_and_strings(harness_sec)
    clean_all = strip_c_comments_and_strings(harness_src)

    # --- 2. Linker Collision Prevention (Optimized & Robust) ---
    # Strategy: Find what the harness defines, then check if it exists in the project.
    if defined_symbols:
        # Matches: Type Name(Args) {
        # Captures: 1=Name
        defn_pattern = re.compile(r"^\s*(?:[\w\s\*]+)\b([a-zA-Z_]\w*)\s*\([^;]*\)\s*\{", re.MULTILINE)
        
        # Scan the WHOLE clean source (Stubs + Harness)
        for match in defn_pattern.finditer(clean_all):
            func_name = match.group(1)
            if func_name == "main": continue
            
            if func_name in defined_symbols:
                return False, (
                    f"LINKER COLLISION: You defined '{func_name}', but it already exists in the target library.\n"
                    "VIOLATION: Defining it creates a 'multiple definition' error.\n"
                    "FIX: Use Macro Redirection to stub it safely.\n"
                    f"EXAMPLE:\n"
                    f"   char* stub_{func_name}(...) {{ ... }}\n"
                    f"   #define {func_name} stub_{func_name}"
                )

    # --- 3. Assertion Placement Strategy (Merged Logic) ---
    plan_inst = frozen_plan.get("instrumentation", []) if frozen_plan else []
    plan_assertions = frozen_plan.get("assertions", []) if frozen_plan else []
    
    has_source_bug = any("BUG_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))
    has_source_reach = any("REACH_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))
    
    # 3a. CHECK_READ Requirement
    uses_check_read = any(a.get("id") == "CHECK_READ" for a in plan_assertions)
    if uses_check_read and "#define CHECK_READ" not in clean_all:
        return False, "Plan requires 'CHECK_READ' but harness missing '#define CHECK_READ'."

    # 3b. Detect Inverted Assertions
    inverted_assert_re = re.compile(r"BUG_ASSERT\s*\(\s*(1|true)\s*\)", re.IGNORECASE)
    if inverted_assert_re.search(clean_harness):
        return False, "INVALID SENTINEL: 'BUG_ASSERT(1)' forces a crash immediately. Use 'BUG_ASSERT(0)' for Safe Landing."

    # 3c. Source vs Harness Placement (Policy Alignment)
    if has_source_bug:
        # Strategy says: Assertion is in the source (e.g. OOB_READ).
        # Validator says: Harness MUST be assertion-free to prevent noise.
        # We check for literal BUG_ASSERT calls in the code.
        if re.search(r"BUG_ASSERT\s*\(", clean_harness):
             return False, (
                 "STRATEGY VIOLATION: You placed BUG_ASSERT() in the Harness.\n"
                 "REASON: The strategy uses 'instrumented_predicate', so the assertion is injected into the target file.\n"
                 "ACTION: DELETE BUG_ASSERT() from the harness. Just call the entrypoint."
             )
        # Note: We do NOT enforce "Missing BUG_ASSERT" here because it's handled by source.
        
    else:
        # Standard Strategy: Assertion MUST be in harness.
        # Use robust extractor to verify presence inside main().
        # We skip this check if CHECK_READ is used (as that's a different oracle type).
        if not uses_check_read:
            if not _extract_bug_assert_predicate_from_main(harness_src):
                 return False, "Harness is missing BUG_ASSERT(...) inside main()."

    # 3d. Enforce REACH_ASSERT Placement
    if has_source_reach:
        if re.search(r"REACH_ASSERT\s*\(", harness_sec):
             return False, "STRATEGY VIOLATION: You placed REACH_ASSERT() in the Harness. Delete it."
    elif not re.search(r"REACH_ASSERT\s*\(", harness_sec):
         return False, "Harness missing REACH_ASSERT() sentinel."

    # 3e. Check Ordering (Only if BOTH are in harness)
    if (not has_source_bug) and (not has_source_reach):
        _exec = re.sub(r"^\s*#.*$", " ", harness_sec, flags=re.MULTILINE)
        _exec = re.sub(r"/\*.*?\*/", " ", _exec, flags=re.S)
        _exec = re.sub(r"//.*?$", " ", _exec, flags=re.M)
        
        bug_pos = _exec.find("BUG_ASSERT(")
        reach_pos = _exec.find("REACH_ASSERT")
        
        if reach_pos != -1 and bug_pos != -1 and reach_pos < bug_pos:
            return False, "Invalid ordering: REACH_ASSERT appears before BUG_ASSERT. Place Bug Oracle first."

    # --- 4. Enforce Frozen Assertion Equivalence (Robust) ---
    if frozen_plan and not has_source_bug and not uses_check_read:
        required_pred = ""
        for a in plan_assertions:
            if a.get("kind") == "bug" or a.get("id") == "BUG_ASSERT":
                required_pred = a.get("condition") or a.get("predicate")
                break
        
        if required_pred:
            # Use the Robust Extractor
            actual_pred = _extract_bug_assert_predicate_from_main(harness_src)
            
            if actual_pred:
                req_norm = " ".join(required_pred.split())
                act_norm = " ".join(actual_pred.split())
                
                # Allow exact match OR constants (0/1/true/false) for crash oracles
                if req_norm != act_norm and act_norm not in ["1", "true", "0", "false"]:
                     return False, (
                         f"PLAN VIOLATION: Harness BUG_ASSERT predicate does not match Frozen Plan.\n"
                         f"   Required: {req_norm}\n"
                         f"   Found:    {act_norm}"
                     )

    # --- 5. Forbid Generic Placeholders & Weak Assertions ---
    if "Placeholder" in harness_sec:
        return False, "DETECTED PLACEHOLDER ASSERTION. You MUST implement the exact logic from the Frozen Plan."
    
    if re.search(r"BUG_ASSERT\s*\(\s*len\s*>\s*0\s*\)", harness_sec):
         return False, "WEAK ASSERTION DETECTED: 'BUG_ASSERT(len > 0)' is too generic."

    # --- 6. Main() Structural Check ---
    main_re = re.compile(r"^\s*int\s+main\s*\(", re.MULTILINE)
    if not main_re.search(harness_sec):
        if main_re.search(global_sec) or main_re.search(stub_sec_raw):
            return False, "STRUCTURAL ERROR: main() is outside '/* --- Harness --- */'. Move it."
        else:
            return False, "STRUCTURAL ERROR: Missing 'int main(...)' inside '/* --- Harness --- */'."

    # --- 7. Entrypoint Checks ---
    if required_entrypoint:
        clean_no_defs = re.sub(r"^\s*(?:[\w\*]+\s+)+\b[\w]+\s*\(.*?\)\s*\{", " ", clean_harness, flags=re.MULTILINE | re.DOTALL)
        
        if not re.search(rf"\b{re.escape(required_entrypoint)}\s*\(", clean_no_defs):
            return False, f"Harness does not CALL required entrypoint '{required_entrypoint}'."

        redef_re = re.compile(rf"^\s*(?:[\w\s\*]+?)\b{re.escape(required_entrypoint)}\s*\([^;]*?\)\s*\{{", re.MULTILINE)
        if redef_re.search(harness_sec):
            return False, f"ILLEGAL REDEFINITION: You defined '{required_entrypoint}' in the Harness. Delete it."

    # --- 8. Stub Policy Checks (Immutability & Criticals) ---
    vcfg = (policy or {}).get("validation", {}) or {}
    replay_critical = set(vcfg.get("hash_function_names", []) or [])
    if frozen_plan:
        replay_critical |= compute_immutable_set(frozen_plan)

    clean_stub_sec = strip_c_comments_and_strings(stub_sec_raw)
    
    if replay_critical:
        for fn in replay_critical:
             fn_def_re = re.compile(rf"^\s*(?:static\s+)?[A-Za-z0-9_]+\s+\b{re.escape(fn)}\s*\([^;]*\)\s*\{{", re.MULTILINE)
             if fn_def_re.search(clean_stub_sec):
                 return False, f"ILLEGAL DEFINITION: You defined '{fn}' in Stubs. It is Critical/Immutable."

    # --- 9. Detect Self-Fulfilling Assertions ---
    if required_entrypoint:
        sym_vars = re.findall(r"klee_make_symbolic\s*\(\s*(?:&)?(\w+)", harness_sec)
        clean_code = strip_c_comments_and_strings(harness_sec)
        
        for var in sym_vars:
            if len(var) < 3 or var in ["key", "buf", "str", "ptr", "len", "ret"]: continue 
            
            bug_assert_hit = re.search(rf"BUG_ASSERT\s*\(\s*(!\s*)?\b{re.escape(var)}\b", clean_code)
            check_read_hit = re.search(rf"CHECK_READ\s*\(\s*.*?\b{re.escape(var)}\b", clean_code)
            
            if not (bug_assert_hit or check_read_hit): continue

            passed_to_entry = re.search(rf"\b{re.escape(required_entrypoint)}\s*\([^;]*\b{re.escape(var)}\b", clean_code)
            if not passed_to_entry:
                return False, f"SELF-FULFILLING ASSERTION: Variable '{var}' checked but not passed to entrypoint."

    # --- 10. Enforce Constraint Policy (Anti-Safety Coupling) ---
    buf_size_match = re.search(r"char\s+\w+\[(\d+)\]", clean_harness)
    buf_size = int(buf_size_match.group(1)) if buf_size_match else 0

    if buf_size > 0 and buf_size < 1024:
        if re.search(r"klee_assume\s*\([^;]*\bsizeof\b", clean_harness):
            return False, "POLICY VIOLATION: Used 'sizeof' in klee_assume with small buffer (Safety Coupling)."
        
        if re.search(rf"klee_assume\s*\([^;]*[<]=?\s*{buf_size}\s*\)", clean_harness):
             return False, f"POLICY VIOLATION: Constrained len < {buf_size}. This prevents the bug."

    # --- 11. Phantom Stub Detection ---
    forbidden_stubs = ["strlen", "malloc", "calloc", "free"]
    for func in forbidden_stubs:
        if re.search(rf"^\s*#\s*define\s+\b{func}\b\s+stub_{func}", clean_harness, re.MULTILINE):
            return False, f"PHANTOM STUB DETECTED: Do not stub '{func}'. The target uses the real libc."

    return True, ""

def find_typedef_global(src_root: Path, type_name: str) -> Optional[str]:
    """
    Scans the source tree for 'typedef ... type_name;' generically.
    Improvements: Handles whitespace, pointer asterisks, and multi-file search.
    """
    # 1. Try exact match first (Fast)
    # Looks for: typedef <anything> type_name;
    cmd = ["grep", "-r", "-h", f"typedef .* {type_name};", str(src_root)]
    rc, out, _, _ = run_cmd(cmd)
    
    if rc == 0 and out.strip():
        # Filter out false positives (e.g. inside comments)
        for line in out.splitlines():
            line = line.strip()
            if line.startswith("typedef") and line.endswith(";") and type_name in line:
                return line

    # 2. Try looser match (e.g. 'typedef unsigned char xmlChar') without semicolon logic
    # This catches cases where grep might miss weird formatting.
    cmd_loose = ["grep", "-r", "-h", f"typedef .*{type_name}", str(src_root)]
    rc, out, _, _ = run_cmd(cmd_loose)
    
    if rc == 0 and out.strip():
        for line in out.splitlines():
            line = line.strip()
            # Ensure it defines THE type, not a pointer TO the type
            # Good: typedef unsigned char xmlChar;
            # Good: typedef struct _xmlDict xmlDict;
            parts = line.split()
            if len(parts) >= 3 and parts[0] == "typedef":
                # Check if the last token (minus semicolon) is the type name
                last = parts[-1].rstrip(";")
                if last == type_name:
                    return line

    return None

def find_opaque_struct_global(src_root: Path, struct_name: str) -> Optional[str]:
    """Scans the entire source tree for the definition of 'struct name { ... };'"""
    # 1. Fast filter: Find files that might contain the definition
    cmd = ["grep", "-r", "-l", f"struct {struct_name}", str(src_root)]
    rc, out, _, _ = run_cmd(cmd)
    
    if rc != 0 or not out.strip():
        return None
        
    candidate_files = out.strip().splitlines()
    
    # 2. Deep scan: Parse each candidate file with brace counting
    start_pat = re.compile(rf"struct\s+{re.escape(struct_name)}\s*\{{")
    
    for fpath_str in candidate_files:
        try:
            if not fpath_str.endswith((".c", ".h")): continue
            content = Path(fpath_str).read_text(encoding="utf-8", errors="ignore")
            
            match = start_pat.search(content)
            if not match: continue
            
            # Brace counting to capture full body
            start_idx = match.start()
            open_braces = 0
            found_start = False
            end_idx = -1
            
            for i in range(start_idx, len(content)):
                if content[i] == '{':
                    open_braces += 1
                    found_start = True
                elif content[i] == '}':
                    open_braces -= 1
                    if found_start and open_braces == 0:
                        # Found closing brace. Look for semicolon.
                        sc_idx = content.find(';', i)
                        if sc_idx != -1:
                            end_idx = sc_idx + 1
                        break
            
            if end_idx != -1:
                return f"/* Definition found in {Path(fpath_str).name} */\n" + content[start_idx:end_idx]

        except Exception:
            continue
            
    return None
def compute_immutable_set(frozen_plan: Dict[str, Any]) -> set:
    """Identify functions that MUST NOT be stubbed (Critical Path)."""
    immutable = set()
    # 1. Entrypoint
    ep = frozen_plan.get("entrypoint", {}).get("name")
    if ep: immutable.add(ep)
    # 2. Call Sequence
    for call in frozen_plan.get("call_sequence", []):
        if "function" in call:
            immutable.add(call["function"])
    # 3. Explicit 'Must Embed'
    for func in frozen_plan.get("embedding_plan", {}).get("must_embed_functions", []):
        if "name" in func:
            immutable.add(func["name"])
    return {x for x in immutable if x}
    


def preflight_check(harness_src: str, strategy: str) -> List[str]:
    """
    Fail-fast linter for common 'KLEE killers' and false-positive risks.

    Design goals (carefully balanced):
      - HARD-FAIL only on patterns that are *very likely* to break KLEE or invalidate the bug claim.
      - WARN (do not block) on patterns that are suspicious but not definitively harmful,
        to avoid deadlocking the refinement loop on false positives (e.g., malloc(size) where size is concrete).

    Returns a list of actionable feedback strings. Any entry starting with
    'PRE-FLIGHT ERROR' should be treated as a hard stop for the iteration.
    """
    errors: List[str] = []
    strategy_u = (strategy or "").upper()

    # Work on code with comments/strings removed to reduce false positives.
    try:
        clean = strip_c_comments_and_strings(harness_src or "")
    except Exception:
        clean = harness_src or ""

    # ----------------------------
    # 1) Forbidden safety-coupling assumptions (OOB classes)
    # ----------------------------
    # Default policy: sizeof() inside klee_assume is usually safety-coupling and can hide the bug.
    # Exception policy: allow sizeof() only when it clearly protects harness-local indexing patterns
    # like BUF[len] or BUF[len-1]. This prevents the harness itself from crashing before reaching
    # the target code, without "proving safety" in the target.
    #
    # Example allowed (if BUF[len] or BUF[len-1] appears):
    #   klee_assume(len > 0);
    #   klee_assume(len < sizeof(BUF));
    #   klee_assume(len <= sizeof(BUF) - 1);
    #
    # Disallowed:
    #   klee_assume(len < sizeof(target_buf))   when the harness does NOT index target_buf by len
    #   klee_assume(len <= min(len, sizeof(...)))  (clamping)
    #
    def _collect_len_indexed_buffers(text: str) -> Set[str]:
        bufs: Set[str] = set()
        # buf[len]
        for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\[\s*len\s*\]", text):
            bufs.add(m.group(1))
        # buf[len-1]
        for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\[\s*len\s*-\s*1\s*\]", text):
            bufs.add(m.group(1))
        return bufs

    def _split_assume_exprs(text: str) -> List[str]:
        # Good enough heuristic: assumes are usually single-line and end with );
        out: List[str] = []
        for m in re.finditer(r"\bklee_assume\s*\(\s*([^;]*?)\s*\)\s*;", text):
            out.append(m.group(1).strip())
        return out

    def _is_len_bound_by_sizeof_buf(expr: str, buf: str) -> bool:
        # Normalize whitespace
        e = re.sub(r"\s+", " ", expr.strip())
        # Allow simple casts around len or sizeof
        len_term = r"(?:\(\s*(?:unsigned|int|size_t|long|unsigned long|uint32_t|uint64_t|uintptr_t)\s*\)\s*)?len"
        sizeof_term = rf"(?:\(\s*(?:unsigned|int|size_t|long|unsigned long|uint32_t|uint64_t|uintptr_t)\s*\)\s*)?sizeof\s*\(\s*{re.escape(buf)}\s*\)"

        # len < sizeof(buf)
        if re.search(rf"\b{len_term}\b\s*<\s*{sizeof_term}\b", e):
            return True
        # len <= sizeof(buf)
        if re.search(rf"\b{len_term}\b\s*<=\s*{sizeof_term}\b", e):
            return True
        # len <= sizeof(buf) - 1
        if re.search(rf"\b{len_term}\b\s*<=\s*{sizeof_term}\b\s*-\s*1\b", e):
            return True
        # len < sizeof(buf) - 1
        if re.search(rf"\b{len_term}\b\s*<\s*{sizeof_term}\b\s*-\s*1\b", e):
            return True
        return False

    if ("OOB" in strategy_u) or ("READ" in strategy_u) or ("WRITE" in strategy_u):
        # Hard fail: explicit clamping patterns (these are almost always bug-hiding)
        if (
            re.search(r"\bmin\s*\(\s*[^,]+,\s*sizeof\s*\(", clean)
            or re.search(r"\bsizeof\s*\([^)]*\)\s*\?\s*[^:]*:\s*[^;]*\b", clean)
        ):
            errors.append(
                "PRE-FLIGHT ERROR: Detected length clamping with 'min(..., sizeof(...))' (or equivalent).\n"
                "CAUSE: Clamping forces safety and can optimize the OOB condition out of existence.\n"
                "FIX: Do not clamp. Let the target code enforce bounds; keep harness inputs unconstrained except for realism/perf."
            )

        # Handle sizeof() inside klee_assume with exception-based allow rule
        indexed_bufs = _collect_len_indexed_buffers(clean)
        assume_exprs = _split_assume_exprs(clean)

        sizeof_assumes = [e for e in assume_exprs if re.search(r"\bsizeof\s*\(", e)]
        if sizeof_assumes:
            # Determine which sizeof-assumes are clearly harness-safety bounds
            allowed: List[str] = []
            suspicious: List[str] = []

            for expr in sizeof_assumes:
                ok = False
                for buf in indexed_bufs:
                    if _is_len_bound_by_sizeof_buf(expr, buf):
                        ok = True
                        break
                if ok:
                    allowed.append(expr)
                else:
                    suspicious.append(expr)

            # If any suspicious sizeof-assumes exist, hard-fail them
            for expr in suspicious:
                errors.append(
                    "PRE-FLIGHT ERROR: Detected 'klee_assume(...)' that references 'sizeof(...)' but does NOT appear to be\n"
                    "a harness-local safety guard for an actual 'BUF[len]' / 'BUF[len-1]' access.\n"
                    "CAUSE: This is often a safety-coupling assumption (e.g., len < sizeof(buf)) that hides the bug.\n"
                    f"OFFENDING: klee_assume({expr});\n"
                    "FIX: Remove sizeof()-based safety assumptions unless they are strictly preventing a harness-local OOB\n"
                    "     (i.e., the harness itself indexes BUF[len] or BUF[len-1]). Keep only realism/perf bounds (len>0, len<4096)."
                )

            # Optional: record allowed ones as warnings for observability/debugging
            for expr in allowed:
                errors.append(
                    "PRE-FLIGHT WARNING: Allowed sizeof()-based klee_assume used for harness-local safety "
                    f"(protecting BUF[len] / BUF[len-1]): klee_assume({expr});"
                )

    # ----------------------------
    # 2) Symbolic-sized heap allocation (KLEE killer)
    # ----------------------------
    # Goal: flag *symbolic-dependent* sizes as ERROR.
    # Treat merely-variable sizes as WARNING unless clearly symbolic.
    #
    # Allowed examples:
    #   malloc(123), malloc(CONSTANT), malloc(sizeof(T)), malloc(sizeof(T)*123),
    #   malloc(size) where 'size' is concretely assigned (e.g., const size_t size=64; size=64;)
    #
    # ERROR examples:
    #   malloc(len) where 'len' is symbolic
    #   malloc(sizeof(T)*len) where len is symbolic
    #   calloc(nmemb, len) where nmemb/len depends on symbolic
    #   realloc(p, len) where len depends on symbolic

    def _split_args_top_level(arg_str: str) -> List[str]:
        """Split function args on commas, respecting parentheses nesting."""
        out: List[str] = []
        cur: List[str] = []
        depth = 0
        for ch in arg_str:
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth = max(0, depth - 1)
            if ch == "," and depth == 0:
                out.append("".join(cur).strip())
                cur = []
            else:
                cur.append(ch)
        tail = "".join(cur).strip()
        if tail:
            out.append(tail)
        return out

    # Collect symbolic scalar names.
    sym_vars: set[str] = set()
    sym_vars.update(re.findall(r"\bklee_make_symbolic\s*\(\s*&?\s*([A-Za-z_][A-Za-z0-9_]*)\b", clean))
    sym_vars.update(re.findall(r"\bklee_range\s*\(\s*[^,]+,\s*[^,]+,\s*\"([A-Za-z_][A-Za-z0-9_]*)\"", clean))

    def _is_concrete_constant_ident(ident: str) -> bool:
        """Conservative: if it looks constant, treat it as safe (do NOT block)."""
        if re.search(
            rf"\b(?:static\s+)?const\b[^;\n]*\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b",
            clean,
        ):
            return True

        if re.search(
            rf"\b(?:size_t|ssize_t|int|unsigned\s+int|long|unsigned\s+long|"
            rf"uint64_t|uint32_t|uint16_t|uint8_t|uintptr_t)\b[^;\n]*\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b",
            clean,
        ):
            return True

        if re.search(rf"\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b\s*;", clean):
            return True

        if re.search(
            rf"^\s*#\s*define\s+{re.escape(ident)}\s+(?:\d+|0x[0-9a-fA-F]+)\b",
            harness_src or "",
            re.MULTILINE,
        ):
            return True

        return False

    def _expr_depends_on_symbolic(expr: str) -> bool:
        for v in sym_vars:
            if re.search(rf"\b{re.escape(v)}\b", expr):
                return True
        return False

    alloc_calls = re.finditer(r"\b(malloc|calloc|realloc)\s*\(\s*([^\)]*?)\s*\)", clean)
    for m in alloc_calls:
        fn = m.group(1)
        args_str = m.group(2)
        args = _split_args_top_level(args_str)

        size_exprs: List[str] = []
        if fn == "malloc":
            if len(args) >= 1:
                size_exprs = [args[0]]
        elif fn == "realloc":
            if len(args) >= 2:
                size_exprs = [args[1]]
        elif fn == "calloc":
            if len(args) >= 2:
                size_exprs = [args[0], args[1]]

        for aexpr in (e.strip() for e in size_exprs if e and e.strip()):
            if re.fullmatch(r"(?:\d+|0x[0-9a-fA-F]+)", aexpr):
                continue
            if re.fullmatch(r"[A-Z0-9_]+", aexpr):
                continue
            if re.fullmatch(
                r"sizeof\s*\([^)]*\)(?:\s*[\*\/]\s*(?:\d+|0x[0-9a-fA-F]+|[A-Z0-9_]+))*",
                aexpr,
            ):
                continue

            if _expr_depends_on_symbolic(aexpr):
                errors.append(
                    f"PRE-FLIGHT ERROR: Detected dynamic allocation with symbolic-dependent size in '{fn}({aexpr})'.\n"
                    "CAUSE: KLEE cannot reliably handle symbolic allocation sizes; it often concretizes or fails.\n"
                    "FIX: Use fixed-size buffers (e.g., 'char buf[64];') OR allocate a fixed heap size."
                )
                continue

            ident_m = re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", aexpr)
            if ident_m:
                ident = ident_m.group(0)

                if ident in sym_vars:
                    errors.append(
                        f"PRE-FLIGHT ERROR: Detected dynamic allocation with symbolic size in '{fn}({ident})'.\n"
                        "CAUSE: Allocation size depends on a symbolic variable.\n"
                        "FIX: Replace with a fixed-size buffer/allocation and keep only Frozen Plan realism/perf assumptions."
                    )
                    continue

                if _is_concrete_constant_ident(ident):
                    continue

                errors.append(
                    f"PRE-FLIGHT WARNING: Detected allocation with variable size in '{fn}({ident})' that is not proven constant.\n"
                    "RISK: If this variable becomes symbolic, KLEE may concretize/fail.\n"
                    "FIX: Prefer a literal/macro constant (e.g., 64/256/4096) or 'const size_t X=64;'. "
                    "Do NOT tie allocation size to symbolic inputs."
                )
                continue

            tmp = re.sub(r"sizeof\s*\([^)]*\)", "SIZEOF", aexpr)
            idents = [x for x in re.findall(r"\b[A-Za-z_][A-Za-z0-9_]*\b", tmp) if x != "SIZEOF"]

            if idents and all(re.fullmatch(r"[A-Z0-9_]+", x) or _is_concrete_constant_ident(x) for x in idents):
                continue

            errors.append(
                f"PRE-FLIGHT WARNING: Detected allocation size expression that is not proven constant in '{fn}({aexpr})'.\n"
                "RISK: Non-constant allocation sizes are fragile; if they become symbolic, KLEE may fail.\n"
                "FIX: Use a fixed-size buffer (stack or heap) or ensure the expression is purely constant (literals/macros/sizeof * literal)."
            )

    # ----------------------------
    # 3) Missing bcmp redirector (external call killer)
    # ----------------------------
    if re.search(r"\bbcmp\s*\(", clean):
        has_macro = re.search(r"#\s*define\s+bcmp\s+memcmp\b", clean) is not None
        has_shim = re.search(
            r"\b(?:int|unsigned\s+int|long|size_t)\s+bcmp\s*\([^)]*\)\s*\{[^}]*\bmemcmp\s*\(",
            clean,
            re.DOTALL,
        ) is not None
        if not (has_macro or has_shim):
            errors.append(
                "PRE-FLIGHT ERROR: Used 'bcmp' without a redirector/shim.\n"
                "CAUSE: 'bcmp' is often missing from KLEE's uclibc, leading to external-call failures.\n"
                "FIX (choose one):\n"
                "  A) Add:  #define bcmp memcmp\n"
                "  B) Add:  int bcmp(const void *s1, const void *s2, size_t n) { return memcmp(s1, s2, n); }"
            )

    # ----------------------------
    # 4) OOB harnesses with no steering assumptions often collapse to trivial paths (warning only)
    # ----------------------------
    if ("OOB" in strategy_u) and ("klee_assume" not in clean):
        errors.append(
            "PRE-FLIGHT WARNING: No 'klee_assume' found in an OOB harness.\n"
            "RISK: KLEE may pick trivial values (e.g., len=0) and miss the vulnerability.\n"
            "FIX: Add realism/performance constraints (e.g., len>0, len<4096) per the Frozen Plan."
        )

    # ----------------------------
    # 5) Forbid klee_assume(strlen(...)) -> "Provably False" Risk
    # ----------------------------
    if "klee_assume" in clean:
        # Regex to find klee_assume( ... strlen( ... ) ... )
        if re.search(r"klee_assume\s*\([^;]*\bstrlen\s*\(", clean):
            errors.append(
                "PRE-FLIGHT ERROR: Detected 'klee_assume' using 'strlen'.\n"
                "CAUSE: KLEE's strlen is path-sensitive. Using it in an assumption often leads to 'invalid klee_assume call (provably false)' on edge cases (e.g. empty strings).\n"
                "FIX: Use C-level filtering instead: 'if (strlen(s) > MAX) return 0;'.\n"
                "OR: Construct the string with a known symbolic length variable and terminate it manually."
            )
    return errors

def interactive_synthesizer(
    frozen_plan: Dict[str, Any], ctx: Dict[str, Any], args: argparse.Namespace, builder_prompt: str,
    out_dir: Path, src_root: Path, harness_dir: Path, logs_dir: Path, max_iters: int
) -> Tuple[str, Dict[str, Any]]:

    harness_src = ""
    history = []
    
    # Dynamic Constraints
    dynamic_constraints: List[str] = []
    current_timeout = args.timeout
    
    best_stats = {
        "status": "none", 
        "score": 0, 
        "failure_reason": "No iterations completed",
        "final_harness": "",
        "best_ktest_path": "",
        "best_turn": -1
    } 
    best_label = "E"
    
    required_entrypoint = frozen_plan.get("entrypoint", {}).get("name")
    entry_sig = frozen_plan.get("entrypoint", {}).get("signature") or f"extern void {required_entrypoint}(...);"

    # Helper to check if plan requires multiple calls
    plan_calls = frozen_plan.get("call_sequence", [])
    min_calls = 1
    if required_entrypoint:
        ep_count = sum(1 for c in plan_calls if c.get("function") == required_entrypoint)
        if ep_count > 0:
            min_calls = ep_count

    def _cap_text(s: str, n: int) -> str:
        s = (s or "")
        if len(s) <= n: return s
        keep = n // 2
        return s[:keep] + f"\n...[middle {len(s)-n} chars truncated]...\n" + s[-keep:]

    immutable_funcs = compute_immutable_set(frozen_plan)
    immutable_str = ", ".join(sorted(immutable_funcs))

    # [MOVED UP] Calculate Oracle Snippet BEFORE using it in sticky_constraints
    fm = (frozen_plan or {}).get("frozen_meta", {}) or {}
    oracle_id = str(fm.get("frozen_assertion_id") or "").strip()
    oracle_call = str(fm.get("frozen_assertion_call") or "").strip()

    oracle_snippet = ""
    if oracle_id == "CHECK_READ":
        oracle_snippet = (
            "/* FROZEN ORACLE (IMMUTABLE) */\n"
            "#define CHECK_READ(ptr, len) klee_check_memory_access((void*)(ptr), (size_t)(len))\n"
            "/* Must be placed immediately BEFORE the target statement */\n"
            f"{oracle_call if oracle_call else 'CHECK_READ(/*ADDR_EXPR*/, /*SIZE_EXPR*/);'}\n"
        )
    elif oracle_id == "BUG_ASSERT":
        oracle_snippet = (
            "/* FROZEN ORACLE (IMMUTABLE) */\n"
            "#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\n"
            "/* Must be placed at the specified target location */\n"
            f"{oracle_call if oracle_call else 'BUG_ASSERT(/*BUG_CONDITION*/);'}\n"
        )
    else:
        # Backward compatible fallback
        oracle_snippet = (
            "/* FROZEN ORACLE (IMMUTABLE) */\n"
            "/* You MUST include either BUG_ASSERT(...) or CHECK_READ(...) per the plan. */\n"
        )

    # ... (Plan constraints logic remains here) ...
    plan_constraints = ""
    for asm in frozen_plan.get("assumptions", []):
        # ... (keep existing loop logic) ...
        if asm.get("type") == "klee_assume":
            plan_constraints += (
                f"- REQUIRED ASSUMPTION: {asm.get('constraint')}\n"
                f"  * Rationale: {asm.get('rationale')}\n"
                f"  * Syntax: klee_assume({asm.get('constraint').replace('len', 'variable')});\n"
            )
        elif asm.get("type") == "vulnerability_setup":
            plan_constraints += (
                f"- MODELING SETUP: {asm.get('instruction')}\n"
                f"  * Reason: {asm.get('rationale')}\n"
            )
        elif asm.get("type") == "constraint_policy":
            plan_constraints += (
                f"- MODELING FORBIDDEN: {asm.get('instruction')}\n"
                f"  * Reason: {asm.get('rationale')}\n"
            )

    # ... (Strategy Oracle logic remains here) ...
    rule_oracle = ""
    strat_name = (ctx.get("strategy", {}).get("name") or str(args.rule_id)).upper()
    assertion_macro = ctx.get("strategy", {}).get("assertion_macro", "")
    
    if "CHECK_READ" in assertion_macro or "OOB" in strat_name:
        rule_oracle = (
            "- RULE-SPECIFIC ORACLE (OOB READ):\n"
            "  1. DEFINITION: #define CHECK_READ(ptr, len) klee_check_memory_access((void*)(ptr), (size_t)(len))\n"
            "  2. USAGE: You MUST call 'CHECK_READ(ptr, len)' immediately before the vulnerable function.\n"
            "     (Do not rely on BUG_ASSERT(0) for OOB Reads. We need the memory check.)\n"
        )

    # Now sticky_constraints will work because oracle_snippet is defined
    sticky_constraints = (
        "STICKY CONSTRAINTS (HARD):\n"
        "- Preserve section markers exactly and in order.\n"
        "- main() MUST be inside /* --- Harness --- */ only.\n"
        f"- Entrypoint name is: {required_entrypoint}\n"
        f"- IMMUTABLE FUNCTIONS (DO NOT STUB): {immutable_str}\n"
        f"{plan_constraints}"
        f"{rule_oracle}"
        f"{oracle_snippet}"  # <--- No longer Unbound
        "- You may only stub EXTERNAL dependencies or COMPUTATIONAL HOTSPOTS not in the list above.\n"
    )

    print("\n[=] PHASE 2: Iterative Refinement (Concrete -> Symbolic)")

    for i in range(max_iters):
        print(f"\n  --- [Refinement Turn {i+1}/{max_iters}] ---")
        
        last_failure = _cap_text(history[-1], 2500) if history else "(none)"
        history_tail = "\n\n".join(_cap_text(h, 800) for h in history[-3:-1]) if len(history) > 1 else ""
        
        feedback_section = (
            f"LAST FAILURE (most recent - READ CAREFULLY):\n{last_failure}\n\n"
            f"PRIOR HISTORY:\n{history_tail}\n"
        )
        
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

        # [NEW] Inject Dynamic Constraints at the bottom
        dyn_constraints_text = ""
        if dynamic_constraints:
            dyn_constraints_text = "\n[!!! ACTIVE CONSTRAINT ENFORCEMENT - DO NOT IGNORE !!!]\n" + "\n".join(dynamic_constraints) + "\n"

        # [NEW] Check for Pipeline Feedback (Hotspots)
        hotspots_env = os.environ.get("FORCE_STUB_CANDIDATES", "")
        hotspot_guidance = ""
        if hotspots_env:
            # Clean up the list
            candidates = [x.strip() for x in hotspots_env.split() if x.strip()]
            valid_candidates = [c for c in candidates if c not in immutable_funcs]
            
            if valid_candidates:
                hotspot_guidance = (
                    f"\n[PERFORMANCE WARNING]: The following functions caused path explosion in previous runs:\n"
                    f"   {', '.join(valid_candidates)}\n"
                    f"ACTION: You are strongly advised to STUB these functions (Level 1: return symbolic) to fix the timeout.\n"
            )

        user_msg = (
            f"{sticky_constraints}\n"
            f"{hotspot_guidance}\n"
            f"{feedback_section}\n"
            f"TARGET CODE CONTEXT:\n```c\n{ctx['enclosing_function']}\n```\n"
            f"Frozen Plan: {json.dumps(frozen_plan, indent=2)}\n"
            f"Current Harness:\n{_cap_text(harness_src, 2000)}\n"
            f"{anti_search_msg}\n{warning_msg}\n"
            f"{dyn_constraints_text}\n" 
            "TASK: Fix errors. Output JSON only: { \"harness\": \"<C code>\" }"
        )

        ensure_dir(out_dir)
        messages = [{"role": "system", "content": builder_prompt}, {"role": "user", "content": user_msg}]
        (out_dir / f"refine_T{i:02d}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
        
        raw_response = llm_chat(messages)
        (out_dir / f"refine_T{i:02d}_raw_response.txt").write_text(str(raw_response), encoding="utf-8")
        
        # Shell Handling
        try:
            if '"action": "shell"' in str(raw_response):
                resp_json = json.loads(extract_json_block(str(raw_response)))
                if resp_json.get("action") == "shell":
                    pass
        except: pass

        code, _meta = extract_harness_code_from_llm_response(str(raw_response))
        if not code:
            print("  [!] Error: Agent returned no code.")
            history.append("System: You failed to provide a ```c code block.")
            if best_stats["score"] == 0: best_stats["failure_reason"] = "Agent returned no code"
            continue

        # [PATCH 1] Auto-Repair: Remove Forbidden Assertions
        # Logic: If the strategy uses 'instrumented_predicate' (Source-Side Oracle), 
        # the Harness MUST NOT contain BUG_ASSERT or REACH_ASSERT.
        
        plan_inst = frozen_plan.get("instrumentation", []) if frozen_plan else []
        
        # Check Strategy Type (INT_OVERFLOW, OOB_READ are instrumented)
        strategy_oracle = ctx.get("strategy", {}).get("oracle_type", "")
        is_instrumented = (strategy_oracle == "instrumented_predicate")

        # Check for explicit instrumentation in the plan
        has_source_bug = any("BUG_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))
        has_source_reach = any("REACH_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))

        # 1. Strip BUG_ASSERT if handled by source OR explicit strategy rule
        if has_source_bug or is_instrumented:
            if re.search(r"BUG_ASSERT\s*\(", code):
                print("  [i] Auto-Repair: Force-removing redundant 'BUG_ASSERT' from harness (Strategy is Instrumented).")
                code = re.sub(r"BUG_ASSERT\s*\([^)]*\)\s*;?", "", code, flags=re.DOTALL)

        # 2. Strip REACH_ASSERT if handled by source OR explicit strategy rule
        # [FIX] This stops the 'REACH_ASSERT reached' infinite loop spam in KLEE logs.
        if has_source_reach or is_instrumented:
            if re.search(r"REACH_ASSERT\s*\(", code):
                print("  [i] Auto-Repair: Force-removing redundant 'REACH_ASSERT' from harness (Strategy is Instrumented).")
                code = re.sub(r"REACH_ASSERT\s*\([^)]*\)\s*;?", "", code, flags=re.DOTALL)

        # We inject headers/macros BEFORE validation so the validator sees the complete code.
        strategy_name = ((ctx.get('strategy') or {}).get('name') or '')

        fm = (frozen_plan or {}).get("frozen_meta", {}) or {}
        oracle_id = str(fm.get("frozen_assertion_id") or "").strip()
        oracle_call = str(fm.get("frozen_assertion_call") or "").strip()

        oracle_snippet = ""
        if oracle_id == "CHECK_READ":
            oracle_snippet = (
                "/* FROZEN ORACLE (IMMUTABLE) */\n"
                "#define CHECK_READ(ptr, len) klee_check_memory_access((void*)(ptr), (size_t)(len))\n"
                "/* Must be placed immediately BEFORE the target statement */\n"
                f"{oracle_call if oracle_call else 'CHECK_READ(/*ADDR_EXPR*/, /*SIZE_EXPR*/);'}\n"
            )
        elif oracle_id == "BUG_ASSERT":
            oracle_snippet = (
                "/* FROZEN ORACLE (IMMUTABLE) */\n"
                "#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\n"
                "/* Must be placed at the specified target location */\n"
                f"{oracle_call if oracle_call else 'BUG_ASSERT(/*BUG_CONDITION*/);'}\n"
            )
        else:
            # Backward compatible fallback
            oracle_snippet = (
                "/* FROZEN ORACLE (IMMUTABLE) */\n"
                "/* You MUST include either BUG_ASSERT(...) or CHECK_READ(...) per the plan. */\n"
            )

        # [PATCH 4] Auto-Correct: Rewrite unsafe klee_assume(strlen/var < C) to if (...) return 0;
        def _rewrite_unsafe_assumes(text: str) -> str:
            # Pattern 1: klee_assume(strlen(s) < CONST);
            # Matches: klee_assume(strlen(buf) < 100);
            def repl_strlen(m):
                s, op, const = m.groups()
                # Invert logic: < becomes >=, > becomes <=
                inv_op = ">=" if "<" in op else ("<=" if ">" in op else "==")
                return f"if (strlen({s}) {inv_op} {const}) return 0; /* Auto-fixed unsafe assume */"
                
            # Regex handles: klee_assume ( strlen ( ... ) < ... );
            text = re.sub(
                r"klee_assume\s*\(\s*strlen\s*\(([^)]+)\)\s*(<|<=|>|>=)\s*(\d+)\s*\)\s*;", 
                repl_strlen, 
                text
            )
            return text

        code = _rewrite_unsafe_assumes(code)

        harness_src = inject_standard_headers(code, frozen_plan=frozen_plan, strategy=strategy_name)

        # --- [NEW] PRE-FLIGHT CHECK (Fail fast before compilation/KLEE) ---
        pre_flight = preflight_check(harness_src, strategy_name)
        if pre_flight:
            print(f"  [!] Pre-flight checks flagged {len(pre_flight)} issue(s). Skipping compile/KLEE for this turn.")
            for msg in pre_flight:
                # Pretty-print multi-line messages with indentation
                print("      - " + msg.replace("\n", "\n        "))
            feedback = "\n".join(pre_flight)
            history.append(feedback)
            # Any hard error short-circuits the turn to save time.
            if "PRE-FLIGHT ERROR" in feedback:
                if best_stats["score"] == 0:
                    best_stats["failure_reason"] = "Pre-flight failure"
                continue
        # ---------------------------------------------------------------

        # --- PRE-COMPILATION VALIDATION ---
        clean_code = strip_c_comments_and_strings(harness_src) # Validate the INJECTED code

        # Call Sequence Enforcement
        if required_entrypoint:
            # Count calls to entrypoint (ignoring declarations)
            call_count = len(re.findall(rf"\b{re.escape(required_entrypoint)}\s*\(", clean_code))
            
            if call_count < min_calls:
                print(f"  [!] Plan Violation: Entrypoint called {call_count} times (Expected {min_calls}+).")
                history.append(
                    f"LOGIC ERROR: The Frozen Plan requires a sequence of {min_calls} calls to '{required_entrypoint}'.\n"
                    f"You only have {call_count} potential calls.\n"
                    "ACTION: You MUST implement the full 'call_sequence' from the Frozen Plan."
                )
                if best_stats["score"] == 0: best_stats["failure_reason"] = "Plan Deviation (Call Sequence)"
                continue


        # Redefinition Check
        if required_entrypoint:
            redef_re = re.compile(
                rf"^\s*(?:[\w\s\*]+?)[\s\*]+\b{re.escape(required_entrypoint)}\s*\([^;]*?\)\s*\{{", 
                re.MULTILINE | re.DOTALL
            )

            if redef_re.search(clean_code):
                msg = (
                    f"SYSTEM ERROR: ILLEGAL REDEFINITION of '{required_entrypoint}'.\n"
                    "STOP! You are trying to implement a function that already exists in the library.\n"
                    "ACTION: Delete the body. Replace it with this EXACT declaration:\n"
                    f"   {entry_sig}\n"
                )
                print(f"  [!] Harness Validation Failed: Redefinition of {required_entrypoint}")
                history.append(msg)
                constraint = (
                    f"VIOLATION RECORDED: You previously tried to define '{required_entrypoint}'. "
                    "PERMANENTLY FORBIDDEN. Use this declaration instead:\n"
                    f"   {entry_sig}"
                )
                if constraint not in dynamic_constraints:
                    dynamic_constraints.append(constraint)
                continue
            
        try:
            is_valid, err_msg = validate_harness_structure(
                harness_src, required_entrypoint, args.validation_policy_obj, 
                args.rule_id, args.spec_stem, frozen_plan
            )
        except Exception as e:
            history.append(f"SYSTEM ERROR: Validation crashed: {e}")
            continue

        if not is_valid:
            print(f"  [!] Harness Validation Failed: {err_msg}")
            
            # [FIX] Specialized feedback for the CHECK_READ loop
            if "requires CHECK_READ" in err_msg:
                history.append(
                    f"SYSTEM ERROR: Plan Violation (Missing Assertion).\n"
                    f"REASON: {err_msg}\n"
                    f"DIAGNOSIS: You removed 'CHECK_READ' or failed to call it.\n"
                    f"LIKELY CAUSE: You might have tried to check a hidden internal variable (like 'entry->name') "
                    f"and hit a compilation error, so you deleted the line.\n"
                    f"CRITICAL FIX: Do NOT remove the check. Instead, check the PUBLIC arguments you pass to the function.\n"
                    f"SAFE EXAMPLE:\n"
                    f"   // Don't check internal pointers. Check the args 'name' and 'len':\n"
                    f"   CHECK_READ(name, len);\n"
                    f"   xmlDictLookup(dict, name, len);\n"
                )
            else:
                history.append(f"SYSTEM ERROR: Structure Invalid.\nREASON: {err_msg}")
            continue

        print(f"  [>] Generated Harness ({len(harness_src)} bytes).")
        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")

        print("  [*] Compiling to Bitcode...")
        okc, msg, bc = compile_harness_to_bc(args, src_root, harness_dir/"harness.c", harness_dir/"harness.bc", Path(args.project_bc) if args.project_bc else None)[0:3]
             
        if not okc:
            summary = summarize_log(msg, "Clang Error")
            print(f"  [!] Compilation Failed. Reason:\n{summary}") 
            
            feedback_buffer = []

            # 1. Redefinition Recovery
            redef_match = re.search(r"redefinition of '([^']+)'", msg)
            if redef_match:
                sym = redef_match.group(1)
                print(f"  [i] Detected Redefinition Conflict for '{sym}'.")
                feedback_buffer.append(
                    f"COMPILATION ERROR: Redefinition of '{sym}'.\n"
                    f"CAUSE: The library headers declare '{sym}' as a variable/pointer/macro.\n"
                    f"FIX: Rename your function to 'stub_{sym}' and add '#define {sym} stub_{sym}' AFTER your includes."
                )

            # 2. Typedef Recovery (Project-Agnostic)
            type_match = re.search(r"unknown type name '(.+?)'", msg)
            if type_match:
                missing_type = type_match.group(1)
                td = find_typedef_global(src_root, missing_type)
                if td:
                    feedback_buffer.append(
                        f"COMPILATION ERROR: Unknown type '{missing_type}'.\n"
                        f"SYSTEM HINT: I found a typedef in the project source. Copy it into the harness:\n"
                        f"```c\n{td}\n```"
                    )
                else:
                    feedback_buffer.append(
                        f"COMPILATION ERROR: Unknown type '{missing_type}'.\n"
                        "ACTION: You must define this type or include the header defining it."
                    )

            # 3. Opaque Struct Recovery
            struct_match = re.search(r"incomplete definition of type 'struct (.+?)'", msg) or re.search(r"incomplete type '(struct [A-Za-z0-9_]+)'", msg)
            if struct_match:
                missing_struct = struct_match.group(1).replace("struct ", "")
                # Avoid looping on the same hint
                if f"struct {missing_struct}" not in str(history):
                    print(f"  [i] Opaque struct '{missing_struct}' detected. Scanning source tree...")
                    found_def = find_opaque_struct_global(src_root, missing_struct)
                    if found_def:
                        print(f"  [+] Found definition for '{missing_struct}'. Injecting hint.")
                        feedback_buffer.append(
                            f"COMPILATION ERROR: Opaque struct '{missing_struct}'.\n"
                            f"SYSTEM HINT: Add this definition:\n{found_def}"
                        )
                    else:
                        feedback_buffer.append(
                            f"COMPILATION ERROR: Opaque type '{missing_struct}'.\n"
                            f"ACTION: Find 'struct {missing_struct} {{ ... }};' in the TARGET CODE CONTEXT and COPY it."
                        )

            # 4. Linker Collision + Dynamic Constraint
            if "symbol multiply defined" in msg:
                collided_sym_match = re.search(r"globals named '([^']+)'", msg)
                if collided_sym_match:
                    sym_name = collided_sym_match.group(1)
                    print(f"  [!] Detected Linker Collision on {sym_name}. Injecting Constraint.")
                    
                    constraint = (
                        f"VIOLATION RECORDED: You caused a Linker Collision on '{sym_name}'. "
                        f"DO NOT STUB '{sym_name}'. You MUST use the library version."
                    )
                    if constraint not in dynamic_constraints:
                        dynamic_constraints.append(constraint)
                    
                    feedback_buffer.append(
                        f"LINKER ERROR: Symbol '{sym_name}' is multiply defined.\n"
                        f"CAUSE: You defined '{sym_name}' in your stub section, but it already exists in the library.\n"
                        f"ACTION: Remove your definition of '{sym_name}'."
                    )

            # 5. Missing Symbols (Restored Functionality)
            missing_syms = re.findall(r"undefined reference to `([^']+)'", msg)
            missing_syms += re.findall(r"implicit declaration of function '([^']+)'", msg)
            if missing_syms:
                unique_missing = sorted(list(set(missing_syms)))
                print(f"  [i] Auto-detected missing dependencies: {unique_missing}")
                feedback_buffer.append(
                    f"COMPILATION ERROR: Undefined symbols: {unique_missing}.\n"
                    "SYSTEM OVERRIDE: You are granted permission to STUB these specific functions."
                )

            # Flush all accumulated feedback
            if feedback_buffer:
                history.extend(feedback_buffer)
            else:
                # Fallback if no specific handlers triggered
                history.append(f"COMPILATION ERROR (Summarized):\n{summary}")
            
            if best_stats["score"] == 0:
                best_stats["failure_reason"] = "Compilation/Linker Error"
            continue

        print(f"  [*] Running KLEE...")
        # [SCALING] Pass current_timeout instead of args.timeout
        stats = run_klee(bc, args.klee, args.klee_flags, current_timeout, logs_dir, i, ctx['vul_file'], ctx['vul_line'])

        # --- [FIX START] Degenerate Path Detection ---
        # Detects if KLEE avoided the bug by choosing len=0 or empty strings.
        # Matches: "WARNING ONCE: calling external: bcmp(..., ..., 0)"
        degenerate_pattern = re.search(r"calling external:\s*(bcmp|memcmp|strncmp).*?,\s*0\s*\)", stats['full_log'], re.IGNORECASE)
        
        if degenerate_pattern:
            fn_name = degenerate_pattern.group(1)
            print(f"  [!] Detected degenerate trivial path: {fn_name}(..., 0)")
            history.append(
                f"KLEE WARNING: The harness reached the target, but used a degenerate length of 0 ({fn_name}).\n"
                "CAUSE: comparing 0 bytes always returns Equal, but it skips the vulnerable OOB read.\n"
                "CRITICAL FIX: You MUST add a constraint to force non-trivial paths:\n"
                "   klee_assume(len > 0);\n"
                "   klee_assume(name_buf[0] != 0); // Ensure string is not empty"
            )
        # --- [FIX END] ---


        if stats["bug_assert_hit"]:
            print("  [!] Bug Found! (Candidate H2) -> Exiting refinement to validate.")
            best_stats = stats
            best_stats["score"] = 3
            best_stats["failure_reason"] = "None (Candidate)"
            best_stats["final_harness"] = harness_src
            best_stats["best_turn"] = i
            best_stats["best_ktest_path"] = str(find_crash_ktest(logs_dir, i) or "")
            return "H2_BUG", best_stats

        # Cleanup KLEE
        klee_out_dir = logs_dir / f"klee-out-{i}"
        if not stats["bug_assert_hit"] and not stats["reach_assert_hit"]:
             if klee_out_dir.exists():
                 shutil.rmtree(klee_out_dir, ignore_errors=True)
                 
        if (harness_dir / "harness.bc").exists():
            (harness_dir / "harness.bc").unlink()
            
        log_summary = summarize_log(stats['full_log'], "KLEE Log")

        # [SMART FEEDBACK] Build Trace Feedback Message
        trace_msg = ""
        if stats.get("execution_trace"):
            target_name = Path(ctx['vul_file']).name
            trace_msg = (
                f"\n\n[EXECUTION TRACE - LAST 30 STEPS]:\n"
                f"{stats['execution_trace']}\n"
                f"----------------------------------------\n"
                f"TARGET GOAL: Reach {target_name}:{ctx['vul_line']}\n"
                f"ANALYSIS: Compare the last executed line in the trace with the TARGET GOAL.\n"
                f" - If you stopped early, you likely took a False branch or hit a return.\n"
                f" - If you looped, check your loop conditions."
            )

        incomplete_type_match = re.search(r"incomplete definition of type 'struct (.+?)'", stats['full_log'])
        if incomplete_type_match:
            struct_name = incomplete_type_match.group(1)
            target_file_name = frozen_plan.get('context_file', os.path.basename(args.vul_file))
            ctx_file_path = out_dir / "ctx" / target_file_name
            if ctx_file_path.exists():
                print(f"  [!] Detected Opaque Struct Error: '{struct_name}'. Scanning {ctx_file_path.name}...")
                try:
                    with open(ctx_file_path, 'r') as f:
                        src_content = f.read()
                    struct_regex = re.compile(rf"struct\s+{re.escape(struct_name)}\s*\{{([^}}]+?)\}};", re.DOTALL)
                    definition_match = struct_regex.search(src_content)
                    if definition_match:
                        found_def = definition_match.group(0)
                        hint_msg = (
                            f"\n\n[SYSTEM HINT]: The compiler reported an opaque struct error for '{struct_name}'.\n"
                            f"I found the definition in {target_file_name}. YOU MUST COPY THIS INTO YOUR HARNESS:\n"
                            f"```c\n{found_def}\n```\n"
                        )
                        log_summary += hint_msg
                        print(f"  [+] Injected definition of 'struct {struct_name}' into prompt.")
                except Exception as e:
                    print(f"  [!] Failed to auto-recover struct: {e}")

        current_score = 0
        current_label = "E"
        current_reason = "Unknown"
        
        if stats["reach_assert_hit"]:
            current_score = 2
            current_label = "H2_REACH"
            current_reason = "Target Reached (No Bug)"
            print(f"  [i] KLEE REACH Details:\n{log_summary}")
            
            plan_calls = frozen_plan.get("call_sequence", [])
            setup_hint = ""
            if len(plan_calls) > 1:
                setup_steps = [f"- {c.get('function')}: {c.get('purpose', 'Setup')}" for c in plan_calls[:-1]]
                setup_hint = "Review your 'call_sequence' from the Frozen Plan. Did you implement these SETUP steps?\n" + "\n".join(setup_steps)

            history.append(
                f"KLEE: REACHED target (H2_REACH), but BUG_ASSERT did not fire.\n"
                "ANALYSIS: Execution reached the target function, but the specific state required for the bug was not present.\n"
                "COMMON CAUSE: The bug requires a specific state (e.g., populated cache, specific config) created by PRIOR calls.\n"
                f"{setup_hint}\n"
                f"{trace_msg}\n" # <--- [ADDED] Trace info
                "ACTION: Ensure you strictly follow the 'call_sequence' to build the necessary state before the final trigger call."
            )

        elif stats["status"] == "timeout":
            current_score = 1
            current_label = "H1"
            current_reason = "Timeout"
            
            # [SCALING] Dynamic Scaling: Double timeout if stuck, cap at 300s
            new_timeout = min(300, current_timeout * 2)
            if new_timeout > current_timeout:
                print(f"  [i] Timeout detected. Increasing limit: {current_timeout}s -> {new_timeout}s")
                current_timeout = new_timeout
            
            history.append(f"KLEE: Timeout ({stats['elapsed']:.1f}s).\nLog Summary:\n{log_summary}\n{trace_msg}")

        else:
            current_score = 0.5
            current_label = "H0"
            current_reason = "Error / Not Reached"
            # [ADDED] Trace info for early exits
            history.append(f"KLEE: {stats['status']}\nLog Summary:\n{log_summary}\n{trace_msg}")

        if current_score >= best_stats.get("score", 0):
            best_stats = stats
            best_stats["score"] = current_score
            best_stats["failure_reason"] = current_reason
            best_stats["final_harness"] = harness_src
            best_stats["best_turn"] = i
            best_label = current_label

    return best_label, best_stats

def strip_c_comments_and_strings_preserve_lines(text: str) -> str:
    """Masks comments/strings with spaces to prevent regex false positives."""
    out = list(text)
    i = 0
    length = len(text)
    while i < length:
        ch = text[i]
        if ch == '"' or ch == "'":
            quote = ch
            out[i] = ' '
            i += 1
            while i < length:
                if text[i] == quote and text[i-1] != '\\':
                    out[i] = ' '
                    i += 1
                    break
                if text[i] != '\n': out[i] = ' '
                i += 1
        elif ch == '/' and i+1 < length and text[i+1] == '/':
            out[i] = ' '
            out[i+1] = ' '
            i += 2
            while i < length and text[i] != '\n':
                out[i] = ' '
                i += 1
        elif ch == '/' and i+1 < length and text[i+1] == '*':
            out[i] = ' '
            out[i+1] = ' '
            i += 2
            while i < length:
                if text[i] == '*' and i+1 < length and text[i+1] == '/':
                    out[i] = ' '
                    out[i+1] = ' '
                    i += 2
                    break
                if text[i] != '\n': out[i] = ' '
                i += 1
        else:
            i += 1
    return "".join(out)

# ---------------------------------------------------------
# [CONTRIBUTION] SMART STUB SYNTHESIZER (State Transformer Model)
# ---------------------------------------------------------
# Implements 3-Case Side-Effect Modeling:
# 1. Constrained: Enforces critical data invariants (e.g., *out_len = in_len).
# 2. Symbolic: Models unknown side-effects by symbolizing output pointers.
# 3. Safe/Adversarial: Infers collision-forcing constants or safe symbolic returns.

def _parse_c_args(arg_str: str) -> List[Dict[str, Any]]:
    """
    Parses C argument list into metadata for Side-Effect Modeling.
    Input: "unsigned seed, const xmlChar* data, size_t *plen"
    Output: [{'name': 'plen', 'type': 'size_t', 'is_ptr': True, 'is_const': False}, ...]
    """
    args = []
    # Robust split by comma (ignoring function pointer parens)
    raw_args = []
    buffer = ""
    depth = 0
    for char in arg_str:
        if char == '(': depth += 1
        elif char == ')': depth -= 1
        
        if char == ',' and depth == 0:
            raw_args.append(buffer.strip())
            buffer = ""
        else:
            buffer += char
    if buffer.strip(): raw_args.append(buffer.strip())

    for raw in raw_args:
        # 1. Cleanup & Tokenization
        parts = raw.split()
        if not parts: continue
        
        # 2. Extract Name & Pointer status
        # Heuristic: Last token is name.
        name_token = parts[-1]
        name = name_token.lstrip("*")
        # Check for pointers (*name or type*) or arrays (name[])
        is_ptr = (name_token.count("*") > 0) or ("[" in name_token) or any("*" in p for p in parts[:-1])
        is_const = "const" in raw
        
        # 3. Extract Base Type (simplified for matching)
        # Remove qualifiers to find core type like 'size_t' or 'int'
        type_tokens = [p for p in parts[:-1] if p not in ["const", "volatile", "restrict", "struct", "unsigned", "signed"]]
        if not type_tokens and ("unsigned" in parts or "signed" in parts): 
            base_type = "int" 
        else: 
            base_type = type_tokens[0] if type_tokens else "int"
        
        args.append({
            "name": name.replace("[]", "").replace(";", ""),
            "base_type": base_type,
            "is_ptr": is_ptr,
            "is_const": is_const,
            "raw": raw
        })
    return args

def auto_discover_stub_candidates(src_root: Path, vul_file_rel: str, rule_id: str) -> str:
    """
    Scans for 'static' functions and generates SIDE-EFFECT AWARE stubs.
    """
    target_file = src_root / vul_file_rel
    if not target_file.exists(): return ""

    rule_id = str(rule_id or "").lower()
    content = target_file.read_text(errors="replace")
    
    # Use existing helper to mask strings/comments
    masked = strip_c_comments_and_strings_preserve_lines(content)

    # Regex: static [type] [stars] Name ( [args] )
    pattern = re.compile(r'static\s+(?:[\w_]+\s+)+(?:[\*\s]+)?(\w+)\s*\(([^)]*)\)', re.MULTILINE | re.DOTALL)

    candidates = []
    
    for match in pattern.finditer(masked):
        func_name = match.group(1)
        arg_str = match.group(2)
        
        # --- 1. Locate Body ---
        idx = match.end()
        next_sig = re.search(r'[;{]', masked[idx:])
        if not next_sig or next_sig.group(0) == ';': continue # Prototype
        
        brace_pos = idx + next_sig.start()
        line_num = content.count('\n', 0, brace_pos) + 1
        
        # --- 2. Analyze Semantics (Case Identification) ---
        args = _parse_c_args(arg_str)
        is_hash = re.search(r"(?i)(hash|digest|checksum|sign|crypt)", func_name)
        is_cmp  = re.search(r"(?i)(cmp|compare|equal|same|match)", func_name)
        
        # Identify Length Propagation Candidates (Scalar Input -> Pointer Output)
        len_in = None
        len_out = None
        for arg in args:
            n = arg['name'].lower()
            # Heuristic: Variable looks like a length/size
            if "len" in n or "size" in n or "count" in n or "max" in n:
                if arg['is_ptr'] and not arg['is_const']: 
                    len_out = arg['name'] # Output pointer
                elif not arg['is_ptr']: 
                    len_in = arg['name']  # Input scalar

        # --- 3. Synthesize Smart Stub Code ---
        stub_lines = []
        
        # [Case 3: Safe Return Modeling]
        # Default to symbolic return to maximize path exploration.
        # This handles success/failure/error paths automatically.
        stub_lines.append(f"unsigned ret; klee_make_symbolic(&ret, sizeof(ret), \"stub_{func_name}_ret\");")
        
        # [Case 2: Symbolic Side Effects]
        # "If we are not sure... agent can leave it symbolic"
        # We model the side effect of ANY output pointer by making its target symbolic.
        for arg in args:
            if arg['is_ptr'] and not arg['is_const']:
                aname = arg['name']
                # Guard against NULL derefs
                stub_lines.append(f"if ({aname}) klee_make_symbolic({aname}, sizeof(*{aname}), \"stub_{func_name}_{aname}\");")

        # [Case 1: Constrained Semantic Invariants]
        # "Analyzing the bug site... agent will add constraints"
        
        if is_hash:
            stub_lines.append("/* Case 1: Constrained (Force Collision) */")
            # Adversarial: Force collision (non-zero to avoid 'empty' checks)
            stub_lines.append("klee_assume(ret == 0x80000000u);")
            
            # Semantic Invariant: Propagate Lengths (The Fix for libxml2)
            if len_in and len_out:
                stub_lines.append(f"/* Case 1: Constrained (Propagate Length Invariant) */")
                stub_lines.append(f"if ({len_out}) *{len_out} = {len_in};")
                
        elif is_cmp:
            stub_lines.append("/* Case 1: Constrained (Force Match) */")
            stub_lines.append("klee_assume(ret == 0);")
            
        else:
            # Case 3 Fallback: General function.
            # Symbolic return is already handled above.
            pass

        stub_lines.append("return ret;")
        
        # Filter: Only generate for barriers relevant to the bug type
        # (For OOB, we care about Hash/Cmp barriers)
        if is_hash or is_cmp:
            candidates.append((func_name, line_num, stub_lines))

    if not candidates: return ""

    directives = []
    seen = set()
    for func, line, lines in candidates:
        if func in seen: continue
        seen.add(func)
        
        code_blk = " ".join(lines)
        directives.append(
            f"   - BARRIER: '{func}' (Line {line})\n"
            f"     ACTION: Inject Smart Stub (Side-Effect Model)\n"
            f"     DIRECTIVE: {{ 'file': '{vul_file_rel}', 'line': {line}, 'kind': 'insert_after', 'code': '{code_blk}' }}"
        )

    return (
        "\n*** [AUTO-GENERATED] SMART STUBBING DIRECTIVES ***\n"
        f"Analysis of '{vul_file_rel}': Generated {len(directives)} side-effect models.\n"
        "You MUST include these directives in your Plan to enable deep reachability:\n"
        + "\n".join(directives) + "\n"
    )
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
    
    # [FIX] Make Rule ID Optional (Auto-Derived from spec if missing)
    ap.add_argument("--rule-id", default=None, help="Optional override. Auto-derived from spec if missing.")
    
    ap.add_argument("--target-vul", required=True)
    ap.add_argument("--project-bc", default=None)
    ap.add_argument("--build-project-bc-cmd", default=None, help="Shell command to rebuild an instrumented project.bc. Supports {SRC_ROOT} and {OUT_BC}. If omitted, instrumentation-required specs will fail.")
    ap.add_argument("--llvm-link", default=None)
    ap.add_argument("--llm-model", required=True)
    ap.add_argument("--llm-api-base", required=True)
    ap.add_argument("--clang", default="clang-14")
    ap.add_argument("--clang-flags", default="", help="clang flags as a single shell-style string")
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", default="", help="klee flags as a single shell-style string")
    ap.add_argument("--max-a", type=int, default=15)
    ap.add_argument("--max-b", type=int, default=3)
    ap.add_argument("--max-cycles", type=int, default=5)
    ap.add_argument("--timeout", type=int, default=45)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    ap.add_argument("--validation-policy", default=os.environ.get("VALIDATION_POLICY"),
                    help="Path to YAML validation policy. If missing, auto-generated from rule file.")
    ap.add_argument("--ql-file", help="Path to the CodeQL rule file (.ql) used for auto-policy generation.")
    
    # Arguments for Replay Mode
    ap.add_argument("--reproduce", action="store_true", help="Run validation only (skip agents)")
    ap.add_argument("--reproduce-ktest", help="Path to .ktest file for reproduction")
    
    args = ap.parse_args()

    # --- Policy Loading / Auto-Generation ---
    if args.validation_policy and Path(args.validation_policy).exists():
        args.validation_policy_obj = load_validation_policy(args.validation_policy)
    else:
        # Auto-generate policy if missing
        print("  [i] Validation Policy not found or not provided. Generating automatically...")
        ql_path = Path(args.ql_file) if args.ql_file else Path("rule.ql") # fallback
        ql_meta = parse_ql_metadata(ql_path)
        auto_policy = generate_auto_policy(args.project_id, ql_meta, args.rule_id)
        
        # Save it for reproducibility
        run_dir = ensure_dir(Path(args.run_dir).resolve())
        policy_path = run_dir / "auto_validation_policy.yaml"
        with policy_path.open("w", encoding="utf-8") as f:
            yaml.dump(auto_policy, f)
            
        args.validation_policy_obj = auto_policy
        print(f"  [i] Auto-generated policy saved to {policy_path}")

    # Apply YAML overrides for replay stub policy (optional).
    _vcfg = (args.validation_policy_obj or {}).get("validation", {}) or {}
    if "external_stub_allowlist" in _vcfg and isinstance(_vcfg["external_stub_allowlist"], list):
        global EXTERNAL_STUB_ALLOWLIST
        EXTERNAL_STUB_ALLOWLIST = set(_vcfg["external_stub_allowlist"])
    if "semantic_stub_denylist" in _vcfg and isinstance(_vcfg["semantic_stub_denylist"], list):
        global REPLAY_SEMANTIC_STUB_DENYLIST
        REPLAY_SEMANTIC_STUB_DENYLIST = set(_vcfg["semantic_stub_denylist"])

    args.clang_flags = shlex.split(args.clang_flags) if args.clang_flags else []
    args.klee_flags  = shlex.split(args.klee_flags) if args.klee_flags else []

    os.environ["LLM_MODEL"] = args.llm_model
    os.environ["LLM_API_BASE"] = args.llm_api_base

    run_dir = ensure_dir(Path(args.run_dir).resolve())
    setup_logging(run_dir)

    ctx = build_context(
        Path(args.sa_out_dir), Path(args.src_root), Path(args.spec),
        args.vul_file, args.vul_line, ensure_dir(run_dir / "ctx")
    )

    # 1. Load the specific vulnerability context
    spec_json = read_json(Path(args.spec)) 

    # ---------------------------------------------------------
    # [PHASE 0] Context Discovery & Strategy Setup
    # ---------------------------------------------------------
    
    # A. Run Auto-Discovery for Stub Candidates
    print(f"[+] Running Context Discovery on {args.vul_file}...")
    
    # [FIXED] Wrap src_root in Path() and ensure rule_id is a string
    stub_hints = auto_discover_stub_candidates(Path(args.src_root), args.vul_file, args.rule_id or "")
    
    if stub_hints:
        print(f"    [i] Discovered {stub_hints} static barrier functions.")
    else:
        print("    [i] No obvious static barriers found.")

    # B. Infer Strategy
    # [FIXED] Removed "strategies." prefix. infer_strategy is imported directly.
    strategy_name, strategy_cfg = infer_strategy(ctx["spec"]) 
    ctx["strategy"] = {"name": strategy_name, **strategy_cfg}
    print(f"[Strategy] Inferred: {strategy_name} (Oracle: {strategy_cfg.get('oracle_type')})")

    # C. Augment Strategy with Discovery Results
    base_instruction = strategy_cfg.get("planner_instruction", "")
    augmented_instruction = base_instruction + "\n" + stub_hints

    # ---------------------------------------------------------

    # Generate Prompts 
    prompts = make_prompt.generate_prompts(
        vul_file=args.vul_file,
        vul_line=args.vul_line,
        rule_id=args.rule_id,
        vul_statement=ctx.get("vul_statement_text", "") or "",
        source_root=args.src_root,
    )

    # Overrides the LLM's safety bias ("write correct code") with an adversarial bias ("prove the bug").
    mindset_block = (
        "\n*** AGENT MINDSET: VULNERABILITY REPRODUCTION ***\n"
        "1. ROLE: You are an Adversarial Tester, NOT a Software Engineer.\n"
        "   - Developer Goal: Prevent crashes and handle errors gracefully.\n"
        "   - Your Goal: TRIGGER crashes and BYPASS safety checks.\n"
        "2. ANTI-PATTERN: 'Safe Coding' is your enemy.\n"
        "   - Developer Logic: 'I must make the buffer 4096 bytes so the data fits.' (WRONG)\n"
        "   - Attacker Logic: 'I must make the buffer 64 bytes so the 4096-byte data OVERFLOWS.' (CORRECT)\n"
        "3. DO NOT FIX THE BUG.\n"
        "   - If the Frozen Plan implies an unsafe condition, you MUST enable it.\n"
        "   - Never add safety checks (e.g., `if (len < size) return;`) that make the code safe.\n"
    )
    
    # Inject strategy block into BOTH Planner and Builder
    strategy_block = (
        "\n*** VULNERABILITY STRATEGY ENFORCEMENT ***\n"
        f"Strategy: {strategy_name}\n"
        f"Oracle: {strategy_cfg.get('oracle_type')}\n"
        f"Policy:\n{augmented_instruction}\n" # <--- Uses Augmented Version
    )
    
    # Prepend Mindset so it sets the tone, Append Strategy for specifics
    prompts["planner"] = mindset_block + prompts["planner"] + strategy_block
    prompts["builder"] = mindset_block + prompts["builder"] + strategy_block

    # --- REPRODUCTION MODE (Validation Only) ---
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
            # Find the latest KLEE run with a crash
            for k_dir in sorted(logs_dir.glob("klee-out-*"), reverse=True):
                # Helper 'find_crash_ktest' must be defined in scope
                k_idx = int(k_dir.name.split("-")[-1])
                found = find_crash_ktest(logs_dir, k_idx)
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
    
    # --- NORMAL EXECUTION ---

    # SAVE PROMPTS TO DISK
    prompt_dir = ensure_dir(run_dir / "prompts")
    (prompt_dir / "planner_prompt.txt").write_text(prompts["planner"], encoding="utf-8")
    (prompt_dir / "builder_prompt.txt").write_text(prompts["builder"], encoding="utf-8")
    print(f"  [i] Prompts saved to {prompt_dir}")

    # PHASE 1: FROZEN ANALYSIS
    frozen_plan = run_frozen_analysis(ctx, args, prompts["planner"], run_dir / "frozen_analysis", Path(args.src_root))
    
    if "plan_error" in frozen_plan:
        print("[!] Frozen analysis failed. Aborting.")
        return

    src_root = Path(args.src_root)
    # [NEW] If Phase I produced target-site instrumentation, build an instrumented source tree + project.bc.
    try:
        proj_bc, inst_actions, inst_err = build_instrumented_project_bc(
            src_root=src_root,
            work_dir=run_dir,
            frozen_plan=frozen_plan,
            args=args
        )
        if inst_actions:
            (run_dir / "instrumentation.actions").write_text("\n".join(inst_actions) + "\n", encoding="utf-8")
        if inst_err:
            print(f"[!] Instrumented build error: {inst_err}")
            # Hard stop: without an instrumented project.bc the OOB_READ oracle cannot be validated.
            return {"status": "E", "reason": inst_err}
        if proj_bc:
            print(f"  [i] Switching to Instrumented Bitcode: {proj_bc}")
            args.project_bc = str(proj_bc)
            
            # [FIX] Force Harness to see Instrumented Headers first
            # This ensures we aren't accidentally pulling 'clean' headers that might mismatch.
            inst_inc = proj_bc.parent / "include"
            inst_build = proj_bc.parent / "build" # CMake/Autotools often put headers here
            
            new_flags = []
            if inst_inc.exists(): new_flags.append(f"-I{inst_inc}")
            if inst_build.exists(): new_flags.append(f"-I{inst_build}")
            
            # Prepend to existing flags
            args.clang_flags = new_flags + args.clang_flags
    except Exception as e:
        return {"status": "E", "reason": f"instrumentation build failed: {e}"}

    # PHASE 2: REFINEMENT LOOP
    final_status, stats = interactive_synthesizer(
        frozen_plan, ctx, args, prompts["builder"], 
        run_dir / "refinement", Path(args.src_root), 
        ensure_dir(run_dir / "refinement" / "harness"), 
        ensure_dir(run_dir / "refinement" / "logs"),
        args.max_a
    )

    # ========================================================
    # PHASE 3: POST-LOOP VALIDATION (SYSTEM REPLAY)
    # ========================================================
    if final_status == "H2_BUG":
        print("\n[=] PHASE 3: System Validation (Replay)")
        
        # 1. Locate the harness and the crash input (ktest)
        harness_path = run_dir / "refinement" / "harness" / "harness.c"
        ktest_path = Path(stats.get("best_ktest_path", ""))
        
        if harness_path.exists() and ktest_path.exists():
            print(f"  [*] Replaying Artifacts:\n      Harness: {harness_path.name}\n      Input:   {ktest_path.name}")
            
            harness_src = harness_path.read_text(encoding="utf-8")
            verdict, msg = run_reproducer_suite(harness_src, Path(args.src_root), run_dir, ktest_path, args)
            
            print(f"  [*] Validation Verdict: {verdict}")
            
            # [UPDATED] Robust Classification Logic
            if verdict == "CONFIRMED":
                final_status = "H2_BUG_CONFIRMED"
                (run_dir / "reproduction_success.txt").write_text(msg, encoding="utf-8")
                print("  [✓] Replay confirmed the bug! Marked as H2_BUG_CONFIRMED.")
            elif verdict == "INVALID_HARNESS":
                final_status = "H2_INVALID" # Distinct from "Failed"
                print("  [!] Replay rejected the harness (Assumptions violated).")

            elif verdict == "WEAK":
                final_status = "H2_BUG_WEAK" # Stub-dependent
                
            else:
                # Replay Failed (Silent). Check if we should trust KLEE model.
                is_oob_read = (ctx.get("strategy_name") == "OOB_READ")
                klee_log = stats.get("full_log", "")
                klee_memory_err = ("memory error" in klee_log or "out of bound" in klee_log)
                
                # [FIXED] Gate the rescue: Must be OOB_READ, Must be Memory Error, AND Must be at CHECK_READ line.
                # Helper 'verify_rescue_eligibility' must be defined in scope.
                if is_oob_read and klee_memory_err and verify_rescue_eligibility(run_dir, klee_log, harness_path):
                    final_status = "H2_BUG_CONFIRMED_MODEL"
                    print(f"  [!] Replay was silent, but KLEE detected definitive OOB Read at CHECK_READ.")
                    print(f"      Accepting as H2_BUG_CONFIRMED_MODEL (Strategy: OOB_READ).")
                    (run_dir / "reproduction_model.txt").write_text(f"Silent OOB Read confirmed by KLEE memory model.\n{msg}", encoding="utf-8")
                else:
                    final_status = "H2_REACH" # Likely False Positive / Harness Bug
                    print(f"  [!] Replay Failed and Bug is not a Silent OOB. Downgrading to H2_REACH.")
                    print(f"      FULL REPLAY LOG:\n{msg}")
        else:
             print(f"  [!] Missing artifacts for replay. Harness={harness_path.exists()}, KTest={ktest_path.exists()}")

    # ========================================================

    write_json(run_dir / "run_meta.json", {"spec": str(args.spec), "class": final_status, "klee": stats, "tokens": _TOKEN_STATS})

    if args.summary_tsv:
        with open(args.summary_tsv, "a", encoding="utf-8") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            # Columns: Spec | FinalStatus | KleeStatus | Time | BestTurn | PromptTokens | ComplTokens | TotalTokens
            line = (
                f"{args.spec_stem}\t"
                f"{final_status}\t"
                f"{stats.get('status','none')}\t"
                f"{stats.get('elapsed',0):.2f}\t"
                f"{stats.get('best_turn', -1)}\t"
                f"{_TOKEN_STATS['prompt_tokens']}\t"
                f"{_TOKEN_STATS['completion_tokens']}\t"
                f"{_TOKEN_STATS['total_tokens']}\n"
            )
            f.write(line)
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {final_status}")

if __name__ == "__main__":
    main()