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
import traceback
from pathlib import Path
from typing import Dict, Any, Tuple, List, Optional
from copy import deepcopy

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
    STRICT replay source constructor:
      - RETAINS /* --- Embedded Functions --- */ (Helper logic required by harness).
      - RETAINS unique wrappers (stub_*) inside /* --- Stub Functions --- */.
      - REMOVES conflicting overrides inside /* --- Stub Functions --- */.
      - Removes explicit STUB_EXCEPTION[...] tags/functions unless they are safe wrappers.
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
    
    # Logic to capture specific functions inside sections we might otherwise strip
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
            out.append(line) # Always keep Embedded Functions section header
            continue

        if "/* --- Harness --- */" in line:
            in_stub_section = False
            in_embedded_section = False
            capturing_function = False
            out.append(line)
            continue

        # 2. Handling Logic
        if in_embedded_section:
            # Always KEEP Embedded Functions (helpers like stub_strlen)
            out.append(line)
            continue

        if in_stub_section:
            # Smart Filter: Only keep 'stub_' or 'harness_' prefixed functions
            # Discard everything else (standard library overrides, etc)
            
            # Check for function start
            if not capturing_function and re.search(r"^\s*(?:[\w\*]+\s+)+(stub_|harness_)\w+\s*\(", line):
                capturing_function = True
                brace_depth = 0
            
            if capturing_function:
                out.append(line)
                brace_depth += _brace_delta(line)
                # Check if function ended
                if "}" in line and brace_depth <= 0:
                    capturing_function = False
            
            # If not capturing a safe wrapper, we DROP the line (it's a stub to be stripped)
            continue

        # 3. Harness & Globals (Always Keep)
        # Filter specific STUB_EXCEPTION tags if they appear here (rare)
        if _STUB_EXCEPTION_RE.search(line):
            continue # Just drop the tag line
            
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
    "xmlHashComputeKey", "xmlDictComputeFastKey",
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

    project_o = work_dir / "project.o"
    cc_bc = [args.clang, "-c", str(project_bc), "-o", str(project_o)] + args.clang_flags
    rc, out, err, _ = run_cmd(cc_bc, cwd=src_root)
    if rc != 0:
        (work_dir / "system_replay_project_compile.stderr").write_text(err, encoding="utf-8", errors="replace")
        return "FAIL", f"Replay failed: project.bc -> project.o compile failed. See system_replay_project_compile.stderr", assumptions

    base_flags = ["-L", str(lib_dir), "-lkleeRuntest", f"-Wl,-rpath,{lib_dir}"] + args.clang_flags

    def _link_driver(driver_c: Path, out_bin: Path, extra_flags: List[str]) -> Tuple[int, str, str]:
        cmd = [args.clang, "-O0", "-g", str(driver_c), str(project_o)] + base_flags + extra_flags + ["-o", str(out_bin)]
        rc, o, e, _ = run_cmd(cmd, cwd=src_root)
        return rc, o, e

    def _run_driver(bin_path: Path) -> Tuple[int, str, str]:
        env = os.environ.copy()
        env["KTEST_FILE"] = str(ktest_path)
        rc, o, e, _ = run_cmd([str(bin_path)], cwd=src_root, timeout=5, env=env)
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
        # This is the most precise validation. It means the Agent's calculated 
        # predicate (e.g., len > buffer) actually evaluated to FALSE.
        # Since we banned 'assert(0)', this implies a real state violation.
        if "BUG_ASSERT" in hay: 
            # Matches the string printed by the macro: klee_assert(!(cond) && "BUG_ASSERT")
            # In Phase III (libkleeRuntest), this prints "klee_assert: ... failed".
            return True
            
        if "klee_assert" in hay and "failed" in hay:
            return True

        if "Assertion" in hay and "failed" in hay:
            # Matches standard C assert() failures
            return True

        # --- 2. The Hard Crash (Memory Corruption) ---
        # Sometimes the bug (e.g. memcpy) crashes the process BEFORE the assertion checks it.
        # We must still accept this as a valid witness.
        
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
        # If we got here, it's a generic SIGABRT (rc -6/134) WITHOUT an assertion message.
        # This is usually a False Positive (library panic unrelated to our bug).
        return False

    # ---------------- STRICT replay ----------------
    strict_driver_c = work_dir / "system_driver_strict.c"
    strict_driver_bin = work_dir / "system_driver_strict.exe"
    strict_driver_c.write_text(strict_src, encoding="utf-8")

    extra_flags: List[str] = []
    link_err_last = ""
    for attempt in range(4):
        rc_link, o_link, e_link = _link_driver(strict_driver_c, strict_driver_bin, extra_flags)
        (work_dir / "system_replay_link_strict.stderr").write_text(e_link, encoding="utf-8", errors="replace")
        if rc_link == 0:
            assumptions.append("REPLAY_MODE=STRICT")
            rc_run, o_run, e_run = _run_driver(strict_driver_bin)
            (work_dir / "system_replay_run_strict.stderr").write_text(e_run, encoding="utf-8", errors="replace")
            if _looks_like_crash(rc_run, o_run, e_run):
                return "STRICT", "STRICT REPLAY CONFIRMED (linked against real project.o).", assumptions
            else:
                # [FIX] Return the actual output so the user can see WHY it didn't crash
                return "FAIL", (
                    f"STRICT REPLAY executed but did NOT crash.\n"
                    f"Exit Code: {rc_run}\n"
                    f"--- STDOUT ---\n{o_run[:1000]}\n"
                    f"--- STDERR ---\n{e_run[:1000]}\n"
                    f"----------------\n"
                    f"Analysis: The harness ran successfully using the REAL library code,\n"
                    f"but the bug condition was not triggered. This usually means the\n"
                    f"harness relies on a 'Stub Override' (like a forced hash collision)\n"
                    f"that was IGNORED by the real library function calls."
                ), assumptions

        link_err_last = e_link or link_err_last
        if "undefined reference" in e_link or "cannot find -l" in e_link:
            # 1. ZLIB support
            if ("-lz" not in extra_flags) and ("-lz" not in base_flags) and ("zlib" in e_link or "compress" in e_link or "inflate" in e_link):
                extra_flags.append("-lz")
                continue
            
            # 2. [NEW] LZMA support (Fixes your current error)
            if ("-llzma" not in extra_flags) and ("-llzma" not in base_flags) and ("lzma" in e_link):
                extra_flags.append("-llzma")
                continue
                
            # 3. Math support
            if ("-lm" not in extra_flags) and ("-lm" not in base_flags):
                extra_flags.append("-lm")
                continue

    # ---------------- ENV replay ----------------
    assumptions.append("REPLAY_MODE=ENV (selective external stubs)")
    project_defs = _project_defined_symbols(project_bc, cwd=src_root)
    undefined = _parse_undefined_symbols(link_err_last)
    selected = _select_external_stubs(harness_src, undefined, project_defs)

    if not selected:
        return "FAIL", (
            "STRICT REPLAY link failed and no allowlisted external stubs matched undefined symbols.\n"
            f"Undefined symbols (sample): {undefined[:10]}\n"
            "See system_replay_link_strict.stderr for full linker error."
        ), assumptions

    try:
        env_src = _build_env_replay_source(harness_src, selected)
    except Exception as e:
        return "FAIL", f"ENV REPLAY failed while constructing source: {e}", assumptions

    env_driver_c = work_dir / "system_driver_env.c"
    env_driver_bin = work_dir / "system_driver_env.exe"
    env_driver_c.write_text(env_src, encoding="utf-8")

    assumptions.append("RETAINED_STUBS=" + ",".join(selected))

    rc_link2, o2, e2 = _link_driver(env_driver_c, env_driver_bin, extra_flags)
    (work_dir / "system_replay_link_env.stderr").write_text(e2, encoding="utf-8", errors="replace")
    if rc_link2 != 0:
        return "FAIL", (
            "ENV REPLAY link failed even after retaining allowlisted external stubs.\n"
            "See system_replay_link_env.stderr for details."
        ), assumptions

    rc_run2, o_run2, e_run2 = _run_driver(env_driver_bin)
    (work_dir / "system_replay_run_env.stderr").write_text(e_run2, encoding="utf-8", errors="replace")
    if _looks_like_crash(rc_run2, o_run2, e_run2):
        return "STUB", "ENV REPLAY CONFIRMED (crash reproduced with external-dependency stubs only).", assumptions

    return "FAIL", "ENV REPLAY ran but did not reproduce the crash.", assumptions


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
def inject_standard_headers(hsrc: str) -> str:
    headers = ["<limits.h>", "<assert.h>", "<stdint.h>", "<stdlib.h>", "<string.h>", "<stdio.h>", "<stdbool.h>", "<stddef.h>"]
    if "<klee/klee.h>" not in hsrc: headers.append("<klee/klee.h>")
    injections = [f"#include {h}" for h in headers if h not in hsrc]
    
    # [FIX] Robust Assertion Macros (Generic)
    # Only inject if the Agent didn't define them, preventing "object type 'void'" errors.
    # We use #ifndef guards in the C code itself as a second layer of defense.
    
    assertion_macros = """
#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif
"""
    injections.append(assertion_macros)

    # [FIX] Inject klee_int helper if used but not defined
    if "klee_int" in hsrc and "int klee_int(" not in hsrc:
        injections.append("""
static int klee_int(const char *name) {
    int x;
    klee_make_symbolic(&x, sizeof(x), name);
    return x;
}
""")

    return "\n".join(injections) + "\n" + hsrc

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
    cmd = [args.clang] + args.clang_flags + ["-g", "-emit-llvm", "-c", str(harness_c), "-o", str(out_bc)]
    rc, out, err, _ = run_cmd(cmd, cwd=src_root)
    if rc != 0: return False, (out + "\n" + err), out_bc

    if project_bc and project_bc.exists():
        llvm_link = _pick_llvm_link(getattr(args, "llvm_link", None))
        if not llvm_link: 
            return True, "[warn] llvm-link missing; running harness only.", out_bc
            
        linked_bc = out_bc.parent / "harness.linked.bc"
        lcmd = [llvm_link, str(out_bc), str(project_bc), "-o", str(linked_bc)]
        
        # [CHANGE] Use verbose output to catch errors
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
            return True, f"[warn] Link failed: {lerr}", out_bc
            
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

def finalize_frozen_plan(
    plan: Dict[str, Any], 
    ctx: Dict[str, Any], 
    rule_id: str, 
    spec_stem: str, 
    policy: Dict[str, Any]
) -> Dict[str, Any]:
    """
    Automated Plan Fixer.
    Enforces Stubs, Dependency Injection, and Assertion Polarity based on Policy + Rule ID.
    """
    p = deepcopy(plan)
    vcfg = (policy or {}).get("validation", {}) or {}
    
    # --- 1. Automated Assertion Fix (Polarity) ---
    assertions = p.get("assertions") or []
    if isinstance(assertions, list) and assertions:
        # Apply the fix_bug_polarity logic to every assertion
        norm = [fix_bug_polarity(deepcopy(a), ctx, rule_id) for a in assertions]
        # Enforce Order: BUG(0) before REACH(1)
        p["assertions"] = sorted(norm, key=lambda x: _KIND_ORDER.get(x.get("kind", ""), 9))

    # --- 2. Automated Stub Injection (Policy Driven) ---
    # Check if this rule allows Hash Collision stubs (it should, via yaml)
    rule_excs = set(vcfg.get("exceptions_by_rule", {}).get(rule_id, []) or [])
    spec_excs = set(vcfg.get("exceptions_by_spec", {}).get(spec_stem, []) or [])
    
    if "HASH_COLLISION" in (rule_excs | spec_excs):
        # 1. Get the safe constant from config (default "1")
        safe_const = str(vcfg.get("exception_detectors", {})
                         .get("HASH_COLLISION", {})
                         .get("constant_return_value", "1"))
        
        # 2. Get the list of functions to stub (provided by the validation policy)
        target_hashes = set(vcfg.get("hash_function_names", []))
        
        if target_hashes:
            stubs = p.setdefault("embedding_plan", {}).setdefault("stub_instead_of_embed", [])
            stub_map = {s["name"]: s for s in stubs}
            
            # 3. FORCE INSERT/UPDATE the stubs
            for fname in target_hashes:
                strategy = f"constant_return_{safe_const}"
                note = f"[Auto-Inject: Policy-defined collision constant {safe_const}]"
                
                if fname in stub_map:
                    stub_map[fname]["strategy"] = strategy
                    stub_map[fname]["notes"] = note
                else:
                    stubs.append({"name": fname, "strategy": strategy, "notes": note})
            
            # 4. REMOVE from 'must_embed' to prevent conflicts
            embeds = p.get("embedding_plan", {}).get("must_embed_functions", [])
            p["embedding_plan"]["must_embed_functions"] = [e for e in embeds if e.get("name") not in target_hashes]

    # --- 3. Dependency Injection (Auto-Fix Missing Symbols) ---
    # [FIX] Dependency Injection for libxml2 dict: xmlDictFindEntry calls xmlStrQEqual.
    embed_names = [f.get("name") for f in p.get("embedding_plan", {}).get("must_embed_functions", [])]
    
    if "xmlDictFindEntry" in embed_names:
        stubs = p.setdefault("embedding_plan", {}).setdefault("stub_instead_of_embed", [])
        stub_names = {s["name"] for s in stubs}
        
        # Dependency: xmlStrQEqual
        if "xmlStrQEqual" not in stub_names:
            stubs.append({
                "name": "xmlStrQEqual",
                "strategy": "constant_return_1",
                "notes": "[Auto-Fix: Dependency of xmlDictFindEntry]"
            })

    # Mark as canonicalized
    p.setdefault("frozen_meta", {})
    p["frozen_meta"]["canonicalized"] = True
    return p

def run_frozen_analysis(ctx: Dict[str, Any], args: argparse.Namespace, planner_prompt: str, out_dir: Path, src_root: Path) -> Dict[str, Any]:
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

            # 1) Canonicalize frozen plan (global invariants + rule-driven bug polarity)
            frozen_plan = finalize_frozen_plan(
                raw_plan, 
                ctx, 
                args.rule_id, 
                args.spec_stem, 
                args.validation_policy_obj
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
    # Clear previous per-run output to ensure no cross-run pollution
    out_dir = log_dir / f"klee-out-{idx}"
    if out_dir.exists():
        shutil.rmtree(out_dir, ignore_errors=True)


    # [UPDATE] Add flags to prevent inode exhaustion
    cmd = [klee] + flags + [
        "--output-dir", str(out_dir),
        "--write-no-tests",                  # Critical: Only write .ktest on error/bug
        "--only-output-states-covering-new", # Critical: Reduce redundant tests
        "--compress-global",                 # Critical: Gzip large logs
        str(bc_path)
    ]


    rc, out, err, t = run_cmd(cmd, timeout=timeout)
    full_log = f"{out}\n{err}"
    (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")
    
    # Robust Log Parsing: Check specific KLEE error files first
    bug_assert, reach_assert = check_for_assert_files(out_dir)
    
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

def validate_harness_structure(
    harness_src: str,
    required_entrypoint: str,
    policy: Dict[str, Any],
    rule_id: str,
    spec_stem: str,
) -> Tuple[bool, str]:
    """
    Hardened validation with Robust Parsing & Policy Enforcement.
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
        # [FIX] Capture the Global section to check for misplaced main()
        global_sec, rest = harness_src.split("/* --- Stub Functions --- */", 1)
        stub_sec_raw, harness_sec = rest.split("/* --- Harness --- */", 1)
    except Exception:
        return False, "Failed to split harness into sections. Ensure markers are present and ordered."

    # --- 2. Macro Check ---
    if "#define BUG_ASSERT" not in harness_src or "#define REACH_ASSERT" not in harness_src:
        return False, "Missing required assertion macro definitions (#define BUG_ASSERT / #define REACH_ASSERT)."

    # [NEW] Forbid Lazy Assertions (assert(0) / assert(false))
    # This prevents the agent from bypassing logic by just forcing a crash.
    # Matches: BUG_ASSERT(0), BUG_ASSERT( 0 ), BUG_ASSERT(false), etc.
    lazy_assert_re = re.compile(r"BUG_ASSERT\s*\(\s*(0|1|false|true|NULL)\s*\)", re.IGNORECASE)
    if lazy_assert_re.search(harness_sec):
        return False, (
            "LAZY ASSERTION DETECTED: You used 'BUG_ASSERT(0)' or similar constant.\n"
            "VIOLATION: You MUST use the actual logic predicate defined in the Frozen Plan's 'assertions' section.\n"
            "Example: BUG_ASSERT(len > 1024); NOT BUG_ASSERT(0);"
        )

    # Enforce BUG_ASSERT executes before REACH_ASSERT
    _exec = re.sub(r"^\s*#.*$", " ", harness_sec, flags=re.MULTILINE)
    _exec = re.sub(r"/\*.*?\*/", " ", _exec, flags=re.S)
    _exec = re.sub(r"//.*?$", " ", _exec, flags=re.M)

    bug_pos = _exec.find("BUG_ASSERT(")
    reach_pos = _exec.find("REACH_ASSERT")

    if reach_pos != -1 and bug_pos != -1 and reach_pos < bug_pos:
        return False, (
            "Invalid ordering: REACH_ASSERT appears before BUG_ASSERT in the Harness section. "
            "Place BUG_ASSERT(<predicate>); first, then REACH_ASSERT;"
        )

    # --- 3. Main() Location Check (IMPROVED) ---
    main_re = re.compile(r"^\s*int\s+main\s*\(", re.MULTILINE)
    
    # Check if main is correctly placed
    if not main_re.search(harness_sec):
        # Diagnose WHERE it is
        if main_re.search(stub_sec_raw):
            return False, (
                "STRUCTURAL ERROR: main() is defined inside the 'Stub/Embedded Functions' section. "
                "Move main() DOWN to the '/* --- Harness --- */' section."
            )
        elif main_re.search(global_sec):
             return False, (
                "STRUCTURAL ERROR: main() is defined inside the 'Global Constants' section (at the top). "
                "Move main() DOWN to the '/* --- Harness --- */' section (at the bottom)."
            )
        else:
            return False, (
                "STRUCTURAL ERROR: Missing 'int main(...)' definition.\n"
                "You must define the entrypoint function: int main(int argc, char **argv) { ... }\n"
                "It MUST be placed inside the '/* --- Harness --- */' section."
            )

    # --- 4. Entrypoint Checks ---
    if required_entrypoint:
        # A. Call Check
        clean = re.sub(r'("([^"\\]|\\.)*"|\'([^\'\\]|\\.)*\'|//.*?$|/\*.*?\*/)', " ", harness_sec, flags=re.MULTILINE | re.DOTALL)
        clean_no_defs = re.sub(r"^\s*(?:[\w\*]+\s+)+\b[\w]+\s*\(.*?\)\s*\{", " ", clean, flags=re.MULTILINE | re.DOTALL)
        
        call_re = re.compile(rf"\b{re.escape(required_entrypoint)}\s*\(")
        if not call_re.search(clean_no_defs):
            return False, f"Harness does not CALL required entrypoint '{required_entrypoint}' in the Harness section."

        # B. Redefinition Check [CRITICAL FIX]
        # We use [^;]*? to explicitly forbid consuming a semicolon.
        # This ensures we match "func() {" but NOT "func(); ... {" (valid declaration)
        redef_re = re.compile(
            rf"^\s*(?:[\w\s\*]+?)[\s\*]+\b{re.escape(required_entrypoint)}\s*\([^;]*?\)\s*\{{", 
            re.MULTILINE | re.DOTALL
        )
        
        if redef_re.search(harness_sec):
            return False, (
                f"ILLEGAL REDEFINITION: You defined '{required_entrypoint}' in the Harness section.\n"
                "STOP! You are NOT allowed to implement this function.\n"
                "The real library provides it. By defining it here, you are causing a Linker Collision.\n"
                f"ACTION: DELETE the body of '{required_entrypoint}'. Declare it as 'extern' and link against the library."
            )

    # --- 5. Policy Loading & Stub Checks ---
    vcfg = (policy or {}).get("validation", {}) or {}
    replay_critical = set(vcfg.get("hash_function_names", []) or [])
    detectors = vcfg.get("exception_detectors", {}) or {}
    det_hash = detectors.get("HASH_COLLISION", {}) if isinstance(detectors, dict) else {}
    replay_critical |= set(det_hash.get("symbols", []) or [])

    if replay_critical:
        for fn in replay_critical:
             fn_def_re = re.compile(rf"^\s*(?:static\s+)?[A-Za-z0-9_]+\s+\b{re.escape(fn)}\s*\([^;]*\)\s*\{{", re.MULTILINE)
             if fn_def_re.search(stub_sec_raw):
                 return False, (
                     f"PLACEMENT ERROR: You defined '{fn}' in '/* --- Stub Functions --- */'.\n"
                     "This function is replay-critical and must persist during Phase III System Replay.\n"
                     "CRITICAL FIX: Do NOT delete this function. You MUST MOVE it to the '/* --- Harness --- */' section.\n"
                     "Use the tag: // STUB_EXCEPTION[REPLAY_CRITICAL] immediately before it."
                 )
    
    return True, ""

def interactive_synthesizer(
    frozen_plan: Dict[str, Any], ctx: Dict[str, Any], args: argparse.Namespace, builder_prompt: str,
    out_dir: Path, src_root: Path, harness_dir: Path, logs_dir: Path, max_iters: int
) -> Tuple[str, Dict[str, Any]]:

    harness_src = ""
    history = []
    
    # [NEW] Dynamic Constraints: "Remember" forbidden stubs to stop the loop
    dynamic_constraints: List[str] = []
    
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

    # Helper to check if plan requires multiple calls (Setup + Trigger)
    plan_calls = frozen_plan.get("call_sequence", [])
    min_calls = len(plan_calls) if len(plan_calls) > 0 else 1

    def _cap_text(s: str, n: int) -> str:
        s = (s or "")
        if len(s) <= n: return s
        keep = n // 2
        return s[:keep] + f"\n...[middle {len(s)-n} chars truncated]...\n" + s[-keep:]

    sticky_constraints = (
        "STICKY CONSTRAINTS (HARD):\n"
        "- Preserve section markers exactly and in order.\n"
        "- main() MUST be inside /* --- Harness --- */ only.\n"
        f"- Entrypoint name is: {required_entrypoint}\n"
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

        user_msg = (
            f"{sticky_constraints}\n"
            f"{feedback_section}\n"
            f"TARGET CODE CONTEXT:\n```c\n{ctx['enclosing_function']}\n```\n"
            f"Frozen Plan: {json.dumps(frozen_plan, indent=2)}\n"
            f"Current Harness:\n{_cap_text(harness_src, 2000)}\n"
            f"{anti_search_msg}\n{warning_msg}\n"
            f"{dyn_constraints_text}\n" 
            "TASK: Fix errors. Output the COMPLETE harness code in a markdown ```c ... ``` block."
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
                    # ... (keep existing shell logic if present, or pass) ...
                    pass
        except: pass

        code, _meta = extract_harness_code_from_llm_response(str(raw_response))
        if not code:
            print("  [!] Error: Agent returned no code.")
            history.append("System: You failed to provide a ```c code block.")
            if best_stats["score"] == 0: best_stats["failure_reason"] = "Agent returned no code"
            continue
        
        # [NEW] Call Sequence Enforcement (The Fix for H2_BUG)
        if required_entrypoint:
            clean_code = strip_c_comments_and_strings(code)
            # Count calls to entrypoint (ignoring declarations)
            # This matches "xmlDictLookup(" but not "extern ... xmlDictLookup("
            call_count = len(re.findall(rf"\b{re.escape(required_entrypoint)}\s*\(", clean_code))
            
            # If we see 0 calls, it might be shadowed by the "extern" check, but strict count helps.
            # We subtract 1 if the agent wrote an extern declaration that wasn't stripped by the simple cleaner
            if call_count < min_calls:
                print(f"  [!] Plan Violation: Entrypoint called {call_count} times (Expected {min_calls}+).")
                history.append(
                    f"LOGIC ERROR: The Frozen Plan requires a sequence of {min_calls} calls to '{required_entrypoint}' "
                    "(e.g., Setup then Trigger).\n"
                    f"You only have {call_count} potential calls.\n"
                    "ACTION: You MUST implement the full 'call_sequence' from the Frozen Plan to set up the bug state."
                )
                if best_stats["score"] == 0: best_stats["failure_reason"] = "Plan Deviation (Call Sequence)"
                continue

        # Redefinition Check
        if required_entrypoint:
            clean_code = strip_c_comments_and_strings(code)
            # Use the FIXED regex that doesn't cross semicolons
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
            is_valid, err_msg = validate_harness_structure(code, required_entrypoint, args.validation_policy_obj, args.rule_id, args.spec_stem)
        except Exception as e:
            history.append(f"SYSTEM ERROR: Validation crashed: {e}")
            continue

        if not is_valid:
            print(f"  [!] Harness Validation Failed: {err_msg}")
            history.append(f"SYSTEM ERROR: Structure Invalid.\nREASON: {err_msg}")
            continue 

        print(f"  [>] Generated Harness ({len(code)} bytes).")
        harness_src = inject_standard_headers(code)
        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")

        print("  [*] Compiling to Bitcode...")
        okc, msg, bc = compile_harness_to_bc(args, src_root, harness_dir/"harness.c", harness_dir/"harness.bc", Path(args.project_bc) if args.project_bc else None)[0:3]
             
        if not okc:
            summary = summarize_log(msg, "Clang Error")
            print(f"  [!] Compilation Failed. Reason:\n{summary}") 

            # Opaque Struct Recovery
            struct_match = re.search(r"incomplete type '(struct [A-Za-z0-9_]+)'", msg)
            if struct_match:
                missing_struct = struct_match.group(1)
                print(f"  [i] Detected Opaque Struct error for '{missing_struct}'. Injecting hint.")
                history.append(
                    f"COMPILATION ERROR: Opaque type '{missing_struct}'.\n"
                    f"ACTION: Find 'struct {missing_struct.split()[-1]} {{ ... }};' in the TARGET CODE CONTEXT and COPY it."
                )
            
            # [NEW] Linker Collision + Dynamic Constraint Learning
            elif "symbol multiply defined" in msg:
                collided_sym = re.search(r"globals named '([^']+)'", msg)
                sym_name = collided_sym.group(1) if collided_sym else "a symbol"
                print(f"  [!] Detected Linker Collision on {sym_name}. Injecting Constraint.")
                
                constraint = (
                    f"VIOLATION RECORDED: You caused a Linker Collision on '{sym_name}'. "
                    f"DO NOT STUB '{sym_name}'. You MUST use the library version."
                )
                if constraint not in dynamic_constraints:
                    dynamic_constraints.append(constraint)
                
                history.append(
                    f"LINKER ERROR: Symbol '{sym_name}' is multiply defined.\n"
                    f"CAUSE: You defined '{sym_name}' in your stub section, but it already exists in the library.\n"
                    f"ACTION: Remove your definition of '{sym_name}'."
                )

            else:
                # Missing Symbols
                missing_syms = re.findall(r"undefined reference to `([^']+)'", msg)
                missing_syms += re.findall(r"implicit declaration of function '([^']+)'", msg)
                if missing_syms:
                    unique_missing = sorted(list(set(missing_syms)))
                    print(f"  [i] Auto-detected missing dependencies: {unique_missing}")
                    history.append(
                        f"COMPILATION ERROR: Undefined symbols: {unique_missing}.\n"
                        "SYSTEM OVERRIDE: You are granted permission to STUB these specific functions."
                    )
                else: 
                    history.append(f"COMPILATION ERROR (Summarized):\n{summary}")
            
            if best_stats["score"] == 0:
                best_stats["failure_reason"] = "Compilation/Linker Error"
            continue

        print(f"  [*] Running KLEE...")
        stats = run_klee(bc, args.klee, args.klee_flags, args.timeout, logs_dir, i)

        # [UPDATE] Immediate Cleanup Logic
        klee_out_dir = logs_dir / f"klee-out-{i}"
        
        # If this turn didn't find a bug or reach the target, Nuke it.
        if not stats["bug_assert_hit"] and not stats["reach_assert_hit"]:
             if klee_out_dir.exists():
                 shutil.rmtree(klee_out_dir, ignore_errors=True)
                 
        # Always delete the intermediate bitcode for this turn (save block space)
        # We only need the C source (harness.c) which is small.
        if (harness_dir / "harness.bc").exists():
            (harness_dir / "harness.bc").unlink()
            
        log_summary = summarize_log(stats['full_log'], "KLEE Log")

        incomplete_type_match = re.search(r"incomplete definition of type 'struct (.+?)'", stats['full_log'])
        
        if incomplete_type_match:
            struct_name = incomplete_type_match.group(1)
            
            # [FIXED] Use 'frozen_plan' instead of 'plan'
            target_file_name = frozen_plan.get('context_file', os.path.basename(args.vul_file))
            ctx_file_path = out_dir / "ctx" / target_file_name
            
            if ctx_file_path.exists():
                print(f"  [!] Detected Opaque Struct Error: '{struct_name}'. Scanning {ctx_file_path.name}...")
                try:
                    with open(ctx_file_path, 'r') as f:
                        src_content = f.read()
                    
                    # Regex to grab the full struct definition
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
        
        if stats["bug_assert_hit"]:
            print("  [!] Bug Found! (Candidate H2) -> Exiting refinement to validate.")
            best_stats = stats
            best_stats["score"] = 3
            best_stats["failure_reason"] = "None (Candidate)"
            best_stats["final_harness"] = harness_src
            best_stats["best_turn"] = i
            best_stats["best_ktest_path"] = str(find_crash_ktest(logs_dir, i) or "")
            return "H2_BUG", best_stats

        elif stats["reach_assert_hit"]:
            current_score = 2
            current_label = "H2_REACH"
            current_reason = "Target Reached (No Bug)"
            print(f"  [i] KLEE REACH Details:\n{log_summary}")
            
            # [GENERIC FIX] Dynamic Hint based on Plan
            # We look at the Frozen Plan to see what the "Setup" steps were supposed to be.
            plan_calls = frozen_plan.get("call_sequence", [])
            setup_hint = ""
            if len(plan_calls) > 1:
                # Assuming the last call is the trigger, listing previous calls as setup
                setup_steps = [f"- {c.get('function')}: {c.get('purpose', 'Setup')}" for c in plan_calls[:-1]]
                setup_hint = "Review your 'call_sequence' from the Frozen Plan. Did you implement these SETUP steps?\n" + "\n".join(setup_steps)

            history.append(
                f"KLEE: REACHED target (H2_REACH), but BUG_ASSERT did not fire.\n"
                "ANALYSIS: Execution reached the target function, but the specific state required for the bug was not present.\n"
                "COMMON CAUSE: The bug requires a specific state (e.g., populated cache, specific config) created by PRIOR calls.\n"
                f"{setup_hint}\n"
                "ACTION: Ensure you strictly follow the 'call_sequence' to build the necessary state before the final trigger call."
            )

        elif stats["status"] == "timeout":
            current_score = 1
            current_label = "H1"
            current_reason = "Timeout"
            history.append(f"KLEE: Timeout.\nLog Summary:\n{log_summary}")

        else:
            current_score = 0.5
            current_label = "H0"
            current_reason = "Error / Not Reached"
            history.append(f"KLEE: {stats['status']}\nLog Summary:\n{log_summary}")

        print(f"  [=] Result: {current_label} (Score: {current_score})")

        if current_score >= best_stats.get("score", 0):
            best_stats = stats
            best_stats["score"] = current_score
            best_stats["failure_reason"] = current_reason
            best_stats["final_harness"] = harness_src
            best_stats["best_turn"] = i
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
    ap.add_argument("--clang-flags", default="", help="clang flags as a single shell-style string")
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", default="", help="klee flags as a single shell-style string")
    ap.add_argument("--max-a", type=int, default=15)
    ap.add_argument("--max-b", type=int, default=3)
    ap.add_argument("--max-cycles", type=int, default=5)
    ap.add_argument("--timeout", type=int, default=120)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    ap.add_argument("--validation-policy", default=os.environ.get("VALIDATION_POLICY"),
                    help="Path to YAML validation policy. If missing, auto-generated from rule file.")
    
    # [NEW] CodeQL Rule File
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
        vul_file=args.vul_file,
        vul_line=args.vul_line,
        rule_id=args.rule_id,
        vul_statement=ctx.get("vul_statement_text", "") or "",
        source_root=args.src_root,
    )

    # SAVE PROMPTS TO DISK HERE
    prompt_dir = ensure_dir(run_dir / "prompts")
    (prompt_dir / "planner_prompt.txt").write_text(prompts["planner"], encoding="utf-8")
    (prompt_dir / "builder_prompt.txt").write_text(prompts["builder"], encoding="utf-8")
    print(f"  [i] Prompts saved to {prompt_dir}")

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

    # ========================================================
    # [NEW] PHASE 3: POST-LOOP VALIDATION (SYSTEM REPLAY)
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
            
            # Update status based on strict replay
            if verdict == "CONFIRMED":
                final_status = "H2_BUG_CONFIRMED"
                (run_dir / "reproduction_success.txt").write_text(msg, encoding="utf-8")
            elif verdict == "WEAK":
                final_status = "H2_BUG_WEAK" # Stub-dependent
            else:
                final_status = "H2_REACH" # False Positive (Replay failed)
                print(f"  [!] Replay Failed. Downgrading to H2_REACH.")
                print(f"      FULL REPLAY LOG:\n{msg}")
        else:
             print(f"  [!] Missing artifacts for replay. Harness={harness_path.exists()}, KTest={ktest_path.exists()}")

    # ========================================================

    write_json(run_dir / "run_meta.json", {"spec": str(args.spec), "class": final_status, "klee": stats})

    if args.summary_tsv:
        with open(args.summary_tsv, "a", encoding="utf-8") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            f.write(f"{args.spec_stem}\t{final_status}\t{stats.get('status','none')}\t{stats.get('elapsed',0):.2f}\n")
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {final_status}")

if __name__ == "__main__":
    main()