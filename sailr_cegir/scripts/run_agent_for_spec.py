#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
run_agent_for_spec.py
Fixed Instrumentation Logic to prevent breaking multi-line C statements.
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
import datetime
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
        sys.exit(1)

# -----------------------------
# Bitcode symbol index helpers
# -----------------------------
_PROJECT_SYM_CACHE: Dict[str, Set[str]] = {}

def _project_defined_symbols(project_bc_path: Path, work_dir: Path, llvm_nm: Optional[str] = None) -> Set[str]:
    """Return a set of *defined* (not just referenced) symbols in project.bc.

    Uses llvm-nm when available. Results cached per absolute bc path.
    """
    bc = str(project_bc_path.resolve())
    if bc in _PROJECT_SYM_CACHE:
        return _PROJECT_SYM_CACHE[bc]

    syms: Set[str] = set()
    nm = llvm_nm or "llvm-nm"
    try:
        rc, out, err, _ = run_cmd([nm, bc], cwd=work_dir)
        if rc == 0:
            defined_types = set("TtWwDdBbRrVv")
            for line in out.splitlines():
                parts = line.split()
                if len(parts) < 2:
                    continue
                name = parts[-1]
                st = parts[-2]
                # Handle "U name" and "<addr> U name"
                if st == "U":
                    continue
                if st and st[0] in defined_types:
                    syms.add(name)
    except Exception:
        # best-effort: empty set means "don't filter"
        syms = set()

    _PROJECT_SYM_CACHE[bc] = syms
    return syms

def resolve_llvm_tool(tool: str, args: argparse.Namespace) -> Optional[str]:
    """Resolve an LLVM tool path (e.g., clang, llvm-nm) deterministically.

    Resolution order:
      1) Explicit args.<tool>_path fields (args.clang / args.llvm_nm / args.llvm_link)
      2) Sibling tools next to a known LLVM binary (llvm-link / clang)
      3) Env: LLVM_BIN, LLVM_HOME, LLVM_DIR
      4) PATH via shutil.which
    """
    # Explicit per-tool override (e.g., args.llvm_nm)
    direct = getattr(args, tool.replace("-", "_"), None)
    if direct and isinstance(direct, str) and direct.strip():
        p = shutil.which(direct) or direct
        return str(Path(p).resolve()) if Path(p).exists() else (shutil.which(direct) or direct)

    # Try to infer from --llvm-link / --clang location
    anchors = []
    for a in ["llvm_link", "clang"]:
        v = getattr(args, a, None)
        if v and isinstance(v, str):
            w = shutil.which(v) or v
            if w:
                anchors.append(w)
    for anch in anchors:
        try:
            b = Path(anch).resolve()
            if b.is_file():
                cand = b.parent / tool
                if cand.exists():
                    return str(cand)
        except Exception:
            pass

    # Env-based discovery
    for envk in ["LLVM_BIN", "LLVM_HOME", "LLVM_DIR"]:
        ev = os.environ.get(envk)
        if not ev:
            continue
        base = Path(ev)
        # accept either bin dir or install root
        if (base / tool).exists():
            return str((base / tool).resolve())
        if (base / "bin" / tool).exists():
            return str((base / "bin" / tool).resolve())

    # PATH
    w = shutil.which(tool)
    return w

def init_llvm_tools(args: argparse.Namespace) -> None:
    """Populate args.llvm_nm / args.clang with resolved tool paths.

    This is intentionally best-effort: Phase-1 should remain robust even if a tool
    is missing, but linkage verification becomes stronger when tools are resolved.
    """
    # Resolve clang
    clang_path = resolve_llvm_tool("clang", args) or resolve_llvm_tool(getattr(args, "clang", "clang"), args)
    if clang_path:
        args.clang = clang_path

    # Resolve llvm-nm (used by verify_entrypoint_linkage fast path)
    if not getattr(args, "llvm_nm", None):
        nm = resolve_llvm_tool("llvm-nm", args)
        if nm:
            args.llvm_nm = nm

    # Resolve llvm-link if provided as name only
    if getattr(args, "llvm_link", None):
        ll = resolve_llvm_tool("llvm-link", args)
        if ll:
            args.llvm_link = ll

def load_compile_commands_path(src_root: Path, args: argparse.Namespace) -> Optional[Path]:
    """
    Resolve compile_commands.json path.
    Priority:
      1) args.compile_commands (if you added flag)
      2) <src_root>/compile_commands.json
      3) <src_root>/build/compile_commands.json
    """
    p = getattr(args, "compile_commands", None)
    if p:
        pp = Path(p)
        if pp.exists():
            return pp.resolve()

    # Often available in SA output directory
    sa_dir = getattr(args, "sa_out_dir", None)
    if sa_dir:
        cand_sa = Path(sa_dir) / "compile_commands.json"
        if cand_sa.exists():
            return cand_sa.resolve()

    cand = (src_root / "compile_commands.json")
    if cand.exists():
        return cand.resolve()

    cand2 = (src_root / "build" / "compile_commands.json")
    if cand2.exists():
        return cand2.resolve()

    return None


def load_compile_commands_db(compdb_path: Path) -> List[Dict[str, Any]]:
    """
    Load compile_commands.json content.
    Returns [] on failure.
    """
    try:
        return json.loads(compdb_path.read_text(encoding="utf-8", errors="replace"))
    except Exception:
        return []


def compile_db_source_files(src_root: Path, compdb: List[Dict[str, Any]]) -> List[Path]:
    """
    Extract unique C/C++ translation unit files from compile_commands.json.

    IMPORTANT:
      - compile_commands.json semantics resolve relative "file" paths relative to entry["directory"].
      - We also filter to files under src_root to avoid picking up CMake ABI probes like
        /usr/share/cmake-*/Modules/CMakeCCompilerABI.c
    """
    files: List[Path] = []
    seen: Set[str] = set()
    src_root_abs = src_root.resolve()

    for e in compdb:
        f = e.get("file")
        if not f:
            continue

        fp = Path(f)
        if not fp.is_absolute():
            d = e.get("directory")
            if d:
                fp = (Path(d) / fp).resolve()
            else:
                fp = (src_root_abs / fp).resolve()
        else:
            fp = fp.resolve()

        if fp.suffix.lower() not in {".c", ".cc", ".cpp", ".cxx"}:
            continue

        # Filter out system / CMake probe files
        try:
            fp.relative_to(src_root_abs)
        except Exception:
            continue

        if not fp.exists():
            continue

        k = str(fp)
        if k in seen:
            continue
        seen.add(k)
        files.append(fp)

    return files

# ---------------- C KEYWORDS / BLOCKLIST ----------------
# Used to prevent the agent or pre-scan from selecting invalid "entrypoints" like 'if', 'while', etc.
C_KEYWORDS: Set[str] = {
    "auto","break","case","char","const","continue","default","do","double","else","enum","extern",
    "float","for","goto","if","inline","int","long","register","restrict","return","short","signed",
    "sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while",
    # Common compiler / GNU extensions encountered in signatures
    "__attribute__","__asm__","__builtin_va_list","__extension__","__inline__","__restrict","__thread",
    "_Bool","_Complex","_Imaginary",
}


def load_compile_commands(src_root: Path, args: argparse.Namespace) -> Tuple[Optional[Path], List[Path]]:
    """Backward-compatible helper.
    Returns (compdb_path, tu_files) where tu_files are translation units from the compilation DB.
    """
    compdb_path = load_compile_commands_path(src_root, args)
    if not compdb_path:
        return None, []
    compdb = load_compile_commands_db(compdb_path)
    tu_files = compile_db_source_files(src_root, compdb)
    return compdb_path, tu_files


# ---------------- PROMPT GENERATION ----------------
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
    if not ql_path.exists():
        return {}
    content = ql_path.read_text(errors="ignore")
    meta = {"id": None, "tags": []}
    m_id = re.search(r"@id\s+([^\s]+)", content)
    if m_id:
        meta["id"] = m_id.group(1).strip()
    m_tags = re.findall(r"@tags\s+(.+)", content)
    for tag_line in m_tags:
        meta["tags"].extend(tag_line.split())
    return meta

def generate_auto_policy(project_id: str, ql_meta: Dict[str, Any], rule_id_arg: str) -> Dict[str, Any]:
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
    active_rule_id = ql_meta.get("id") or rule_id_arg
    tags = ql_meta.get("tags", [])
    needs_reachability_help = False
    
    if "oob" in active_rule_id or "memfunc" in active_rule_id or "overflow" in active_rule_id:
        needs_reachability_help = True
    for tag in tags:
        if tag in ["security", "external/cwe/cwe-120", "external/cwe/cwe-125", "external/cwe/cwe-787"]:
            needs_reachability_help = True

    if needs_reachability_help:
        policy["validation"]["exceptions_by_rule"][active_rule_id] = ["HASH_COLLISION", "MEMCMP_STEER"]
        if rule_id_arg != active_rule_id:
             policy["validation"]["exceptions_by_rule"][rule_id_arg] = ["HASH_COLLISION", "MEMCMP_STEER"]

    return policy

def load_validation_policy(path: str | None) -> dict:
    if not path:
        return {"validation": {}}
    p = Path(path)
    if not p.exists():
        return {"validation": {}}
    data = yaml.safe_load(p.read_text(encoding="utf-8")) or {}
    if "validation" not in data or not isinstance(data.get("validation"), dict):
        data["validation"] = {}
    return data


# ---------------- KTEST PARSER ----------------

class KTestReader:
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

    in_stub_section = False
    in_embedded_section = False
    capturing_function = False
    brace_depth = 0

    def _brace_delta(s: str) -> int:
        return s.count("{") - s.count("}")

    for line in lines:
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

        if in_embedded_section:
            out.append(line)
            continue

        if in_stub_section:
            if line.strip().startswith("#"):
                out.append(line)
                continue

            if not capturing_function:
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
            
            if re.search(r"^\s*(typedef|struct|union|enum)\b", line):
                out.append(line)
                continue
            
            if re.search(r"^\s*extern\b.*?;", line):
                out.append(line)
                continue
            continue

        if _STUB_EXCEPTION_RE.search(line):
            continue 
            
        out.append(line)

    return "\n".join(out)

EXTERNAL_STUB_ALLOWLIST = {
    "malloc", "calloc", "realloc", "free",
    "memcpy", "memmove", "memset", "memcmp",
    "strlen", "strnlen", "strcmp", "strncmp", "strchr", "strrchr",
    "open", "close", "read", "write", "lseek",
    "fopen", "fclose", "fread", "fwrite", "fflush", "fseek", "ftell",
    "getenv", "setenv", "unsetenv",
    "time", "clock_gettime",
    "abort", "exit",
    "socket", "connect", "accept", "bind", "listen", "recv", "send", "shutdown",
    "getaddrinfo", "freeaddrinfo",
    "pthread_create", "pthread_join",
    "pthread_mutex_init", "pthread_mutex_lock", "pthread_mutex_unlock", "pthread_mutex_destroy",
}

REPLAY_SEMANTIC_STUB_DENYLIST = {}

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

# [NEW] Global cache to remember flags across different bug replays
_LEARNED_LINKER_FLAGS: List[str] = []

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

    sanitizer_flags = ["-fsanitize=address,undefined", "-fno-sanitize-recover=all", "-D_GNU_SOURCE"]

    project_o = work_dir / "project.o"
    # Only compile project.o once
    if not project_o.exists():
        cc_bc = [args.clang, "-c", str(project_bc), "-o", str(project_o)] + args.clang_flags + sanitizer_flags
        rc, out, err, _ = run_cmd(cc_bc, cwd=src_root)
        if rc != 0:
            (work_dir / "system_replay_project_compile.stderr").write_text(err, encoding="utf-8", errors="replace")
            return "FAIL", f"Replay failed: project.bc -> project.o compile failed. See system_replay_project_compile.stderr", assumptions

    base_flags = ["-L", str(lib_dir), "-lkleeRuntest", f"-Wl,-rpath,{lib_dir}"] + args.clang_flags + sanitizer_flags

    def _link_driver(driver_c: Path, out_bin: Path, extra_flags: List[str]) -> Tuple[int, str, str]:
        # Put extra_flags AT THE END to satisfy dependency order
        cmd = [args.clang, "-O0", "-g", str(driver_c), str(project_o)] + base_flags + ["-o", str(out_bin)] + extra_flags
        rc, o, e, _ = run_cmd(cmd, cwd=src_root)
        return rc, o, e

    def _run_driver(bin_path: Path) -> Tuple[int, str, str]:
        env = os.environ.copy()
        env["KTEST_FILE"] = str(ktest_path)
        env["ASAN_OPTIONS"] = "abort_on_error=1:halt_on_error=1"
        rc, o, e, _ = run_cmd([str(bin_path)], cwd=src_root, timeout=20, env=env)
        return rc, o, e

    def _looks_like_crash(rc: int, out_s: str, err_s: str) -> bool:
        hay = (out_s or "") + "\n" + (err_s or "")
        if "BUG_ASSERT" in hay: return True
        if "klee_assert" in hay and "failed" in hay: return True
        if "Assertion" in hay and "failed" in hay: return True
        if "AddressSanitizer" in hay or "heap-buffer-overflow" in hay or "global-buffer-overflow" in hay: return True
        if "UndefinedBehaviorSanitizer" in hay or "runtime error:" in hay: return True
        if "Segmentation fault" in hay or "SIGSEGV" in hay: return True
        if rc == -11 or rc == 139: return True
        if "double free or corruption" in hay: return True
        if "stack smashing detected" in hay: return True
        if "Aborted" in hay and rc != 0: return True
        return False

    strict_driver_c = work_dir / "system_driver_strict.c"
    strict_driver_bin = work_dir / "system_driver_strict.exe"
    strict_driver_c.write_text(strict_src, encoding="utf-8")

    # Start with flags learned from previous runs to avoid re-discovery loop
    extra_flags: List[str] = list(_LEARNED_LINKER_FLAGS)
    link_err_last = ""
    
    for attempt in range(6):
        rc_link, o_link, e_link = _link_driver(strict_driver_c, strict_driver_bin, extra_flags)
        
        if rc_link == 0:
            # Success: Persist any new flags we used
            for f in extra_flags:
                if f not in _LEARNED_LINKER_FLAGS:
                    _LEARNED_LINKER_FLAGS.append(f)

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

        link_err_last = e_link or link_err_last
        err_lower = (e_link or "").lower()
        new_flags = []
        
        # Heuristics to auto-add flags
        if ("pthread" in err_lower) and ("-lpthread" not in extra_flags): new_flags.append("-lpthread")
        if (re.search(r"undefined reference to `(pow|floor|ceil|sin|cos|sqrt|log|exp)", err_lower)) and ("-lm" not in extra_flags): new_flags.append("-lm")
        if (re.search(r"undefined reference to `(inflate|deflate|crc32|gz)", err_lower)) and ("-lz" not in extra_flags): new_flags.append("-lz")
        if ("lzma" in err_lower) and ("-llzma" not in extra_flags): new_flags.append("-llzma")
        if ("dlopen" in err_lower or "dlsym" in err_lower) and ("-ldl" not in extra_flags): new_flags.append("-ldl")
        if ("clock_gettime" in err_lower) and ("-lrt" not in extra_flags): new_flags.append("-lrt")

        if not new_flags:
            # We failed, and we have no idea what else to add.
            # Print the error so the user knows WHY -lz didn't work (e.g. library missing).
            if extra_flags:
                print(f"  [!] Replay Link Failed despite flags {extra_flags}. Error snippet:\n      {e_link.strip().splitlines()[-1]}")
            break 
        
        print(f"  [i] Auto-Linker: Detected missing symbols. Injecting flags: {new_flags}")
        extra_flags.extend(new_flags)

    return "FAIL", (
        "STRICT REPLAY link failed. Validation requires real libraries; stubs are not permitted.\n"
        f"Last Linker Error:\n{link_err_last}\n"
        "See system_replay_link_strict.stderr for details."
    ), assumptions

def verify_rescue_eligibility(run_dir: Path, klee_log: str, harness_path: Path) -> bool:
    match = re.search(r"harness\.c:(\d+):\s*memory error", klee_log)
    if not match:
        match = re.search(r"harness\.c:(\d+):\s*.*?out of bound pointer", klee_log)
    if not match: return False
    crash_line_num = int(match.group(1))
    if not harness_path.exists(): return False
    try:
        lines = harness_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    except Exception: return False
    if crash_line_num < 1 or crash_line_num > len(lines): return False
    crashing_code = lines[crash_line_num - 1].strip()
    if "CHECK_READ" in crashing_code:
        print(f"  [i] Rescue Verified: Crash at line {crash_line_num} matches 'CHECK_READ'.")
        return True
    return False

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
                    if rc_run == 125: return "INVALID_HARNESS", "SKIPPED: Harness Assumption Violated during Replay (Out of Model)."
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
    start = time.monotonic()
    proc = subprocess.Popen(
        cmd, 
        stdout=subprocess.PIPE, 
        stderr=subprocess.STDOUT, 
        text=True, 
        bufsize=1 
    )
    captured_log = []
    try:
        for line in proc.stdout:
            sys.stdout.write(f"      [KLEE] {line}") 
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
    """Best-effort extraction of the first valid JSON object from an LLM response."""
    s = (text or "").strip()

    # Prefer fenced json blocks anywhere in the text
    m = re.search(r"```\s*(?:json)?\s*(\{.*?\})\s*```", s, flags=re.DOTALL | re.IGNORECASE)
    if m:
        return m.group(1)

    # Fall back to finding the first decodable JSON object using the decoder
    dec = json.JSONDecoder()
    for i, ch in enumerate(s):
        if ch != "{": 
            continue
        try:
            obj, end = dec.raw_decode(s[i:])
            # Re-serialize to canonical JSON text
            return json.dumps(obj)
        except Exception:
            continue

    # Last resort: naive brace slice (may fail, but keeps old behavior)
    start_idx = s.find("{")
    end_idx = s.rfind("}")
    if start_idx == -1 or end_idx == -1 or end_idx < start_idx:
        return s
    return s[start_idx:end_idx + 1]

def call_llm_json(system_prompt: str, user_prompt: str, out_dir: Path, tag: str) -> Dict[str, Any]:
    ensure_dir(out_dir)
    messages = [{"role": "system", "content": system_prompt}, {"role": "user", "content": user_prompt}]
    (out_dir / f"{tag}_messages.json").write_text(json.dumps(messages, indent=2), encoding="utf-8")
    raw, usage = llm_chat(messages, spec_id=tag)
    update_token_stats(usage)
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
    meta: Dict[str, Any] = {}
    s = (raw_response or "").strip()
    clean_s = s
    if s.startswith("```") and s.endswith("```"):
        lines = s.splitlines()
        if len(lines) >= 2:
            clean_s = "\n".join(lines[1:-1]).strip()
    if clean_s.startswith("{") and clean_s.endswith("}"):
        try:
            obj = json.loads(clean_s)
        except Exception:
            obj = None
        if isinstance(obj, dict):
            meta = obj
            for key in ("harness_c", "harness", "harness_code", "code", "c_code"):
                val = obj.get(key)
                if isinstance(val, str) and val.strip():
                    extracted = extract_c_code(val)
                    if extracted:
                        return extracted, meta
                    if val.lstrip().startswith("#include") or ("int main" in val):
                        return val.strip(), meta
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
    # Standard inclusions
    top_injections = []
    if "<klee/klee.h>" not in hsrc:
        top_injections.append("#include <klee/klee.h>")
        
        
    forced_headers = ["<stddef.h>", "<string.h>", "<stdlib.h>", "<stdint.h>", "<assert.h>", "<stdbool.h>", "<stdio.h>"]
    for h in forced_headers:
        if h not in hsrc:
            top_injections.append(f"#include {h}")

    top_injections.append("#include <pthread.h>")
    injections = []

   # ---------------------------------------------------------
    # [CRITICAL FIX] Robust pthread_once Shim
    # ---------------------------------------------------------
    # 1. Defines a real function 'pthread_once' to satisfy the linker.
    # 2. Uses a simple address cache to ensure init_routine runs exactly once.
    # 3. Avoids dereferencing the opaque pthread_once_t* pointer (preventing type errors).
    # 4. [FIX] Removed #ifdef __KLEE__ guard so it is ALWAYS compiled.
    # ---------------------------------------------------------
    injections.append("""
/* [Auto-Fix] Concrete pthread_once for KLEE linking */
/* #ifdef __KLEE__ (Removed to ensure linkage) */
#ifdef __cplusplus
extern "C" {
#endif

#ifndef KLEE_ONCE_CACHE_SIZE
#define KLEE_ONCE_CACHE_SIZE 64
#endif

static void* _klee_once_seen[KLEE_ONCE_CACHE_SIZE];
static int _klee_once_count = 0;

/* Strong definition to override library/POSIX weak symbols */
int pthread_once(pthread_once_t *once_control, void (*init_routine)(void)) {
    // Check cache for this control pointer
    for (int i = 0; i < _klee_once_count; i++) {
        if (_klee_once_seen[i] == (void*)once_control) {
            return 0; // Already initialized
        }
    }
    // Not found: Run init
    if (init_routine) init_routine();

    // Mark seen
    if (_klee_once_count < KLEE_ONCE_CACHE_SIZE) {
        _klee_once_seen[_klee_once_count++] = (void*)once_control;
    }
    return 0;
}
#ifdef __cplusplus
}
#endif
/* #endif */
""")

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
/* [Auto-Fix] Concrete bcmp for KLEE linking */
#ifndef bcmp
int bcmp(const void *s1, const void *s2, size_t n) {
    return memcmp(s1, s2, n);
}
#endif
""")

    # Combine: Top Headers + Helper Stubs + Original Source
    return "\n".join(top_injections) + "\n" + "\n".join(injections) + "\n" + hsrc


def ensure_klee_api_decls(hsrc: str) -> str:
    """Deterministically ensure harness compiles when it uses KLEE APIs.

    We prefer including <klee/klee.h> (works when include paths are correct).
    As a fallback, we also inject minimal prototypes guarded by __KLEE__ to avoid
    conflicting with the real header if it is present.
    """
    if ("klee_make_symbolic" not in hsrc) and ("klee_assume" not in hsrc) and ("klee_assert" not in hsrc):
        return hsrc

    # If already has the header or our shim, do nothing.
    if ("<klee/klee.h>" in hsrc) or ("/* STAILOR: KLEE API shim */" in hsrc):
        return hsrc

    shim = (
        "/* STAILOR: KLEE API shim */\n"
        "#include <klee/klee.h>\n"
        "#ifdef __KLEE__\n"
        "extern void klee_make_symbolic(void *addr, size_t nbytes, const char *name);\n"
        "extern void klee_assume(uintptr_t condition);\n"
        "extern void klee_assert(uintptr_t condition);\n"
        "#endif\n\n"
    )
    return inject_at_top(hsrc, shim)

def _pick_llvm_link(explicit: Optional[str]) -> Optional[str]:
    if explicit and shutil.which(explicit): return explicit
    candidates = ["llvm-link-14", "llvm-link-14.0", "llvm-link"]
    for cand in candidates:
        if shutil.which(cand): 
            return cand
    return None

def compile_harness_to_bc(args: argparse.Namespace, src_root: Path, harness_c: Path, out_bc: Path, project_bc: Optional[Path]) -> Tuple[bool, str, Path]:
    defined_symbols = set()
    if project_bc and project_bc.exists():
        nm_tool = shutil.which("llvm-nm") or shutil.which("nm")
        if nm_tool:
            nm_cmd = [nm_tool, "--defined-only", "--format=just-symbols", str(project_bc)]
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

    if harness_c.exists() and defined_symbols:
        try:
            src = harness_c.read_text(encoding="utf-8", errors="replace")
            original_src = src
            func_pattern = re.compile(r"(?m)(^\s*(?:[\w\*]+\s+)+)(\w+)(\s*\([^)]*\)\s*\{)")
            def collision_replacer(match):
                ret, name, rest = match.groups()
                if name == "main": return match.group(0)
                if name in defined_symbols:
                    print(f"  [i] Auto-Repair: Renaming colliding stub '{name}' to 'stub_{name}'")
                    return f"{ret}stub_{name}{rest}"
                return match.group(0)
            new_src = re.sub(func_pattern, collision_replacer, src)
            if new_src != original_src:
                harness_c.write_text(new_src, encoding="utf-8")
        except Exception as e:
            print(f"  [!] Warning: Generic auto-repair failed: {e}")

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
    try:
        plan = read_json(plan_path)
        source_code = ctx.get("enclosing_function", "")
        entry_args = plan.get("entrypoint", {}).get("args", [])
        constraints = plan.get("constraints", [])
        for arg in entry_args:
            name = arg.get("name")
            val = str(arg.get("value", "")).strip()
            if val in ["NULL", "0", "nullptr"]:
                pattern = re.compile(rf"if\s*\(\s*(!\s*{name}\b|{name}\b\s*==\s*NULL)", re.IGNORECASE)
                if pattern.search(source_code):
                    return False, (
                        f"LOGIC ERROR: Argument '{name}' is set to {val}, but target function "
                        f"has an early-exit guard (e.g., 'if ({name} == NULL)'). "
                        f"Bug is unreachable. Set '{name}' to a valid pointer."
                    )
        if "120" in (args.rule_id or "") or "125" in (args.rule_id or ""):
            for constr in constraints:
                c_str = str(constr).lower()
                if (">=" in c_str or ">" in c_str) and any(x in c_str for x in ["len", "size", "count"]):
                    return False, (
                        f"CONSTRAINT CONFLICT: '{constr}' enforces buffer safety (size >= X). "
                        f"To trigger OOB, you usually need size < X. Remove this constraint."
                    )
    except Exception as e:
        print(f"  [!] DCV In-Memory Check Warning: {e}")

    dcv_script = SCRIPT_DIR / "validate_plan_contract.py"
    if not dcv_script.exists(): 
        return True, "Passed (No external validator found)"

    cmd = [sys.executable, str(dcv_script), "--plan", str(plan_path), 
           "--spec", ctx["spec_path"], "--project-name", args.project_id]
    if args.rule_id:
        cmd.extend(["--rule-id", args.rule_id])
    strat = ((ctx.get("strategy") or {}).get("name") or "")
    if strat:
        cmd.extend(["--strategy", strat])
    if ctx.get("fact_pack_path"): 
        cmd.extend(["--fact-pack", ctx["fact_pack_path"]])
    rc, out, err, _ = run_cmd(cmd)
    if rc != 0: 
        return False, f"Rule-Based Validator Rejected the Model:\n{out}\n{err}"
    return True, "Plan Validated Successfully."

# ---------------- CONTEXT BUILD ----------------

def build_context(sa_out_dir: Path, src_root: Path, spec_path: Path, vul_file: str, vul_line: int, ctx_dir: Path) -> Dict[str, Any]:
    ensure_dir(ctx_dir)
    spec = read_json(spec_path)
    if spec is None:
        print(f"[!] Critical Error: Could not load spec file from: {spec_path}")
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
_cmp_inv = { "<":  ">=", "<=": ">", ">":  "<=", ">=": "<" }
_simple_cmp_re = re.compile(r"^\s*(?P<a>.+?)\s*(?P<op><=|<|>=|>)\s*(?P<b>.+?)\s*$")

def invert_simple_comparison(cond: str) -> str | None:
    m = _simple_cmp_re.match(cond.strip())
    if not m: return None
    a, op, b = m.group("a").strip(), m.group("op"), m.group("b").strip()
    inv = _cmp_inv.get(op)
    if not inv: return None
    return f"{a} {inv} {b}"

def infer_sink_kind(ctx: Dict[str, Any], placement_target: str) -> str:
    s = (ctx.get("vul_statement_text", "") or "") + "\n" + (placement_target or "")
    if re.search(r"\b(memcmp|memcpy|memmove|bcmp)\s*\(", s): return "memfunc"
    if re.search(r"\[[^\]]*\blen\b[^\]]*\]", s) or re.search(r"->\w+\s*\[\s*len\s*\]", s): return "index"
    return "unknown"

def fix_bug_polarity(assert_obj: Dict[str, Any], ctx: Dict[str, Any], rule_id: str) -> Dict[str, Any]:
    if assert_obj.get("kind") != "bug": return assert_obj
    cond = (assert_obj.get("condition") or "").strip()
    rationale = (assert_obj.get("rationale") or "").lower()
    is_oob_rule = any(tag in rule_id for tag in ["oob", "memfunc", "overflow", "bounds"])
    is_safety_rationale = any(x in rationale for x in ["safety", "precondition", "valid when"])
    if is_oob_rule or is_safety_rationale:
        if re.search(r"\b(<|<=)\b", cond) and not re.search(r"\b(>|>=|==|!=)\b", cond):
            inv = invert_simple_comparison(cond)
            if inv:
                assert_obj["condition"] = inv
                assert_obj["rationale"] = rationale + " [Auto-Fix: Inverted safety precondition based on Rule ID]"
                return assert_obj
    return assert_obj

def _infer_len_variable(plan: Dict[str, Any]) -> str:
    args = plan.get("entrypoint", {}).get("arguments", [])
    for arg in args:
        if any(t in arg.get("type", "") for t in ["int", "size_t", "unsigned"]) and \
           any(n in arg.get("name", "") for n in ["len", "size", "n", "count"]):
            return arg.get("name")
    return "len"

def _bind_placeholders(assumptions: List[Dict], len_var: str) -> List[Dict]:
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
    p = deepcopy(plan)
    vcfg = (policy or {}).get("validation", {}) or {}

    if src_root:
        inst_list = p.get("instrumentation", [])
        if isinstance(inst_list, list):
            src_root_abs = src_root.resolve()
            name_map = {}
            try:
                for path in src_root_abs.rglob("*"):
                    if path.is_file() and path.suffix in [".c", ".h", ".cpp", ".cc"]:
                        name_map[path.name] = path.relative_to(src_root_abs)
            except Exception: pass
            for instr in inst_list:
                fpath = str(instr.get("file", "")).strip()
                if not fpath: continue
                path_obj = Path(fpath)
                if path_obj.is_absolute():
                    try:
                        instr["file"] = str(path_obj.resolve().relative_to(src_root_abs))
                        continue
                    except ValueError: pass
                check_path = src_root_abs / fpath
                if not check_path.exists():
                    candidate = name_map.get(path_obj.name)
                    if candidate:
                        print(f"  [i] Auto-Correct: Fixed broken path: '{fpath}' -> '{candidate}'")
                        instr["file"] = str(candidate)

    assertions = p.get("assertions") or []
    if isinstance(assertions, list) and assertions:
        norm = [fix_bug_polarity(deepcopy(a), ctx, rule_id) for a in assertions]
        p["assertions"] = sorted(norm, key=lambda x: _KIND_ORDER.get(x.get("kind", ""), 9))

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

    rule_excs = set(vcfg.get("exceptions_by_rule", {}).get(rule_id, []) or [])
    spec_excs = set(vcfg.get("exceptions_by_spec", {}).get(spec_stem, []) or [])
    if "HASH_COLLISION" in (rule_excs | spec_excs):
        safe_const = str(vcfg.get("exception_detectors", {}).get("HASH_COLLISION", {}).get("constant_return_value", "1"))
        target_hashes = set(vcfg.get("hash_function_names", []))
        if target_hashes:
            sc = p.setdefault("stub_contracts", [])
            contract_map = {c.get("function"): c for c in sc}
            for fname in target_hashes:
                if fname not in contract_map:
                    sc.append({
                        "function": fname,
                        "stub_kind": "nondet",
                        "reason": "Auto-injected hash collision strategy",
                        "constraints": [f"return {safe_const};"],
                        "exception": "HASH_COLLISION"
                    })
            stubs = p.setdefault("embedding_plan", {}).setdefault("stub_instead_of_embed", [])
            stub_map = {s.get("name"): s for s in stubs if isinstance(s, dict) and s.get("name")}
            for fname in sorted(target_hashes):
                if fname not in stub_map:
                    stubs.append({"name": fname, "strategy": f"constant_return_{safe_const}", "notes": "[Auto-Inject HASH_COLLISION]"})
            contracts = p.setdefault("stub_contracts", [])
            contract_map = {c.get("function"): c for c in contracts}
            for fname in target_hashes:
                if fname not in contract_map:
                    contracts.append({
                        "function": fname,
                        "stub_kind": "nondet",
                        "reason": "Auto-injected hash collision strategy",
                        "constraints": [f"return {safe_const};"],
                        "exception": "HASH_COLLISION" 
                    })

    inst_list = p.get("instrumentation", [])
    if isinstance(inst_list, list):
        for instr in inst_list:
            if isinstance(instr, dict) and "code" in instr:
                if "extern void klee_assert" in instr["code"]:
                    instr["code"] = instr["code"].replace(
                        "extern void klee_assert(int);", 
                        "#include <klee/klee.h>"
                    )
    if project_bc_path and project_bc_path.exists():
        try:
            defined_syms = _project_defined_symbols(project_bc_path, project_bc_path.parent)
            stub_list = p.get("stub_contracts", [])
            if isinstance(stub_list, list):
                for s in stub_list:
                    if isinstance(s, dict):
                        fname = s.get("function")
                        if fname in defined_syms:
                            s["stub_kind"] = "ignore"
        except Exception as e:
            print(f"[!] Warning: Could not check symbols in project.bc: {e}")

    strategy_name = (ctx.get("strategy") or {}).get("name", "")
    crash_strategies = ["OOB_WRITE", "BUFFER_OVERFLOW", "UAF", "DOUBLE_FREE"]
    predicate_strategies = ["OOB_READ", "BUFFER_OVERREAD", "INT_OVERFLOW"]

    if strategy_name in crash_strategies or strategy_name in predicate_strategies:
        instr_list = p.setdefault("instrumentation", [])
        
        # [FIXED] Updated Safe Line Finder to use the ROBUST 'fix_c_insertion_point'
        # logic instead of the weak forward-scan.
        def _find_safe_line_robust(fname: str, start_line: int) -> int:
            if not src_root: return start_line
            # We assume out_dir is unavailable here, so we pass None
            return fix_c_insertion_point(src_root, fname, start_line)

        if strategy_name in crash_strategies:
            safe_line = _find_safe_line_robust(ctx.get("vul_file"), ctx.get("vul_line"))
            
            has_bug = any("BUG_ASSERT" in i.get("code", "") for i in instr_list)
            if not has_bug:
                print(f"  [i] Auto-Correct: Injecting missing BUG_ASSERT(0) for {strategy_name} at L{safe_line}.")
                instr_list.append({
                    "file": ctx.get("vul_file"), "line": safe_line, "kind": "insert_after", "code": "BUG_ASSERT(0);"
                })
            has_reach = any("REACH_ASSERT" in i.get("code", "") for i in instr_list)
            if not has_reach:
                print(f"  [i] Auto-Correct: Injecting missing REACH_ASSERT for {strategy_name} at L{safe_line}.")
                instr_list.append({
                    "file": ctx.get("vul_file"), "line": safe_line, "kind": "insert_after", "code": "REACH_ASSERT();"
                })
        else:
            # Predicate strategies usually insert BEFORE
            # For OOB_READ, we want to insert CHECK_READ() before the line.
            # fix_c_insertion_point returns the start of the previous statement, 
            # effectively finding a safe "before" spot.
            safe_line = _find_safe_line_robust(ctx.get("vul_file"), ctx.get("vul_line"))
            
            has_reach = any("REACH_ASSERT" in i.get("code", "") for i in instr_list)
            if not has_reach:
                instr_list.append({
                    "file": ctx.get("vul_file"), "line": safe_line, "kind": "insert_before", "code": "REACH_ASSERT();"
                })
        
        has_defs = any("#define BUG_ASSERT" in i.get("code", "") for i in instr_list)
        if not has_defs:
             instr_list.append({
                 "file": ctx.get("vul_file"),
                 "line": 1,
                 "kind": "insert_before",
                 "code": (
                     "#include <stdlib.h>\n#include <assert.h>\n#include <klee/klee.h>\n"
                     "#ifndef BUG_ASSERT\n#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\n#endif\n"
                     "#ifndef REACH_ASSERT\n#define REACH_ASSERT() klee_assert(0 && \"REACH_ASSERT\")\n#endif\n"
                 )
             })

    if strategy_name in ["OOB_WRITE", "OOB_READ", "BUFFER_OVERFLOW", "BUFFER_OVERREAD"]:
        sym_inputs = p.get("symbolic_inputs", [])
        if isinstance(sym_inputs, list):
            for sym in sym_inputs:
                sz = sym.get("allocation_size")
                if isinstance(sz, int) and sz < 256:
                    print(f"  [i] Auto-Correct: Boosting allocation_size from {sz} to 256.")
                    sym["allocation_size"] = 256
                    sym["allocation_strategy"] = "concrete_capacity_256"

    p.setdefault("frozen_meta", {})
    p["frozen_meta"]["canonicalized"] = True
    return p

# ---------------------------------------------------------
# [CONTRIBUTION] ROBUST ZERO-DAY ENTRYPOINT DISCOVERY
# ---------------------------------------------------------

def trace_public_entrypoint(
    src_root: Path,
    target_func: str,
    depth_limit: int = 5,
    verify_callback=None,
    candidate_files: Optional[List[Path]] = None,
) -> Optional[Dict[str, Any]]:
    """
    [ZERO-DAY ENGINE]
    Reverse-callgraph BFS to find a PUBLIC, NON-TEST entrypoint that can reach `target_func`.

    Key optimizations:
    - If `candidate_files` is provided (e.g., from compile_commands.json), search ONLY those TUs.
    - If `verify_callback` is provided, use it to confirm the symbol is exported/linkable.
    - Filters C keywords / control-flow tokens / fuzzer & test artifacts.
    """
    print(f"  [i] Zero-Day Discovery: Tracing public reachability for '{target_func}'...")

    queue = [(target_func, [target_func])]
    visited = {target_func}

    def_pat = re.compile(r"(?m)^[ \t]*(static\s+)?([\w\*\s:<>\~]+)\b(\w+)\s*\(([^;\{]*)\)\s*\{")

    BLOCKLIST = set(C_KEYWORDS) | {
        "LLVMFuzzerTestOneInput", "LLVMFuzzerInitialize", "main",
    }

    # Pre-read candidate files (fast path)
    file_text: Dict[Path, str] = {}
    if candidate_files:
        for fp in candidate_files:
            try:
                file_text[fp] = fp.read_text(encoding="utf-8", errors="replace")
            except Exception:
                continue

    def files_mentioning(sym: str) -> List[Path]:
        if file_text:
            hits = []
            for fp, content in file_text.items():
                if re.search(rf"\b{re.escape(sym)}\b", content):
                    hits.append(fp)
            return hits

        # Fallback: whole tree grep
        cmd = ["grep", "-r", "-l", rf"\b{sym}\b", str(src_root)]
        rc, out, _, _ = run_cmd(cmd)
        if rc != 0:
            return []
        return [Path(p) for p in out.strip().splitlines() if p.endswith((".c", ".cc", ".cpp", ".cxx"))]

    best: Optional[Dict[str, Any]] = None

    for _depth in range(depth_limit):
        if not queue:
            break

        next_queue = []
        for curr_func, path in queue:
            for fpath in files_mentioning(curr_func):
                content = file_text.get(fpath)
                if content is None:
                    try:
                        content = fpath.read_text(encoding="utf-8", errors="replace")
                    except Exception:
                        continue

                for m in def_pat.finditer(content):
                    is_static = bool(m.group(1))
                    caller_name = m.group(3)

                    if caller_name in visited or caller_name == curr_func:
                        continue
                    if caller_name in BLOCKLIST:
                        continue
                    low = caller_name.lower()
                    if "test" in low or "mock" in low or "fuzz" in low:
                        continue

                    # Verify the call exists in a window following the definition.
                    start = m.end()
                    body_snippet = content[start:start + 12000]
                    if not re.search(rf"\b{re.escape(curr_func)}\s*\(", body_snippet):
                        continue

                    new_path = [caller_name] + path

                    # Public-ness heuristic: not static, not underscore-prefixed
                    if not is_static and not caller_name.startswith("_"):
                        is_valid, _msg = (True, "")
                        if verify_callback:
                            is_valid, _msg = verify_callback(caller_name)

                        if is_valid:
                            sig = f"{m.group(2).strip()} {caller_name}({m.group(4).strip()})"
                            cand = {"name": caller_name, "signature": sig, "chain": new_path}
                            print(f"  [+] Reachability Candidate: {' -> '.join(new_path)}")
                            if best is None or len(new_path) < len(best["chain"]):
                                best = cand
                                # Early-exit if chain is already short
                                if len(new_path) <= 3:
                                    return best

                    visited.add(caller_name)
                    next_queue.append((caller_name, new_path))

        queue = next_queue

    if best:
        print(f"  [i] Selected Best Chain: {' -> '.join(best['chain'])}")
        return best

    print(f"  [!] Zero-Day Discovery: Could not find public path to '{target_func}' within depth {depth_limit}.")
    return None
# ---------------------------------------------------------
# [CONTRIBUTION] QL-DRIVEN ASSERTION VALIDATOR
# ---------------------------------------------------------
QL_SEMANTICS = {
    "memcmp": 2, "bcmp": 2, "strncmp": 2, "strncasecmp": 2, 
    "memchr": 2, "strnstr": 2, "memscan": 2, "write": 2, "send": 2, "sendto": 2,
    "memcpy": 2, "memmove": 2, "memset": 2, "strncpy": 2, "strncat": 2,
    "strlcpy": 2, "strlcat": 2, "recv": 2, "read": 2, "pread": 2,
    "fgets": 1, "snprintf": 1, "vsnprintf": 1
}

def extract_call_arguments(stmt: str, func_name: str) -> List[str]:
    start = stmt.find(f"{func_name}(")
    if start == -1: return []
    args = []
    current_arg = []
    depth = 0
    in_str = False
    idx = start + len(func_name) + 1
    while idx < len(stmt):
        char = stmt[idx]
        if char == '"' and stmt[idx-1] != '\\': in_str = not in_str
        if not in_str:
            if char == '(': depth += 1
            elif char == ')':
                if depth == 0:
                    args.append("".join(current_arg).strip())
                    return args 
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
    Validates assertions but is PERMISSIVE.
    It does NOT rewrite assertion logic (e.g. memcmp vs len) because specific bugs 
    often require content checks. It only fixes structural issues (line placement).
    """
    inst_list = plan.get("instrumentation", [])
    if not inst_list: return plan

    # [FIX] REMOVED the "detected_sink" and "rewrite to len > 1" logic entirely.
    # We trust the LLM's logic (whether it uses memcmp or array access).
    
    # 1. Structural Alignment Only (Move out of comments/braces)
    for instr in inst_list:
        if "BUG_ASSERT" in instr.get("code", ""):
            orig_line = int(instr.get("line", 0))
            if orig_line <= 0: continue
            
            try:
                fpath = find_source_file(src_root, vul_file)
                content = fpath.read_text(errors="replace").splitlines()
                # Check bounds
                if orig_line - 1 >= len(content): continue
                
                target_text = content[orig_line - 1].strip()
                
                # Check if line is a comment or structural token
                # This ensures we don't inject assertions into invalid C syntax contexts
                is_weak = (not target_text) or target_text.startswith(("//", "/*", "*")) or target_text in ["}", "{", "else", "do {"]
                
                if is_weak:
                    best_line = orig_line
                    # Scan forward up to 6 lines for a real statement (ending in ;)
                    for offset in range(1, 7):
                        idx = orig_line + offset - 1
                        if idx < len(content) and ";" in content[idx] and not content[idx].strip().startswith("//"):
                            best_line = orig_line + offset
                            break
                    
                    if best_line != orig_line:
                        instr["line"] = best_line
                        print(f"  [i] Auto-Align: Moved assertion from L{orig_line} to L{best_line} (Better Context)")
            except Exception:
                pass

    return plan

def fix_c_insertion_point(src_root: Path, vul_file: str, target_line: int, out_dir: Path = None) -> int:
    """
    Robust insertion point finder. 
    Moves the insertion cursor UPWARDS until it finds a safe break point 
    (End of previous statement or block).
    Handles multi-line function calls and conditions by checking for line-continuation tokens.
    """
    # 1. Robust File Resolution
    found_path = None
    
    # Search order: Explicit path -> Context cache -> Recursive search
    candidates = [src_root / vul_file, Path(vul_file)]
    if out_dir: candidates.insert(0, out_dir / "ctx" / Path(vul_file).name)
    
    for p in candidates:
        if p.exists() and p.is_file():
            found_path = p
            break
            
    # Fallback: Recursive search in src_root (handles 'dict.c' vs 'src/dict.c' mismatches)
    if not found_path and src_root.exists():
        fname = Path(vul_file).name
        matches = list(src_root.rglob(fname))
        if matches:
            # Prefer exact match or shortest path
            found_path = sorted(matches, key=lambda x: len(str(x)))[0]

    if not found_path:
        print(f"  [!] Sanitize Warning: Source file '{vul_file}' not found. Cannot adjust insertion point.")
        return target_line

    try:
        content = found_path.read_text(encoding="utf-8", errors="replace")
    except Exception as e:
        print(f"  [!] Sanitize Warning: Could not read {found_path}: {e}")
        return target_line

    lines = content.splitlines()
    curr_idx = target_line - 1 
    
    if curr_idx < 0 or curr_idx >= len(lines):
        return target_line

    # 2. Backward Scan for Safe Insertion Point
    scan_limit = 50
    while scan_limit > 0 and curr_idx > 0:
        prev_line_raw = lines[curr_idx - 1]
        
        # Strip C comments (//... and /*...*/) and whitespace
        # Note: Simple regex, doesn't handle strings like " // " perfectly but sufficient for code structure
        prev_line_clean = re.sub(r'//.*', '', prev_line_raw)
        prev_line_clean = re.sub(r'/\*.*?\*/', '', prev_line_clean).strip()
        
        # If line is empty after cleaning, keep going up
        if not prev_line_clean:
            curr_idx -= 1
            scan_limit -= 1
            continue

        # Check for Line Continuations
        # If the previous line ends with any of these, the statement is NOT finished.
        # Operators: , . -> ( [ { = + - * / % & | ^ ! ? : < >
        # Logical: && ||
        continuation_regex = r'(?:[,\.\->(\[\{=+\-*/%&|^!?:<>]|&&|\|\|)\s*$'
        
        if re.search(continuation_regex, prev_line_clean):
            curr_idx -= 1
            continue
            
        # Check for Control Flow headers (if/while/for) that don't have a body start yet
        # e.g., "if (condition)" (without { or ;) -> implies next line is body/continuation
        if re.match(r'^\s*(if|while|for|switch|else)\b', prev_line_clean):
            if not prev_line_clean.endswith((';', '{', '}')):
                curr_idx -= 1
                continue

        # If none of the above, we found a stable break point (e.g., ends in ; or })
        break
        
    safe_line = curr_idx + 1
    if safe_line != target_line:
        print(f"  [i] Syntax Safety: Moved insertion {target_line} -> {safe_line} (File: {found_path.name})")
        
    return safe_line

ENTRYPOINT_LINK_CACHE: Dict[str, bool] = {}



def verify_entrypoint_linkage(
    src_root: Path,
    entrypoint: str,
    args: argparse.Namespace,
    work_dir: Path
) -> Tuple[bool, str]:
    """
    [PHASE 1 VALIDATOR]
    Fast check for whether `entrypoint` is exported (public/linkable) from `project.bc`.

    Strategy:
      1) If `llvm-nm` is available, use it (FAST) to detect whether the symbol exists/defined.
      2) Fallback: compile+link a tiny harness against `project.bc` (SLOW but definitive).

    NOTE: Results are cached per-process in ENTRYPOINT_LINK_CACHE to avoid repeated work.
    """
    if not entrypoint:
        return False, "Empty entrypoint name"

    if entrypoint in ENTRYPOINT_LINK_CACHE:
        ok = ENTRYPOINT_LINK_CACHE[entrypoint]
        return ok, ("Cached: linkable" if ok else "Cached: not linkable")

    # If no bitcode is available yet, we cannot verify linkage.
    if not getattr(args, "project_bc", None) or not Path(args.project_bc).exists():
        ENTRYPOINT_LINK_CACHE[entrypoint] = True
        return True, "Skipped (No project.bc found)"

    bc = str(Path(args.project_bc).resolve())

    # ------------------------
    # (1) FAST PATH: llvm-nm
    # ------------------------
    nm = getattr(args, "llvm_nm", None)
    if nm:
        try:
            rc, out, err, _ = run_cmd([nm, bc], cwd=src_root)
            if rc == 0:
                # Typical output: "<addr> <type> <name>"
                # We treat 'T/t', 'W/w', 'D/d', 'B/b', 'R/r', 'V/v' as "defined-ish".
                defined_types = set("TtWwDdBbRrVv")
                for line in out.splitlines():
                    if not line.strip():
                        continue
                    parts = line.split()
                    if len(parts) < 2:
                        continue
                    name = parts[-1]
                    if name != entrypoint:
                        continue
                    sym_type = parts[-2] if len(parts) >= 2 else ""
                    if sym_type and sym_type[0] in defined_types:
                        ENTRYPOINT_LINK_CACHE[entrypoint] = True
                        return True, "Symbol is Public and Linkable. (llvm-nm)"
                # If found only as 'U' or not found at all: reject.
                # We also check 'U <name>' format where parts might be ["U","name"].
                for line in out.splitlines():
                    parts = line.split()
                    if parts == ["U", entrypoint] or (len(parts) >= 2 and parts[-1] == entrypoint and parts[-2] == "U"):
                        ENTRYPOINT_LINK_CACHE[entrypoint] = False
                        return False, f"LINKER FAILURE: '{entrypoint}' is undefined in project.bc (llvm-nm)"
        except Exception:
            pass  # fall through to slow path

    # ------------------------
    # (2) SLOW PATH: link check
    # ------------------------
    print(f"  [?] Verifying linkage for entrypoint '{entrypoint}' (link-check fallback)...")

    driver_src = f"""/* Linkage Verification Harness */
#include <stdio.h>
#ifdef __cplusplus
extern "C" {{
#endif
void {entrypoint}();
#ifdef __cplusplus
}}
#endif
int main() {{
    void (*p)() = {entrypoint};
    printf("Symbol found at: %p\n", (void*)p);
    return 0;
}}
"""

    check_dir = ensure_dir(Path(work_dir) / "link_check")
    driver_c = check_dir / f"check_{entrypoint}.c"
    driver_bin = check_dir / f"check_{entrypoint}.exe"
    driver_c.write_text(driver_src, encoding="utf-8")

    clang = getattr(args, "clang", "clang")
    flags = getattr(args, "clang_flags", []) or []
    cmd = [clang] + list(flags) + [
        str(driver_c),
        bc,
        "-o", str(driver_bin),
        "-lm", "-ldl", "-lpthread", "-lrt", "-lz",
    ]

    rc, out, err, _ = run_cmd(cmd, cwd=src_root)

    if rc != 0:
        if (f"undefined reference to `{entrypoint}'" in err) or (f"undefined reference to {entrypoint}" in err) or ("symbol not found" in err):
            ENTRYPOINT_LINK_CACHE[entrypoint] = False
            return False, (
                f"LINKER FAILURE: The function '{entrypoint}' is not exported by project.bc.\n"
                f"It is likely STATIC (private) or not compiled in.\n"
                f"Validation Command: {' '.join(cmd)}\n"
            )
        ENTRYPOINT_LINK_CACHE[entrypoint] = False
        return False, f"Linkage Verification Failed:\n{err[:500]}"

    ENTRYPOINT_LINK_CACHE[entrypoint] = True
    return True, "Symbol is Public and Linkable."

def discover_all_public_paths(
    src_root: Path, 
    target_func: str, 
    verify_callback=None,
    depth_limit: int = 5
) -> List[Dict[str, Any]]:
    """
    [ZERO-DAY ENGINE]
    Exhaustively finds ALL public, linkable entrypoints that reach 'target_func'.
    """
    print(f"  [i] Multi-Path Discovery: Mapping all public routes to '{target_func}'...")
    
    queue = [(target_func, [target_func])]
    visited = {target_func}
    valid_discoveries = []
    
    def_pat = re.compile(r"(?m)^[ \t]*(static\s+)?([\w\*\s]+)\b(\w+)\s*\(([^;\{]*)\)\s*\{")
    BLOCKLIST = {"if", "while", "for", "switch", "return", "sizeof", "main"}

    for depth in range(depth_limit):
        next_queue = []
        if not queue: break
        
        for curr_func, path in queue:
            # Grep for all files calling this function
            cmd = ["grep", "-r", "-l", f"\\b{curr_func}\\b", str(src_root)]
            rc, out, _, _ = run_cmd(cmd)
            if rc != 0: continue
            
            candidate_files = [Path(p) for p in out.strip().splitlines() if p.endswith((".c", ".cc", ".cpp"))]
            
            for fpath in candidate_files:
                try:
                    content = fpath.read_text(errors="replace")
                except: continue
                
                for m in def_pat.finditer(content):
                    is_static = bool(m.group(1))
                    caller_name = m.group(3)
                    
                    if caller_name in visited or caller_name in BLOCKLIST: continue
                    if "test" in caller_name.lower(): continue

                    # Confirm the call exists in the body
                    start = m.end()
                    if re.search(rf"\b{re.escape(curr_func)}\s*\(", content[start:start+8000]):
                        new_path = [caller_name] + path
                        
                        # If it's a public function (not static), test it as an entrypoint
                        if not is_static:
                            is_valid, _ = verify_callback(caller_name) if verify_callback else (False, "verify_callback not provided")
                            if is_valid:
                                print(f"      [+] Found Public Path: {' -> '.join(new_path)}")
                                valid_discoveries.append({
                                    "name": caller_name,
                                    "signature": f"{m.group(2).strip()} {caller_name}({m.group(4).strip()})",
                                    "chain": new_path,
                                    "depth": len(new_path)
                                })
                        
                        # Continue searching UP the tree from this caller
                        visited.add(caller_name)
                        next_queue.append((caller_name, new_path))
        
        queue = next_queue

    return valid_discoveries

def run_frozen_analysis(
    ctx: Dict[str, Any], args: argparse.Namespace, planner_prompt: str, 
    out_dir: Path, src_root: Path
) -> Dict[str, Any]:
    
    plan_path = out_dir / "frozen_plan.json"
    if plan_path.exists():
        print(f"\n[=] PHASE 1: SKIPPED (Provenance Re-Use)")
        print(f"  [i] Reusing locked Frozen Plan found at: {plan_path}")
        cached_plan = read_json(plan_path)
        return finalize_frozen_plan(cached_plan, ctx, args.rule_id, args.spec_stem, args.validation_policy_obj, project_bc_path=Path(args.project_bc) if args.project_bc else None, src_root=src_root)

    print(f"\n[=] PHASE 1: Frozen Context Analysis (Identifying Entrypoint & Logic)")
    ensure_dir(out_dir)
    history = []


    # [NEW] Restrict expensive caller-search to compiled translation units when possible.
    # --- Compile DB / TU restriction for pre-scan + wrapper discovery ---
    candidate_files: List[Path] = []
    compdb_path = load_compile_commands_path(src_root, args)
    if compdb_path:
        compdb = load_compile_commands_db(compdb_path)
        candidate_files = compile_db_source_files(src_root, compdb)

        # Guardrail: some compile DBs only contain CMake ABI probe files.
        # If we got too few TUs, disable restriction and fall back to whole-tree search.
        if candidate_files and len(candidate_files) < 5:
            print(f"  [!] TU restriction looks invalid (only {len(candidate_files)} TU(s) under src_root). Disabling TU restriction.")
            candidate_files = []

        if candidate_files:
            print(f"  [i] TU restriction enabled via compile_commands.json: {len(candidate_files)} files (path={compdb_path})")
            print(f"  [i] TU sample: {candidate_files[:5]}")

    smart_stub_guidance = ""
    try:
        vpath = Path(ctx['vul_file'])
        vul_file_rel = str(vpath.relative_to(src_root)) if vpath.is_absolute() else str(vpath)
        stub_hints = auto_discover_stub_candidates(src_root, vul_file_rel, args.rule_id or "")
        if stub_hints:
            smart_stub_guidance = f"\n\n{stub_hints}"
            print(f"  [i] Pre-computed Smart Stubbing Directives.")
    except Exception as e:
        print(f"  [!] Smart stub analysis warning: {e}")

    files_context = f"SOURCE CODE CONTEXT:\n{ctx['enclosing_function']}\n"
    history.append({"turn": 0, "content": "STRATEGY: Analyze spec -> 'shell' to verify call paths -> 'final_plan'."})
    max_iters = getattr(args, "frozen_max_turns", 30)
    turn_idx = 0
    consecutive_errors = 0

    while turn_idx < max_iters:
        print(f"  --- [Analysis Turn {turn_idx+1}/{max_iters}] ---")
        hist_txt = ""
        for h in history[-5:]:
            content = h if isinstance(h, str) else h.get("content", "")
            hist_txt += f"{content}\n\n"

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
            f"{files_context}\n"
            f"History:\n{hist_txt}\n"
            f"{anti_grep_msg}\n"
            f"\n[CRITICAL INSTRUCTION]:\n"
            f"1. STOP using 'grep' piped to 'head'. It hides the function body.\n"
            f"2. If you see a line number from a previous grep, IMMEDIATELY use 'read_file' (or assume context is above).\n"
            f"3. Do NOT search for the same term twice.\n"
            f"{smart_stub_guidance}"
            f"\nGOAL: Identify the Public Entrypoint and the bug-triggering (violating) predicate for BUG_ASSERT."
        )
        resp = call_llm_json(planner_prompt, user_msg, out_dir, f"frozen_iter{turn_idx:03d}")
        
        if "_llm_error" in resp:
            print(f"  [!] LLM JSON Parse Failed. Retrying...")
            history.append({"turn": turn_idx, "content": "SYSTEM ERROR: Your response was not valid JSON. You MUST output a single JSON block: ```json { ... } ```"})
            consecutive_errors += 1
            if consecutive_errors > 5: break
            continue

        action = resp.get("action")
        if not action:
            history.append({"turn": turn_idx, "content": "SYSTEM ERROR: JSON is missing the mandatory 'action' field."})
            consecutive_errors += 1
            if consecutive_errors > 5: break
            continue

        consecutive_errors = 0
        rationale = (resp.get("rationale") or "").strip()
        turn_hdr = f"ACTION: {action}\n" + (f"RATIONALE: {rationale}\n" if rationale else "")
        
        if action == "shell":
            log = ""
            for cmd in get_commands_list(resp):
                if any(x in cmd for x in ["rm ", "mv ", "wget", "curl", "ssh", "sudo"]):
                    log += f"$ {cmd}\n[SECURITY BLOCK] Command forbidden.\n"
                    continue
                # Block the "grep | head" anti-pattern: it hides context and burns turns.
                if ("grep" in cmd) and ("|" in cmd) and ("head" in cmd):
                    log += f"$ {cmd}\n[BLOCK] Do not pipe grep to head. Use read_file/sed or grep without head.\n"
                    continue

                print(f"  [$] Executing: {cmd}")
                try:
                    sanitize_shell_command(cmd)
                    rc, out, err, _ = run_cmd(cmd, cwd=src_root, timeout=10, use_shell=True)
                    log += f"$ {cmd}\nRC={rc}\nSTDOUT:\n{out[:2000]}\nSTDERR:\n{err[:1000]}\n"
                except Exception as e: 
                    log += f"Error: {e}\n"
            history.append({"turn": turn_idx, "content": turn_hdr + log})
            turn_idx += 1
            
        elif action == "lookup_symbols":
            res = perform_smart_lookup(src_root, resp.get("symbols", []))
            history.append({"turn": turn_idx, "content": turn_hdr + f"LOOKUP:\n{res[:4000]}"})
            turn_idx += 1
            
        elif action == "final_plan":
            raw_plan = resp.get("plan", {})
            print("  [i] Received 'final_plan'. Validating...")
            
            planned_entry = raw_plan.get("entrypoint", {}).get("name")
            banned_keywords = {
                "if", "else", "while", "for", "do", "switch", "case", "default", 
                "break", "continue", "return", "goto", "sizeof", "typeof", "void",
                "int", "char", "float", "double", "struct", "union", "enum", "static",
                "const", "unsigned", "signed", "volatile", "extern", "UNKNOWN"
            }
            if planned_entry in banned_keywords:
                msg = f"PLAN REJECTED: '{planned_entry}' is a C keyword."
                history.append({"turn": turn_idx, "content": turn_hdr + msg})
                turn_idx += 1
                continue
            if planned_entry and not re.match(r"^[a-zA-Z_][a-zA-Z0-9_]*$", planned_entry):
                msg = f"PLAN REJECTED: '{planned_entry}' is not a valid C function name."
                history.append({"turn": turn_idx, "content": turn_hdr + msg})
                turn_idx += 1
                continue

            # --- ZERO-DAY ROBUSTNESS: Concrete Linker Verification ---
            # Instead of guessing if it's static via grep, we try to LINK it.
            # If the linker fails, the Agent MUST pick another function.
            
            is_linkable, link_msg = verify_entrypoint_linkage(src_root, planned_entry, args, out_dir)
            
            if not is_linkable:
                print(f"  [!] Entrypoint '{planned_entry}' rejected by Linker.")
                
                # Auto-Discovery fallback: Try to find a wrapper before giving up
                print(f"  [i] Attempting to find public wrapper for private '{planned_entry}'...")
                link_cb = lambda name: verify_entrypoint_linkage(src_root, name, args, out_dir)
                discovery = trace_public_entrypoint(src_root, planned_entry, depth_limit=3, verify_callback=link_cb, candidate_files=candidate_files if candidate_files else None)
                
                if discovery:
                    new_ep = discovery["name"]
                    chain_str = " -> ".join(discovery['chain'])
                    print(f"  [i] Switching Entrypoint: {planned_entry} -> {new_ep} (Chain: {chain_str})")
                    
                    # Verify the NEW entrypoint links
                    ok_new, msg_new = verify_entrypoint_linkage(src_root, new_ep, args, out_dir)
                    if ok_new:
                        raw_plan["entrypoint"]["name"] = new_ep
                        raw_plan["entrypoint"]["signature"] = discovery["signature"]
                        raw_plan["entrypoint"]["arguments"] = [] 
                        
                        # [NEW] Inject the full chain into the notes so the Builder sees it
                        raw_plan["notes"] = (
                            f"Auto-Switched Entrypoint: '{new_ep}' was chosen because it calls '{planned_entry}'.\n"
                            f"Full Call Chain: {chain_str}\n"
                            f"The goal is still to trigger the bug in '{planned_entry}'."
                        )
                        # Store chain metadata for debugging
                        raw_plan["reachability_chain"] = discovery['chain']
                    else:
                        msg = f"PLAN REJECTED: Neither '{planned_entry}' nor its wrapper '{new_ep}' could be linked.\nLinker Error: {msg_new}"
                        history.append({"turn": turn_idx, "content": turn_hdr + msg})
                        turn_idx += 1
                        continue
                else:
                    # No wrapper found, and original didn't link. Hard Reject.
                    msg = (
                        f"PLAN REJECTED: The entrypoint '{planned_entry}' cannot be linked (it is likely static/private).\n"
                        f"Linker Output: {link_msg}\n"
                        f"ACTION: You must select a PUBLIC (exported) function that calls '{planned_entry}'."
                    )
                    history.append({"turn": turn_idx, "content": turn_hdr + msg})
                    turn_idx += 1
                    continue
            
            # If we get here, the entrypoint is valid and linkable. Proceed.
            print(f"  [+] Entrypoint '{raw_plan['entrypoint']['name']}' verified linkable.")
            # Even if linkable, prefer a more public wrapper (API-level) when available.
            link_cb = lambda name: verify_entrypoint_linkage(src_root, name, args, out_dir)

            planned_entry = raw_plan.get("entrypoint", {}).get("name")
            discovery = trace_public_entrypoint(
                src_root,
                planned_entry,
                depth_limit=4,
                verify_callback=link_cb,
                candidate_files=candidate_files if candidate_files else None
            )

            if discovery:
                new_ep = discovery["name"]
                # Heuristic: switch if wrapper looks "more public" than the current one
                # (declared in header OR located in include/ OR common API naming)
                def _looks_public(fn: str) -> bool:
                    return fn.startswith("xml") and ("TryOrFinish" not in fn)

                if new_ep != planned_entry and _looks_public(new_ep):
                    chain_str = " -> ".join(discovery["chain"])
                    print(f"  [i] Upgrading Entrypoint: {planned_entry} -> {new_ep} (Chain: {chain_str})")
                    raw_plan["entrypoint"]["name"] = new_ep
                    raw_plan["entrypoint"]["signature"] = discovery.get("signature", raw_plan["entrypoint"].get("signature", ""))
                    raw_plan["reachability_chain"] = discovery["chain"]


            raw_plan = validate_and_fix_assertions(src_root, ctx['vul_file'], raw_plan, args.rule_id or "")

            frozen_plan = finalize_frozen_plan(raw_plan, ctx, args.rule_id, args.spec_stem, args.validation_policy_obj, project_bc_path=Path(args.project_bc) if args.project_bc else None, src_root=src_root)

            if "instrumentation" in frozen_plan:
                for instr in frozen_plan["instrumentation"]:
                    if "BUG_ASSERT" in instr.get("code", "") or "REACH_ASSERT" in instr.get("code", ""):
                        orig_line = instr.get("line")
                        print(f"  [DEBUG] Checking syntax safety for BUG_ASSERT at line {orig_line}...")
                        if isinstance(orig_line, int):
                            safe_line = fix_c_insertion_point(src_root, ctx['vul_file'], orig_line, out_dir=out_dir)
                            if safe_line != orig_line:
                                print(f"  [i] Auto-Correct: Moved BUG_ASSERT from {orig_line} to {safe_line} (Syntax Safety).")
                                instr["line"] = safe_line

            temp_path = out_dir / "temp_plan.json"
            write_json(temp_path, frozen_plan)
            valid, msg = run_dcv(temp_path, ctx, args)
            
            if valid:
                print("  [+] Plan Validated Successfully.")
                write_json(out_dir / "frozen_plan.json", frozen_plan)
                history.append({"turn": turn_idx, "content": turn_hdr + "FINAL_PLAN_ACCEPTED"})
                return frozen_plan
            else:
                print(f"  [!] Plan Validation Failed.")
                history.append({"turn": turn_idx, "content": turn_hdr + f"VALIDATOR ERROR: {msg}"})
                turn_idx += 1
                
        else:
            history.append({"turn": turn_idx, "content": f"SYSTEM ERROR: Unknown action '{action}'."})
            turn_idx += 1

    print("[!] Phase 1 failed: No valid plan produced after max turns.")
    return {"plan_error": "Analysis Failed"}

# ---------------- KLEE UTILS ----------------
def check_for_assert_files(log_dir: Path) -> Tuple[bool, bool]:
    if not log_dir.exists(): return False, False
    bug_hit = False
    reach_hit = False
    for err_file in log_dir.glob("*.err"):
        content = err_file.read_text(errors="ignore").lower()
        if "bug_assert" in content: 
            bug_hit = True
            continue
        if "reach_assert" in content: 
            reach_hit = True
            continue
    return bug_hit, reach_hit

def check_crash_locality(log_text: str, target_file: str, target_line: int, window: int = 100) -> Tuple[bool, str]:
    target_path = Path(target_file)
    target_name = target_path.name
    regex = re.compile(r"KLEE: ERROR:\s*(.*?):(\d+):\s*(.*)", re.IGNORECASE)
    matches = regex.findall(log_text)
    if not matches:
        return False, "Could not determine crash source line from log."
    for fpath, lnum_str, msg in matches:
        fpath_obj = Path(fpath)
        fname = fpath_obj.name
        if fname in ["harness.c", "driver.c"] or "stub_" in fname:
             return False, f"HARNESS_CRASH: Ignored crash in test driver ({fname}:{lnum_str})"
        msg_s = (msg or "").strip().lower()
        if any(x in msg_s for x in ["klee_make_symbolic", "klee_assume", "wrong size", "concretized symbolic"]):
             return False, f"HARNESS_API_ERROR: {fname}:{lnum_str}: {msg_s}"
    lt = (log_text or "").lower()
    if "assertion fail" in lt and "bug_assert" in lt:
        return True, "Explicit BUG_ASSERT triggered (Oracle confirmed)"
    for fpath, lnum_str, msg in matches:
        fpath_obj = Path(fpath)
        fname = fpath_obj.name
        msg_lower = (msg or "").lower()
        try: lnum = int(lnum_str)
        except ValueError: continue
        if any(x in msg_lower for x in ["use after free", "double free", "free of alloca"]):
            return True, f"CRITICAL_HEAP_ERROR: {msg} at {fname}:{lnum} (Accepted Globally)"
        if fname != target_name: continue
        dist = abs(lnum - target_line)
        if dist <= window:
            return True, f"LOCAL_CRASH: {msg} at {fname}:{lnum} (Dist {dist} <= {window})"
    return False, f"REJECTED: Crash detected but outside locality window or in unrelated file."

def run_klee(bc_path: Path, klee: str, flags: List[str], timeout: int, log_dir: Path, idx: int, target_file: str = "", target_line: int = 0) -> Dict[str, Any]:
    ensure_dir(log_dir)
    out_dir = log_dir / f"klee-out-{idx}"
    if out_dir.exists(): shutil.rmtree(out_dir, ignore_errors=True)
    
    # [CONFIG] Added --exit-on-error to fail fast on intrinsics
    cmd = [klee] + flags + ["--output-dir", str(out_dir), "--only-output-states-covering-new", "--exit-on-error","--max-solver-time=30s",]
    
    if os.environ.get("KLEE_TRACE", "0") == "1":
        print("      [i] Enabling instruction trace (Expect slower execution)")
        cmd.append("-debug-print-instructions=src:stderr")
    cmd.append(str(bc_path))
    
    print(f"      [>] Output Dir:   {out_dir}")
    print(f"      [>] Streaming KLEE output ({timeout}s max)...")
    print("      ---------------------------------------------------")
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

    bug_assert, reach_assert = check_for_assert_files(out_dir)
    if not bug_assert:
        if "BUG_ASSERT" in full_log and "ASSERTION FAIL" in full_log: bug_assert = True
        elif "abort failure" in full_log: bug_assert = True
    if not reach_assert:
        if "REACH_ASSERT" in full_log and "ASSERTION FAIL" in full_log: reach_assert = True
    
    bug_found = False
    crash_type = "none"
    crash_location = ""
    failure_reason = None
    analysis_note = ""

    # [1] H0 Detection
    if "invalid klee_assume call (provably false)" in full_log and not bug_assert:
        print("  [i] KLEE: Assumption failure (provably false). Marking as H0.")
        return {
            "status": "harness_constraint_error", "bug_found": False, "reach_assert_hit": False,
            "elapsed": t, "full_log": full_log, "failure_reason": "Harness assumption provably false",
            "execution_trace": execution_trace
        }
    
    # [2] Crash Detection
    if bug_assert:
        bug_found = True
        crash_type = "spec"
        crash_location = f"{Path(target_file).name}:{target_line} (Oracle)"
        failure_reason = "Oracle BUG_ASSERT triggered"

    elif "KLEE: ERROR" in full_log:
        bug_found = True
        
        # [NEW] Priority Check for Intrinsics (Critical for Diagnosis)
        if "unimplemented intrinsic" in full_log:
             crash_type = "intrinsic"
             failure_reason = "Unimplemented Intrinsic (LLVM/KLEE limitation)"
             # Try to find the specific intrinsic name
             m = re.search(r"unimplemented intrinsic: ([\w\.]+)", full_log)
             if m: failure_reason += f": {m.group(1)}"
        
        else:
            is_local, loc_msg = check_crash_locality(full_log, target_file, target_line)
            match = re.search(r"at ([^ ]+:\d+)", loc_msg) or re.search(r"HARNESS_LOCAL_CRASH: ([^ ]+:\d+)", loc_msg)
            found_loc = match.group(1) if match else "unknown"
            
            if loc_msg.startswith("HARNESS_LOCAL_CRASH"):
                crash_type = "harness"
                crash_location = found_loc
                failure_reason = loc_msg
            elif is_local:
                # Local Valid (Blocker)
                crash_type = "local_valid"
                crash_location = found_loc
                failure_reason = f"{loc_msg} (Target Crash)"
            else:
                # Opportunistic (Library)
                crash_type = "opportunistic" 
                crash_location = found_loc
                failure_reason = loc_msg

    # [3] Fallback Reason Capture
    # If we found a bug but have no reason yet, grab the first ERROR line.
    if bug_found and not failure_reason:
        for line in full_log.splitlines():
            if "KLEE: ERROR" in line:
                failure_reason = line.strip()
                break
        if not failure_reason: failure_reason = "Unknown KLEE Error"

    if analysis_note:
        full_log += f"\n\n{analysis_note}\n"
        (log_dir / f"klee_{idx}.log").write_text(full_log, encoding="utf-8")

    status = "ok"
    if crash_type == "harness": status = "harness_error"
    elif bug_found: status = "bug_found"
    elif reach_assert: status = "assertion_reach"
    elif rc == 124: status = "timeout"

    return {
        "status": status,
        "bug_found": bug_found, 
        "bug_assert_hit": bug_assert, 
        "reach_assert_hit": reach_assert,
        "crash_type": crash_type,       
        "crash_location": crash_location, 
        "elapsed": t, 
        "full_log": full_log, 
        "failure_reason": failure_reason,
        "execution_trace": execution_trace 
    }
# ---------------- PHASE 2: REFINEMENT LOOP ----------------

def strip_c_comments_and_strings(text: str) -> str:
    pattern = r'(".*?"|\'.*?\'|//.*?$|/\*.*?\*/)'
    return re.sub(pattern, ' ', text, flags=re.MULTILINE|re.DOTALL)

def _copy_tree_filtered(src_root: Path, dst_root: Path) -> None:
    if dst_root.exists(): shutil.rmtree(dst_root)
    ignore = shutil.ignore_patterns(".git", "se_runs", "__pycache__", "*.o", "*.a", "*.so", "*.dSYM", "build", "cmake-build-*")
    shutil.copytree(src_root, dst_root, ignore=ignore, dirs_exist_ok=False)



# -----------------------------
# STAILOR statement-aware instrumentation helpers
# -----------------------------

def _stailor_strip_strings_and_line_comments(line: str) -> str:
    """Best-effort removal of C string/char literals and // comments for lightweight parsing."""
    # remove // comments first (not inside quotes; best-effort)
    line = re.sub(r"//.*$", "", line)
    # replace string and char literals with spaces
    line = re.sub(r'"(?:\\.|[^"\\])*"', '""', line)
    line = re.sub(r"'(?:\\.|[^'\\])*'", "''", line)
    return line


def _stailor_in_block_comment(lines: list[str], line_index: int) -> bool:
    """Return True if position (before line_index) is within a /* ... */ block comment."""
    depth = 0
    for i in range(max(0, min(line_index, len(lines)))):
        s = _stailor_strip_strings_and_line_comments(lines[i])
        j = 0
        while j < len(s):
            if s.startswith('/*', j):
                depth += 1
                j += 2
                continue
            if s.startswith('*/', j) and depth > 0:
                depth -= 1
                j += 2
                continue
            j += 1
    return depth > 0


def _stailor_safe_insert_pos(lines: list[str], insert_pos: int) -> int:
    """If insert_pos is inside a block comment, advance to the first line after the comment ends."""
    insert_pos = max(0, min(insert_pos, len(lines)))
    if not _stailor_in_block_comment(lines, insert_pos):
        return insert_pos
    # advance until we exit block comment
    i = insert_pos
    while i < len(lines):
        # check state after consuming line i
        if not _stailor_in_block_comment(lines, i + 1):
            return i + 1
        i += 1
    return len(lines)


def _stailor_insert_after_includes(lines: list[str], max_scan: int = 250) -> int:
    """Choose a safe insertion point after the last #include in the first max_scan lines."""
    last_inc = -1
    for i, l in enumerate(lines[: min(len(lines), max_scan)]):
        if re.match(r"\s*#\s*include\b", l):
            last_inc = i
    if last_inc >= 0:
        return last_inc + 1
    # fallback: after initial preprocessor prologue
    last_pp = -1
    for i, l in enumerate(lines[: min(len(lines), max_scan)]):
        if re.match(r"\s*#\s*(define|if|ifdef|ifndef|pragma|elif|else|endif)\b", l):
            last_pp = i
    return (last_pp + 1) if last_pp >= 0 else 0


def _stailor_locate_by_anchor(lines: list[str], anchor: dict) -> int | None:
    """Locate a line by anchor: prefix + optional context-before/context-after strings."""
    if not anchor:
        return None
    prefix = str(anchor.get('prefix') or '').strip()
    if not prefix:
        return None
    before = anchor.get('before') if isinstance(anchor.get('before'), list) else []
    after = anchor.get('after') if isinstance(anchor.get('after'), list) else []

    def ctx_ok(i: int) -> bool:
        # check before within 12 lines
        if before:
            window = ''.join(lines[max(0, i-12):i])
            for b in before:
                if b and str(b) not in window:
                    return False
        if after:
            window = ''.join(lines[i+1:min(len(lines), i+13)])
            for a in after:
                if a and str(a) not in window:
                    return False
        return True

    for i, l in enumerate(lines):
        if prefix in l and ctx_ok(i):
            return i
    return None




# -----------------------------------------------------------------------------
# Statement-/function-aware instrumentation helpers (project-agnostic)
# -----------------------------------------------------------------------------

_C_KEYWORDS = {
    "if","for","while","switch","return","sizeof","do","goto","case","break","continue",
    "else","struct","union","enum","typedef","static","extern","volatile","const",
}

def _extract_function_spans_c(src_text: str) -> List[Dict[str, Any]]:
    """Best-effort C function span extractor (no clang required).

    Returns list of {name, start_line, end_line, is_static}.
    Uses comment/string-masked brace matching.
    """
    masked = strip_c_comments_and_strings_preserve_lines(src_text)
    # Match function headers conservatively: <ret stuff> <name>(...) {
    rx = re.compile(r"(^|\n)\s*(?:([A-Za-z_][\w\s\*]*?)\s+)?([A-Za-z_][\w]*)\s*\([^;{}]*\)\s*\{", re.MULTILINE)
    spans: List[Dict[str, Any]] = []
    for m in rx.finditer(masked):
        name = m.group(3)
        hdr_start = m.start()
        brace_open = masked.find("{", m.end()-1, m.end()+1)
        if brace_open < 0: 
            continue
        # brace match
        depth = 0
        i = brace_open
        end = -1
        while i < len(masked):
            ch = masked[i]
            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth == 0:
                    end = i
                    break
            i += 1
        if end < 0:
            continue
        start_line = src_text.count("\n", 0, brace_open) + 1
        end_line   = src_text.count("\n", 0, end) + 1
        # static heuristic: look backwards within header line(s)
        hdr = src_text[hdr_start:brace_open]
        is_static = bool(re.search(r"\bstatic\b", hdr))
        spans.append({"name": name, "start_line": start_line, "end_line": end_line, "is_static": is_static})
    return spans

def _compute_in_path_funcs_for_file(src_text: str, target_line: int) -> Set[str]:
    """Compute a conservative in-path (MUST_KEEP) set within a TU.

    - Always includes the function that contains target_line.
    - Includes *direct* and *transitive* callers within the same TU (backward slice).
    This is project-agnostic and prevents stubbing the exact logic we need to reach.
    """
    spans = _extract_function_spans_c(src_text)
    if not spans:
        return set()
    target_funcs = [s for s in spans if s["start_line"] <= target_line <= s["end_line"]]
    if not target_funcs:
        return set()
    target_name = target_funcs[0]["name"]
    keep: Set[str] = {target_name}

    # Build a simple caller map within TU
    masked = strip_c_comments_and_strings_preserve_lines(src_text)
    bodies: Dict[str, str] = {}
    for s in spans:
        # extract body text by line range (approx)
        body_lines = src_text.splitlines(True)[s["start_line"]-1:s["end_line"]]
        bodies[s["name"]] = strip_c_comments_and_strings_preserve_lines("".join(body_lines))

    # Caller graph: f -> set(callees)
    call_rx = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\s*\(", re.MULTILINE)
    calls: Dict[str, Set[str]] = {}
    for fn, body in bodies.items():
        cs = set()
        for m in call_rx.finditer(body):
            cal = m.group(1)
            if cal in _C_KEYWORDS:
                continue
            cs.add(cal)
        calls[fn] = cs

    # Reverse BFS from target to callers
    changed = True
    while changed:
        changed = False
        for caller, callees in calls.items():
            if caller in keep:
                continue
            if any(c in keep for c in callees):
                keep.add(caller)
                changed = True

    return keep

def _extract_stubbed_function_name(code_snippet: str) -> Optional[str]:
    """Try to recover the intended stubbed function name from injected code."""
    if not code_snippet:
        return None
    m = re.search(r"\bStub\s+([A-Za-z_][A-Za-z0-9_]*)\b", code_snippet)
    if m:
        return m.group(1)
    # common pattern in this pipeline: "/* Stub <name>: ... */"
    m = re.search(r"/\*\s*Stub\s+([A-Za-z_][A-Za-z0-9_]*)\s*:", code_snippet)
    if m:
        return m.group(1)
    return None


# -----------------------------------------------------------------------------
# STAILOR Patch: Statement-safe stubbing + intrinsic mitigation helpers
# -----------------------------------------------------------------------------

_RX_KLEE_UNIMPL_INTR = re.compile(r"unimplemented intrinsic:\s*([A-Za-z0-9\._]+)")
_RX_KLEE_ERROR_LOC   = re.compile(r"KLEE:\s*ERROR:\s*([^:\s]+):(\d+):")
_RX_KLEE_STACK_FUNC  = re.compile(r"\bin\s+([A-Za-z_]\w*)\s*\(")

def _extract_klee_intrinsic_blocker(full_log: str) -> Dict[str, Any]:
    """
    Parse KLEE output for intrinsic blocker information.
    Returns dict with keys: intrinsic, file, line, func (best-effort) or {}.
    """
    if "unimplemented intrinsic" not in full_log:
        return {}
    out: Dict[str, Any] = {}
    m = _RX_KLEE_UNIMPL_INTR.search(full_log)
    if m:
        out["intrinsic"] = m.group(1)
    m = _RX_KLEE_ERROR_LOC.search(full_log)
    if m:
        out["file"] = m.group(1)
        try:
            out["line"] = int(m.group(2))
        except Exception:
            pass
    # Best-effort: take the first stack function name that appears after the ERROR line
    # Many KLEE stacks include lines like: "in foo(...)".
    m = _RX_KLEE_STACK_FUNC.search(full_log)
    if m:
        out["func"] = m.group(1)
    return out

def _strip_c_comments_and_strings_preserve_lines(text: str) -> str:
    """Mask comments and strings but preserve newlines for line mapping."""
    # Reuse if already defined
    try:
        return strip_c_comments_and_strings_preserve_lines(text)  # type: ignore[name-defined]
    except Exception:
        pass

    out = []
    i, n = 0, len(text)
    state = "code"
    while i < n:
        ch = text[i]
        nxt = text[i+1] if i+1 < n else ""
        if state == "code":
            if ch == "/" and nxt == "/":
                out.append("  ")
                i += 2
                state = "line"
                continue
            if ch == "/" and nxt == "*":
                out.append("  ")
                i += 2
                state = "block"
                continue
            if ch == '"':
                out.append('"')
                i += 1
                state = "dstr"
                continue
            if ch == "'":
                out.append("'")
                i += 1
                state = "sstr"
                continue
            out.append(ch)
            i += 1
        elif state == "line":
            if ch == "\n":
                out.append("\n")
                i += 1
                state = "code"
            else:
                out.append(" ")
                i += 1
        elif state == "block":
            if ch == "*" and nxt == "/":
                out.append("  ")
                i += 2
                state = "code"
            else:
                out.append("\n" if ch == "\n" else " ")
                i += 1
        elif state == "dstr":
            if ch == "\\" and i+1 < n:
                out.append("  ")
                i += 2
            elif ch == '"':
                out.append('"')
                i += 1
                state = "code"
            else:
                out.append("\n" if ch == "\n" else " ")
                i += 1
        elif state == "sstr":
            if ch == "\\" and i+1 < n:
                out.append("  ")
                i += 2
            elif ch == "'":
                out.append("'")
                i += 1
                state = "code"
            else:
                out.append("\n" if ch == "\n" else " ")
                i += 1
    return "".join(out)

def _extract_stubbed_func_name_from_code(code: str) -> str:
    """
    Extract function name from injected stub code/comment.
    Supports patterns:
      - 'Stub <func>:'
      - 'Stub_<func>' (rare)
    """
    m = re.search(r"\bStub\s+([A-Za-z_]\w*)\s*:", code)
    if m: return m.group(1)
    m = re.search(r"\bstub_([A-Za-z_]\w*)\b", code)
    if m: return m.group(1)
    return ""

def _find_function_def_span(masked: str, func: str) -> Optional[Tuple[int, int]]:
    """
    Find the (start_line, brace_line) of a function definition in masked text.
    brace_line is the line containing the opening '{'.
    """
    # Match return type + name + params + '{'
    rx = re.compile(rf"(^|\n)\s*(?:static\s+)?[^\n;{{}}]*\b{re.escape(func)}\s*\([^;{{}}]*\)\s*\{{", re.MULTILINE)
    m = rx.search(masked)
    if not m:
        return None
    start_line = masked.count("\n", 0, m.start()) + 1
    brace_line = masked.count("\n", 0, m.end()) + 1
    # In practice start_line==brace_line often.
    return (start_line, brace_line)

def _infer_return_type_from_def_line(def_line: str, func: str) -> str:
    """
    Best-effort return type inference from a def line: '<ret> func(args) {'
    """
    # Remove attributes/macros
    line = def_line.strip()
    # Chop at function name
    idx = line.find(func)
    if idx <= 0:
        return ""
    ret = line[:idx].strip()
    # Remove common qualifiers
    ret = re.sub(r"\b(static|inline|extern|__inline__|__inline)\b", "", ret).strip()
    ret = re.sub(r"\s+", " ", ret).strip()
    return ret

def _default_return_expr(ret_type: str, func_name: str = "") -> str:
    """Generic safe return value expression as C code (single expression)."""
    rt = ret_type.strip()
    if rt == "" or rt == "int":
        return "0"
    if "void" in rt and "*" not in rt:
        return ""  # indicates 'return;'
    # Heuristic: string name getters
    if "*" in rt and re.search(r"(?i)\bchar\b", rt):
        return "\"UTF-8\""
    if "*" in rt:
        return "0"  # NULL (safe compile); reachability-friendly pointer needs modeling elsewhere
    return "0"

def _stailor_sanitize_orig_snippet(raw: str) -> str:
    """
    Produce a comment-safe, single-line snippet of `raw` for logging/debug.
    Project-agnostic: length is configurable via STAILOR_ORIG_SNIPPET_MAX (default: 120).
    """
    s = raw.strip()
    # Avoid nested comment terminators and confusing // sequences inside our annotations.
    s = s.replace("/*", "/ *").replace("*/", "* /").replace("//", "/ /")
    # Avoid NULs and very long lines.
    max_len = 120
    try:
        max_len = int(os.getenv("STAILOR_ORIG_SNIPPET_MAX", "120"))
    except Exception:
        max_len = 120
    max_len = max(0, min(max_len, 1000))
    if max_len == 0:
        return ""
    if len(s) > max_len:
        # leave room for ellipsis without hardcoding magic numbers
        keep = max(0, max_len - 3)
        s = s[:keep] + "..."
    return s


def _infer_return_type_from_signature(sig_text: str, func: str) -> str:
    """
    Best-effort return type inference from a (possibly multi-line) signature string
    like '<ret> func(args) {'.

    Returns the textual return-type portion, normalized, or "" if unknown.
    """
    line = " ".join(sig_text.replace("\n", " ").split())
    idx = line.find(func)
    if idx <= 0:
        return ""
    ret = line[:idx].strip()
    # Drop common qualifiers/attrs (best-effort, project-agnostic)
    ret = re.sub(r"\b(static|inline|extern|__inline__|__inline|__attribute__\s*\(\([^)]*\)\)|__declspec\([^)]+\))\b", "", ret)
    ret = re.sub(r"\s+", " ", ret).strip()
    return ret


def _looks_like_local_decl(stmt: str) -> bool:
    """
    Heuristic: detect simple local variable declarations (optionally with initializer),
    so we avoid injecting a stub in front of them (would break compilation if we "return"
    before declarations that introduce identifiers later used in the function).
    """
    s = stmt.strip()
    if not s.endswith(";"):
        return False
    head = s[:-1].strip()
    # Skip if this "declaration" looks like a call or macro invocation.
    if "(" in head:
        return False
    # Common control keywords that can also end with ';'
    if re.match(r"^(return|goto|break|continue)\b", head):
        return False
    # Very conservative C-decl shape:
    #   <type-ish> <name> [= init] (, <name> [= init])*
    # We allow pointers and qualifiers in the type-ish part.
    decl_rx = re.compile(
        r"^[A-Za-z_]\w*(?:\s+[\w\*\(\)]+)*\s+\**\s*[A-Za-z_]\w*(?:\s*=\s*[^;]+)?(?:\s*,\s*\**\s*[A-Za-z_]\w*(?:\s*=\s*[^;]+)?)*\s*$"
    )
    return bool(decl_rx.match(head))


def _is_unsafe_insertion_target(stmt: str) -> bool:
    """
    Statements we must NOT prepend with 'return' on the same line (syntax would break):
      - case/default labels
      - arbitrary labels (foo:)
    """
    s = stmt.lstrip()
    if re.match(r"^(case\b|default\b)\b", s):
        return True
    # label:
    if re.match(r"^[A-Za-z_]\w*\s*:\s*(//.*)?$", s):
        return True
    return False


def _apply_stub_function_body_inplace(content: str, func: str, reason: str = "", *, force_return: Optional[str] = None) -> Tuple[str, bool, str]:
    """
    Reachability-friendly, compilation-safe in-place stubbing.

    Goal:
      - Make the function return early (to bypass expensive/irrelevant behavior),
        WITHOUT breaking parsing/compilation, and WITHOUT shifting line numbers.

    Strategy:
      - Find the function body opening brace.
      - Skip over local declarations, preprocessor lines, and comment-only lines.
      - Find the first *executable* statement that is safe to prefix on the same line.
      - Prefix that line with a `return ...;` statement.
        (We do NOT delete the original code; it stays on the same line after the return.)

    This avoids earlier failures like:
      - "void function should not return a value"
      - undeclared identifiers due to removing local decls
      - "case statement not in switch statement" due to touching 'case:' labels
    """
    lines = content.splitlines()
    masked = _strip_c_comments_and_strings_preserve_lines(content)
    span = _find_function_def_span(masked, func)
    if not span:
        return content, False, f"function '{func}' not found"

    start_line, brace_line = span
    brace_idx = brace_line - 1

    # Build a robust signature string (may span multiple lines).
    sig_lo = max(0, start_line - 1)
    sig_hi = min(len(lines), brace_line)
    sig_text = "\n".join(lines[sig_lo:sig_hi])
    ret_type = _infer_return_type_from_signature(sig_text, func) or _infer_return_type_from_def_line(lines[brace_idx] if brace_idx < len(lines) else "", func)

    # Find first injectable statement after opening brace.
    i = brace_idx + 1
    masked_lines = masked.splitlines()
    while i < len(lines):
        raw = lines[i]
        mline = masked_lines[i] if i < len(masked_lines) else ""

        if raw.strip() == "" or raw.lstrip().startswith("#") or mline.strip() == "":
            i += 1
            continue

        # Avoid breaking control-structure headers and labels.
        if _is_unsafe_insertion_target(raw):
            i += 1
            continue

        # Avoid injecting before declarations (including "char *x = NULL;").
        if _looks_like_local_decl(raw):
            i += 1
            continue

        # Avoid injecting on a bare '{' / '}' line.
        if raw.strip() in ("{", "}"):
            i += 1
            continue

        # Compute return expression.
        if "void" in ret_type and "*" not in ret_type:
            ret_expr = ""
        else:
            ret_expr = force_return if force_return is not None else _default_return_expr(ret_type, func)

        new_stmt = (f"return; // [STAILOR] stubbed {func} {reason}".rstrip()
                    if ret_expr == "" else
                    f"return {ret_expr}; // [STAILOR] stubbed {func} {reason}".rstrip())

        orig_snip = _stailor_sanitize_orig_snippet(raw)
        if orig_snip:
            lines[i] = f"{new_stmt} {raw.rstrip()} /* ORIG: {orig_snip} */"
        else:
            lines[i] = f"{new_stmt} {raw.rstrip()}"

        return "\n".join(lines) + ("\n" if content.endswith("\n") else ""), True, f"stubbed {func} at line {i+1}"

    return content, False, f"no safe executable line found in '{func}'"
def _find_first_path_with_basename(root: Path, base: str) -> Optional[Path]:
    """Find first file under root whose basename matches base."""
    try:
        for p in root.rglob(base):
            if p.is_file():
                return p
    except Exception:
        return None
    return None

def _mitigate_intrinsic_blocker_in_src(src_root: Path, blocker: Dict[str, Any], execution_log: Optional[Path] = None) -> Tuple[bool, str]:
    """
    Patch the source file containing the intrinsic blocker by stubbing the crashing function body
    (comment-safe, no line shifting).
    Returns (ok, note).
    """
    func = str(blocker.get("func") or "").strip()
    f = str(blocker.get("file") or "").strip()
    if not func or not f:
        return False, "blocker missing func/file"
    base = os.path.basename(f)
    p = _find_first_path_with_basename(src_root, base)
    if not p:
        return False, f"cannot locate {base} under src_root"
    txt = p.read_text(encoding="utf-8", errors="replace")
    # Special-case: name getters return UTF-8
    force_ret = None
    # If signature suggests char*, function body stub will return "UTF-8" automatically.
    new_txt, ok, note = _apply_stub_function_body_inplace(txt, func, reason="(intrinsic mitigation)", force_return=force_ret)
    if not ok:
        return False, f"{p.name}: {note}"
    p.write_text(new_txt, encoding="utf-8")
    msg = f"[intrinsic-mitigation] stubbed {func} in {p.name} to avoid {blocker.get('intrinsic','intrinsic')}"
    if execution_log:
        try:
            with open(execution_log, "a", encoding="utf-8") as f2:
                f2.write(msg + "\n")
        except Exception:
            pass
    return True, msg


def apply_plan_instrumentation(inst_root: Path, plan: Dict[str, Any], *, vul_file_rel: str = "", vul_line: int = 0, execution_log: Optional[Path] = None) -> List[str]:
    """Apply plan["instrumentation"] directives.

    Supported kinds (project-agnostic):
      - insert_before / insert_after (legacy; line-based)  
      - insert_after_includes (NEW; anchor-based safe injection)
      - replace_in_line (NEW; line-based single-line replacement)
      - replace_by_anchor (NEW; anchor-based single-line replacement)

    Safety improvements:
      - Never insert inside /* ... */ block comments (Doxygen-safe)
      - Use // tags instead of /* */ to avoid nested-comment breakage
      - Apply replacements before insertions for deterministic behavior
    """
    actions: List[str] = []
    inst = plan.get("instrumentation", [])
    if not isinstance(inst, list) or not inst:
        return actions

    file_map: Dict[str, List[Dict[str, Any]]] = {}
    for ent in inst:
        if not isinstance(ent, dict):
            continue
        rel = str(ent.get("file") or "").strip()
        if not rel:
            continue
        file_map.setdefault(rel, []).append(ent)

    for rel, directives in file_map.items():
        target = (inst_root / rel).resolve()
        if not target.exists():
            actions.append(f"[instrumentation] missing file: {rel}")
            continue

        lines = target.read_text(encoding="utf-8", errors="replace").splitlines(True)
        modified = False
        # Precompute a brace-depth map for statement-safe instrumentation.
        # Depth is computed on comment/string-masked text so braces in comments don't count.
        try:
            _txt_full = "".join(lines)
            _masked_full = _strip_c_comments_and_strings_preserve_lines(_txt_full)
            _masked_lines = _masked_full.splitlines(True)
            _brace_depth_before: List[int] = []
            _d = 0
            for _ln in _masked_lines:
                _brace_depth_before.append(_d)
                # update depth after this line
                _d += _ln.count('{')
                _d -= _ln.count('}')
                if _d < 0: _d = 0
        except Exception:
            _brace_depth_before = [0 for _ in lines]


        # Compute a conservative MUST_KEEP set for the vulnerable TU to avoid stubbing in-path helpers.
        must_keep: Set[str] = set()
        if vul_file_rel and vul_line > 0 and Path(rel).as_posix() == Path(vul_file_rel).as_posix():
            try:
                src_text_full = "".join(lines)
                must_keep = _compute_in_path_funcs_for_file(src_text_full, vul_line)
                if must_keep:
                    msg = f"[stubs] MUST_KEEP_FUNCS({len(must_keep)}): " + ", ".join(sorted(list(must_keep))[:50])
                    actions.append(msg)
                    if execution_log:
                        try:
                            with open(execution_log, "a", encoding="utf-8") as f:
                                f.write(msg + "\n")
                        except Exception:
                            pass
            except Exception as e:
                actions.append(f"[stubs] MUST_KEEP_FUNCS computation failed: {e}")

        # Split by operation type
        repl = [d for d in directives if str(d.get('kind') or '').strip() in ('replace_in_line','replace_by_anchor')]
        ins  = [d for d in directives if str(d.get('kind') or 'insert_before').strip() not in ('replace_in_line','replace_by_anchor')]

        # ----------------
        # Replacements (top-down)
        # ----------------
        for ent in sorted(repl, key=lambda x: int(x.get('line') or 0) or 0):
            kind = (ent.get('kind') or 'replace_in_line').strip()
            code = str(ent.get('code') or '').rstrip('\n')
            if not code:
                continue

            idx0: int | None = None
            if kind == 'replace_by_anchor':
                anchor = ent.get('anchor') if isinstance(ent.get('anchor'), dict) else {}
                idx0 = _stailor_locate_by_anchor(lines, anchor)
                if idx0 is None:
                    actions.append(f"[instrumentation] replace_by_anchor MISS {rel}")
                    continue
            else:
                line_idx_1 = int(ent.get('line') or 0)
                if line_idx_1 <= 0 or line_idx_1 > len(lines):
                    actions.append(f"[instrumentation] replace_in_line OOB {rel}:{line_idx_1}")
                    continue
                idx0 = line_idx_1 - 1

            # Preserve newline convention
            nl = "\n" if lines[idx0].endswith("\n") else ""
            orig = lines[idx0].rstrip('\n')
            flat = ' '.join(code.splitlines()).strip()
            # Replace the statement in-place and keep the original as a trailing comment (no extra lines)
            safe_orig = orig.strip().replace('/*','/ *').replace('*/','* /')
            if len(safe_orig) > 180:
                safe_orig = safe_orig[:177] + '...'
            lines[idx0] = flat + f" /* ORIG: {safe_orig} */" + nl
            actions.append(f"[instrumentation] {kind} {rel}:{idx0+1}")
            modified = True

        # ----------------
        # Insertions (bottom-up)
        # ----------------
        # Legacy directives sorted descending line so indices remain stable
        def _ins_sort_key(d: dict) -> int:
            try:
                return int(d.get('line') or 0)
            except Exception:
                return 0

        ins.sort(key=_ins_sort_key, reverse=True)

        for ent in ins:
            kind = (ent.get("kind") or "insert_before").strip()
            code = str(ent.get("code") or "").rstrip()
            if not code:
                continue

            # [STAILOR] Statement-aware stubbing / intrinsic mitigation
            if kind == "stub_function_body":
                func_name = str(ent.get("func") or "").strip()
                reason = str(ent.get("reason") or "").strip()
                force_ret = ent.get("force_return")
                if not func_name:
                    actions.append(f"[instrumentation] stub_function_body MISS func {rel}")
                    continue
                # Respect MUST_KEEP unless explicitly forced (blockers)
                if func_name in must_keep and not ent.get("force"):
                    msg = f"[stubs] SKIP in-path stub '{func_name}' via stub_function_body ({rel})"
                    actions.append(msg)
                    if execution_log:
                        try:
                            with open(execution_log, "a", encoding="utf-8") as f:
                                f.write(msg + "\n")
                        except Exception:
                            pass
                    continue
                new_txt, ok, note = _apply_stub_function_body_inplace("".join(lines), func_name, reason, force_return=force_ret)
                if ok:
                    lines = new_txt.splitlines(True)
                    modified = True
                    actions.append(f"[instrumentation] stub_function_body {rel}:{func_name} ({note})")
                else:
                    actions.append(f"[instrumentation] stub_function_body FAIL {rel}:{func_name} ({note})")
                continue

            # Detect legacy body-stub inserts and relocate to function body instead of line-based insertion.
            stub_func = _extract_stubbed_func_name_from_code(code)
            is_body_stub = bool(stub_func) or code.lstrip().startswith("return ")

            # Bare 'return ...;' snippets without an explicit target function/callsite are unsafe:
            # they cannot be inserted at file scope, and guessing a function to patch is error-prone.
            # Enforce: drop these directives and require callsite-aware replacement (replace_by_anchor)
            # or explicit stub_function_body with 'func'.
            if code.lstrip().startswith("return ") and not stub_func:
                msg = f"[instrumentation] DROP unsafe bare-return insertion {rel}:{ent.get('line')}"
                actions.append(msg)
                if execution_log:
                    try:
                        with open(execution_log, "a", encoding="utf-8") as f:
                            f.write(msg + "\n")
                    except Exception:
                        pass
                continue

            if is_body_stub and stub_func:
                if stub_func in must_keep and not ent.get("force"):
                    msg = f"[stubs] SKIP in-path stub '{stub_func}' at {rel}:{ent.get('line')}"
                    actions.append(msg)
                    if execution_log:
                        try:
                            with open(execution_log, "a", encoding="utf-8") as f:
                                f.write(msg + "\n")
                        except Exception:
                            pass
                    continue

                # Apply as in-place function-body stub (no line shifting; do not inject into comments).
                # For collision unlock stubs, prefer returning the constant present in code if any.
                force_ret = None
                mconst = re.search(r"return\s+((?:0x[0-9A-Fa-f]+)|(?:\d+))\s*;", code)
                if mconst:
                    force_ret = str(int(mconst.group(1), 0))
                reason = "legacy relocated"
                new_txt, ok, note = _apply_stub_function_body_inplace("".join(lines), stub_func, reason, force_return=(force_ret if force_ret is not None else None))
                if ok:
                    lines = new_txt.splitlines(True)
                    modified = True
                    actions.append(f"[instrumentation] relocated body-stub into {stub_func} ({note})")
                else:
                    actions.append(f"[instrumentation] relocate FAIL {rel}:{stub_func} ({note})")
                continue

            if kind == 'insert_after_includes':
                insert_pos = _stailor_insert_after_includes(lines)
                insert_pos = _stailor_safe_insert_pos(lines, insert_pos)
                tag = "// [STAILOR] Injected after includes\n"
                ins_txt = code + ("\n" if not code.endswith("\n") else "") + tag
                lines.insert(insert_pos, ins_txt)
                actions.append(f"[instrumentation] insert_after_includes {rel}:{insert_pos+1}")
                modified = True
                continue

            line_idx = int(ent.get("line") or 0)
            if line_idx <= 0 or line_idx > len(lines)+1:
                actions.append(f"[instrumentation] SKIP OOB {rel}:{line_idx}")
                continue

            idx = max(0, min(len(lines), line_idx - 1))
            insert_pos = idx + 1 if kind == "insert_after" else idx
            insert_pos = _stailor_safe_insert_pos(lines, insert_pos)

            # Statement-safe splice: if this directive is a single C statement and we're inside a function
            # (brace depth > 0), do NOT insert a new line. Instead, splice the instrumentation onto the
            # same source statement line (no line shifting, Doxygen-safe).
            try:
                _depth = _brace_depth_before[idx] if idx < len(_brace_depth_before) else 0
            except Exception:
                _depth = 0
            _flat = ' '.join(code.splitlines()).strip()
            _looks_stmt = (('\n' not in code) and (not _flat.lstrip().startswith('#')) and (';' in _flat)) or _flat.lstrip().startswith(('return ','goto ','break','continue'))
            if _looks_stmt:
                if _depth <= 0:
                    # File-scope insertion of statements is illegal C.
                    msg = f"[instrumentation] DROP top-level statement injection {rel}:{line_idx}"
                    actions.append(msg)
                    if execution_log:
                        try:
                            with open(execution_log, 'a', encoding='utf-8') as f:
                                f.write(msg + '\n')
                        except Exception:
                            pass
                    continue
                # Splice before/after on the same line.
                if idx >= len(lines):
                    # Nothing to splice; fallback to append as a new line.
                    pass
                else:
                    _nl = '\n' if lines[idx].endswith('\n') else ''
                    _orig = lines[idx].rstrip('\n')
                    # Avoid nested block comment breaks in ORIG when embedding.
                    _orig_s = _orig.replace('/*','/ *').replace('*/','* /')
                    if kind == 'insert_after':
                        lines[idx] = f"{_orig} {_flat} /* [STAILOR] splice_after */" + _nl
                    else:
                        lines[idx] = f"{_flat} {_orig} /* [STAILOR] splice_before */" + _nl
                    actions.append(f"[instrumentation] splice_{kind} {rel}:{line_idx}")
                    modified = True
                    continue

            tag = f"// [STAILOR] Injected at orig line {line_idx}\n"
            ins_txt = code + ("\n" if not code.endswith("\n") else "") + tag

            if insert_pos > len(lines):
                lines.append(ins_txt)
            else:
                lines.insert(insert_pos, ins_txt)

            actions.append(f"[instrumentation] {kind} {rel}:{line_idx}")
            modified = True

        if modified:
            target.write_text(''.join(lines), encoding='utf-8')

    return actions
def build_instrumented_project_bc(
    *, src_root: Path, work_dir: Path, frozen_plan: Dict[str, Any], args: argparse.Namespace
) -> Tuple[Optional[Path], List[str], str]:
    """
    Builds an instrumented project.bc by copying src_root -> work_dir/instrumented_source,
    applying frozen_plan["instrumentation"], and running args.build_project_bc_cmd.

    Returns: (bc_path_or_none, actions_applied, error_message)
    """
    import shutil
    from pathlib import Path
    from typing import Any, Dict, List, Optional, Tuple

    inst = frozen_plan.get("instrumentation", [])
    if not isinstance(inst, list) or not inst:
        return (Path(args.project_bc) if args.project_bc else None, [], "")

    if not getattr(args, "build_project_bc_cmd", None):
        return (None, [], "Instrumentation required but --build-project-bc-cmd was not provided.")

    inst_root = work_dir / "instrumented_source"
    _copy_tree_filtered(src_root, inst_root)

    # ------------------------------------------------------------
    # Best-effort KLEE header injection
    # ------------------------------------------------------------
    klee_src_dir: Optional[Path] = None
    candidates: List[Path] = []

    if getattr(args, "clang_flags", None):
        for flag in args.clang_flags:
            if isinstance(flag, str) and flag.startswith("-I"):
                candidates.append(Path(flag[2:]).resolve())

    # also consider typical locations
    candidates.extend([
        Path("/usr/include"),
        Path("/usr/local/include"),
        Path.home() / "tools/klee/include",
    ])

    # if args.klee is set, also look near it
    if getattr(args, "klee", None):
        k = Path(str(args.klee)).resolve()
        candidates.extend([
            k.parent.parent / "include",   # .../build/../include
            k.parent / "include",
        ])

    for p in candidates:
        if (p / "klee" / "klee.h").exists():
            klee_src_dir = p / "klee"
            break

    if klee_src_dir:
        proj_inc = inst_root / "include"
        if not proj_inc.exists():
            proj_inc = inst_root
        klee_dst_dir = proj_inc / "klee"
        try:
            if klee_dst_dir.exists():
                shutil.rmtree(klee_dst_dir)
            shutil.copytree(klee_src_dir, klee_dst_dir)
            print(f"  [i] Pipeline: Injected KLEE headers into {klee_dst_dir} to fix build dependencies.")
        except Exception as e:
            print(f"  [!] Warning: Failed to inject KLEE headers: {e}")
    else:
        print("  [!] Warning: Could not locate 'klee/klee.h'. Instrumented build might fail.")

    # Apply plan instrumentation
    actions = apply_plan_instrumentation(inst_root, frozen_plan, vul_file_rel=str(getattr(args,'vul_file','') or ''), vul_line=int(getattr(args,'vul_line',0) or 0), execution_log=(work_dir / 'execution.log'))

    # Emit a concise stub/in-path summary to the main execution log (stdout is tee'd).
    if actions:
        keep_lines = [a for a in actions if a.startswith("[stubs] MUST_KEEP_FUNCS")]
        skip_lines = [a for a in actions if a.startswith("[stubs] SKIP")]
        if keep_lines:
            print("  " + keep_lines[-1])
        if skip_lines:
            print(f"  [stubs] Skipped {len(skip_lines)} in-path stub directives.")
    out_bc = inst_root / "project.bc"
    cmd_tmpl = str(args.build_project_bc_cmd)
    cmd = cmd_tmpl.format(SRC_ROOT=str(inst_root), OUT_BC=str(out_bc))

    (work_dir / "instrumented_build.cmd").write_text(cmd + "\n", encoding="utf-8", errors="replace")

    rc, out, err, _ = run_cmd(["bash", "-lc", cmd], cwd=inst_root, timeout=1800)
    (work_dir / "instrumented_build.stdout").write_text(out, encoding="utf-8", errors="replace")
    (work_dir / "instrumented_build.stderr").write_text(err, encoding="utf-8", errors="replace")

    if rc != 0:
        return (None, actions, f"Instrumented build failed (rc={rc}). See instrumented_build.stderr/stdout.")

    if not out_bc.exists():
        # fallback: locate produced bitcode(s)
        cands = list(inst_root.rglob("*.bc"))
        if len(cands) == 1:
            out_bc = cands[0]
        else:
            msg = (
                "Instrumented build did not produce OUT_BC (project.bc).\n"
                f"- expected: {out_bc}\n"
                f"- found: {len(cands)} *.bc files\n"
                "Fix --build-project-bc-cmd to write exactly {OUT_BC}."
            )
            return (None, actions, msg)

    return (out_bc, actions, "")


def validate_harness_calls_entrypoint(harness_src: str, entrypoint: str) -> bool:
    if not entrypoint: return True
    clean_code = strip_c_comments_and_strings(harness_src)
    pattern = re.compile(rf"\b{re.escape(entrypoint)}\s*[(\;]")
    return bool(pattern.search(clean_code))

def check_klee_completion(log_text: str) -> bool:
    if "KLEE: done" not in log_text: return False
    if "halted on" in log_text: return False
    return True

def _extract_bug_assert_predicate_from_main(harness_src: str) -> Optional[str]:
    clean_src = strip_c_comments_and_strings(harness_src)
    no_pp = "\n".join(ln for ln in clean_src.splitlines() if not ln.lstrip().startswith("#"))
    mm = re.search(r"\bint\s+main\s*\([^)]*\)\s*\{", no_pp)
    if not mm: return None
    body = no_pp[mm.end():]
    depth = 1
    end_idx = -1
    for i, char in enumerate(body):
        if char == '{': depth += 1
        elif char == '}':
            depth -= 1
            if depth == 0:
                end_idx = i
                break
    if end_idx != -1: body = body[:end_idx]
    m = re.search(r"\bBUG_ASSERT\s*\((.*?)\)\s*;", body, flags=re.DOTALL)
    if m: return m.group(1).strip()
    return None

def validate_harness_structure(
    harness_src: str,
    required_entrypoint: str,
    policy: Dict[str, Any],
    rule_id: str,
    spec_stem: str,
    frozen_plan: Dict[str, Any] = None,
    defined_symbols: Set[str] = None,
    allowed_entrypoints: List[str] = None,
) -> Tuple[bool, str]:
    required_markers = ["/* --- Global Constants --- */", "/* --- Stub Functions --- */", "/* --- Harness --- */"]
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

    # ------------------------------------------------------------
    # Collision guard: don't define symbols that already exist
    # ------------------------------------------------------------
    if defined_symbols:
        defn_pattern = re.compile(r"^\s*(?:[\w\s\*]+)\b([a-zA-Z_]\w*)\s*\([^;]*\)\s*\{", re.MULTILINE)
        for match in defn_pattern.finditer(clean_all):
            func_name = match.group(1)
            if func_name == "main":
                continue
            if func_name in defined_symbols:
                return False, (
                    f"LINKER COLLISION: You defined '{func_name}', but it already exists in the target library.\n"
                    f"VIOLATION: Defining it creates a 'multiple definition' error.\n"
                    f"FIX: Use Macro Redirection to stub it safely.\n"
                    f"EXAMPLE:\n"
                    f"   char* stub_{func_name}(...) {{ ... }}\n"
                    f"   #define {func_name} stub_{func_name}"
                )

    plan_inst = frozen_plan.get("instrumentation", []) if frozen_plan else []
    plan_assertions = frozen_plan.get("assertions", []) if frozen_plan else []
    has_source_bug = any("BUG_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))
    has_source_reach = any("REACH_ASSERT" in str(i.get("code", "")) for i in plan_inst if isinstance(i, dict))
    uses_check_read = any(a.get("id") == "CHECK_READ" for a in plan_assertions)

    if uses_check_read and "#define CHECK_READ" not in clean_all:
        return False, "Plan requires 'CHECK_READ' but harness missing '#define CHECK_READ'."

    inverted_assert_re = re.compile(r"BUG_ASSERT\s*\(\s*(1|true)\s*\)", re.IGNORECASE)
    if inverted_assert_re.search(clean_harness):
        return False, "INVALID SENTINEL: 'BUG_ASSERT(1)' forces a crash immediately. Use 'BUG_ASSERT(0)' for Safe Landing."

    if has_source_bug:
        if re.search(r"BUG_ASSERT\s*\(", clean_harness):
            return False, (
                "STRATEGY VIOLATION: You placed BUG_ASSERT() in the Harness.\n"
                "REASON: The strategy uses 'instrumented_predicate', so the assertion is injected into the target file.\n"
                "ACTION: DELETE BUG_ASSERT() from the harness. Just call the entrypoint."
            )
    else:
        if not uses_check_read:
            if not _extract_bug_assert_predicate_from_main(harness_src):
                return False, "Harness is missing BUG_ASSERT(...) inside main()."

    if has_source_reach:
        if re.search(r"REACH_ASSERT\s*\(", harness_sec):
            return False, "STRATEGY VIOLATION: You placed REACH_ASSERT() in the Harness. Delete it."
    elif not re.search(r"REACH_ASSERT\s*\(", harness_sec):
        return False, "Harness missing REACH_ASSERT() sentinel."

    if (not has_source_bug) and (not has_source_reach):
        _exec = re.sub(r"^\s*#.*$", " ", harness_sec, flags=re.MULTILINE)
        _exec = re.sub(r"/\*.*?\*/", " ", _exec, flags=re.S)
        _exec = re.sub(r"//.*?$", " ", _exec, flags=re.M)
        bug_pos = _exec.find("BUG_ASSERT(")
        reach_pos = _exec.find("REACH_ASSERT")
        if reach_pos != -1 and bug_pos != -1 and reach_pos < bug_pos:
            return False, "Invalid ordering: REACH_ASSERT appears before BUG_ASSERT. Place Bug Oracle first."

    if frozen_plan and not has_source_bug and not uses_check_read:
        required_pred = ""
        for a in plan_assertions:
            if a.get("kind") == "bug" or a.get("id") == "BUG_ASSERT":
                required_pred = a.get("condition") or a.get("predicate")
                break
        if required_pred:
            actual_pred = _extract_bug_assert_predicate_from_main(harness_src)
            if actual_pred:
                req_norm = " ".join(required_pred.split())
                act_norm = " ".join(actual_pred.split())
                if req_norm != act_norm and act_norm not in ["1", "true", "0", "false"]:
                    return False, (
                        "PLAN VIOLATION: Harness BUG_ASSERT predicate does not match Frozen Plan.\n"
                        f"   Required: {req_norm}\n"
                        f"   Found:    {act_norm}"
                    )

    if "Placeholder" in harness_sec:
        return False, "DETECTED PLACEHOLDER ASSERTION. You MUST implement the exact logic from the Frozen Plan."
    if re.search(r"BUG_ASSERT\s*\(\s*len\s*>\s*0\s*\)", harness_sec):
        return False, "WEAK ASSERTION DETECTED: 'BUG_ASSERT(len > 0)' is too generic."

    main_re = re.compile(r"^\s*(?:int|void)\s+main\s*\(", re.MULTILINE)
    if not main_re.search(harness_sec):
        if main_re.search(global_sec) or main_re.search(stub_sec_raw):
            return False, "STRUCTURAL ERROR: main() is outside '/* --- Harness --- */'. Move it."
        else:
            return False, "STRUCTURAL ERROR: Missing 'int main(...)' inside '/* --- Harness --- */'."

    # ------------------------------------------------------------
    # Entrypoint validation (FIX): allow multiple acceptable entrypoints
    # ------------------------------------------------------------
    entrypoints: List[str] = []
    if allowed_entrypoints:
        entrypoints = [e for e in allowed_entrypoints if isinstance(e, str) and e.strip()]
    elif required_entrypoint:
        entrypoints = [required_entrypoint]

    # Remove function *definitions* so we only detect calls
    clean_no_defs = re.sub(
        r"^\s*(?:[\w\*]+\s+)+\b[\w]+\s*\(.*?\)\s*\{",
        " ",
        clean_harness,
        flags=re.MULTILINE | re.DOTALL
    )

    called_entrypoints = [ep for ep in entrypoints if re.search(rf"\b{re.escape(ep)}\s*\(", clean_no_defs)]
    if entrypoints and not called_entrypoints:
        if allowed_entrypoints:
            return False, f"Harness does not CALL any allowed entrypoint: {', '.join(entrypoints)}."
        return False, f"Harness does not CALL required entrypoint '{required_entrypoint}'."

    # Disallow redefining *any* acceptable entrypoint in the harness
    for ep in entrypoints:
        redef_re = re.compile(
            rf"^\s*(?:[\w\s\*]+?)\b{re.escape(ep)}\s*\([^;]*?\)\s*\{{",
            re.MULTILINE
        )
        if redef_re.search(harness_sec):
            return False, f"ILLEGAL REDEFINITION: You defined '{ep}' in the Harness. Delete it."

    # ------------------------------------------------------------
    # Critical/Immutable stubs restriction
    # ------------------------------------------------------------
    vcfg = (policy or {}).get("validation", {}) or {}
    replay_critical = set(vcfg.get("hash_function_names", []) or [])
    if frozen_plan:
        replay_critical |= compute_immutable_set(frozen_plan)

    clean_stub_sec = strip_c_comments_and_strings(stub_sec_raw)
    if replay_critical:
        for fn in replay_critical:
            fn_def_re = re.compile(
                rf"^\s*(?:static\s+)?[A-Za-z0-9_]+\s+\b{re.escape(fn)}\s*\([^;]*\)\s*\{{",
                re.MULTILINE
            )
            if fn_def_re.search(clean_stub_sec):
                return False, f"ILLEGAL DEFINITION: You defined '{fn}' in Stubs. It is Critical/Immutable."

    # ------------------------------------------------------------
    # Self-fulfilling assertion check: must pass checked var to a called entrypoint
    # ------------------------------------------------------------
    if entrypoints:
        sym_vars = re.findall(r"klee_make_symbolic\s*\(\s*(?:&)?(\w+)", harness_sec)
        clean_code = strip_c_comments_and_strings(harness_sec)

        # Prefer only entrypoints that are actually called (reduces false flags)
        eps_for_flow = called_entrypoints if called_entrypoints else entrypoints

        for var in sym_vars:
            if len(var) < 3 or var in ["key", "buf", "str", "ptr", "len", "ret"]:
                continue
            bug_assert_hit = re.search(rf"BUG_ASSERT\s*\(\s*(!\s*)?\b{re.escape(var)}\b", clean_code)
            check_read_hit = re.search(rf"CHECK_READ\s*\(\s*.*?\b{re.escape(var)}\b", clean_code)
            if not (bug_assert_hit or check_read_hit):
                continue

            passed = False
            for ep in eps_for_flow:
                if re.search(rf"\b{re.escape(ep)}\s*\([^;]*\b{re.escape(var)}\b", clean_code):
                    passed = True
                    break
            if not passed:
                return False, f"SELF-FULFILLING ASSERTION: Variable '{var}' checked but not passed to entrypoint."

    # ------------------------------------------------------------
    # Policy: small buffer constraints that prevent bug
    # ------------------------------------------------------------
    buf_size_match = re.search(r"char\s+\w+\[(\d+)\]", clean_harness)
    buf_size = int(buf_size_match.group(1)) if buf_size_match else 0
    if buf_size > 0 and buf_size < 1024:
        if re.search(r"klee_assume\s*\([^;]*\bsizeof\b", clean_harness):
            return False, "POLICY VIOLATION: Used 'sizeof' in klee_assume with small buffer (Safety Coupling)."
        if re.search(rf"klee_assume\s*\([^;]*[<]=?\s*{buf_size}\s*\)", clean_harness):
            return False, f"POLICY VIOLATION: Constrained len < {buf_size}. This prevents the bug."

    forbidden_stubs = ["strlen", "malloc", "calloc", "free"]
    for func in forbidden_stubs:
        if re.search(rf"^\s*#\s*define\s+\b{func}\b\s+stub_{func}", clean_harness, re.MULTILINE):
            return False, f"PHANTOM STUB DETECTED: Do not stub '{func}'. The target uses the real libc."

    return True, ""


def find_typedef_global(src_root: Path, type_name: str) -> Optional[str]:
    cmd = ["grep", "-r", "-h", f"typedef .* {type_name};", str(src_root)]
    rc, out, _, _ = run_cmd(cmd)
    if rc == 0 and out.strip():
        for line in out.splitlines():
            line = line.strip()
            if line.startswith("typedef") and line.endswith(";") and type_name in line: return line
    cmd_loose = ["grep", "-r", "-h", f"typedef .*{type_name}", str(src_root)]
    rc, out, _, _ = run_cmd(cmd_loose)
    if rc == 0 and out.strip():
        for line in out.splitlines():
            line = line.strip()
            parts = line.split()
            if len(parts) >= 3 and parts[0] == "typedef":
                last = parts[-1].rstrip(";")
                if last == type_name: return line
    return None

def find_opaque_struct_global(src_root: Path, struct_name: str) -> Optional[str]:
    cmd = ["grep", "-r", "-l", f"struct {struct_name}", str(src_root)]
    rc, out, _, _ = run_cmd(cmd)
    if rc != 0 or not out.strip(): return None
    candidate_files = out.strip().splitlines()
    start_pat = re.compile(rf"struct\s+{re.escape(struct_name)}\s*\{{")
    for fpath_str in candidate_files:
        try:
            if not fpath_str.endswith((".c", ".h")): continue
            content = Path(fpath_str).read_text(encoding="utf-8", errors="ignore")
            match = start_pat.search(content)
            if not match: continue
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
                        sc_idx = content.find(';', i)
                        if sc_idx != -1: end_idx = sc_idx + 1
                        break
            if end_idx != -1: return f"/* Definition found in {Path(fpath_str).name} */\n" + content[start_idx:end_idx]
        except Exception: continue
    return None

def compute_immutable_set(frozen_plan: Dict[str, Any]) -> set:
    immutable = set()
    ep = frozen_plan.get("entrypoint", {}).get("name")
    if ep: immutable.add(ep)
    for call in frozen_plan.get("call_sequence", []):
        if "function" in call: immutable.add(call["function"])
    for func in frozen_plan.get("embedding_plan", {}).get("must_embed_functions", []):
        if "name" in func: immutable.add(func["name"])
    return {x for x in immutable if x}

def preflight_check(harness_src: str, strategy: str) -> List[str]:
    errors: List[str] = []
    strategy_u = (strategy or "").upper()
    try: clean = strip_c_comments_and_strings(harness_src or "")
    except Exception: clean = harness_src or ""

    def _collect_len_indexed_buffers(text: str) -> Set[str]:
        bufs: Set[str] = set()
        for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\[\s*len\s*\]", text): bufs.add(m.group(1))
        for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\[\s*len\s*-\s*1\s*\]", text): bufs.add(m.group(1))
        return bufs

    def _split_assume_exprs(text: str) -> List[str]:
        out: List[str] = []
        for m in re.finditer(r"\bklee_assume\s*\(\s*([^;]*?)\s*\)\s*;", text): out.append(m.group(1).strip())
        return out

    def _is_len_bound_by_sizeof_buf(expr: str, buf: str) -> bool:
        e = re.sub(r"\s+", " ", expr.strip())
        len_term = r"(?:\(\s*(?:unsigned|int|size_t|long|unsigned long|uint32_t|uint64_t|uintptr_t)\s*\)\s*)?len"
        sizeof_term = rf"(?:\(\s*(?:unsigned|int|size_t|long|unsigned long|uint32_t|uint64_t|uintptr_t)\s*\)\s*)?sizeof\s*\(\s*{re.escape(buf)}\s*\)"
        if re.search(rf"\b{len_term}\b\s*<\s*{sizeof_term}\b", e): return True
        if re.search(rf"\b{len_term}\b\s*<=\s*{sizeof_term}\b", e): return True
        if re.search(rf"\b{len_term}\b\s*<=\s*{sizeof_term}\b\s*-\s*1\b", e): return True
        if re.search(rf"\b{len_term}\b\s*<\s*{sizeof_term}\b\s*-\s*1\b", e): return True
        return False

    if ("OOB" in strategy_u) or ("READ" in strategy_u) or ("WRITE" in strategy_u):
        if (re.search(r"\bmin\s*\(\s*[^,]+,\s*sizeof\s*\(", clean) or re.search(r"\bsizeof\s*\([^)]*\)\s*\?\s*[^:]*:\s*[^;]*\b", clean)):
            errors.append("PRE-FLIGHT ERROR: Detected length clamping with 'min(..., sizeof(...))' (or equivalent).\nCAUSE: Clamping forces safety and can optimize the OOB condition out of existence.\nFIX: Do not clamp. Let the target code enforce bounds; keep harness inputs unconstrained except for realism/perf.")
        indexed_bufs = _collect_len_indexed_buffers(clean)
        assume_exprs = _split_assume_exprs(clean)
        sizeof_assumes = [e for e in assume_exprs if re.search(r"\bsizeof\s*\(", e)]
        if sizeof_assumes:
            allowed: List[str] = []
            suspicious: List[str] = []
            for expr in sizeof_assumes:
                ok = False
                for buf in indexed_bufs:
                    if _is_len_bound_by_sizeof_buf(expr, buf):
                        ok = True
                        break
                if ok: allowed.append(expr)
                else: suspicious.append(expr)
            for expr in suspicious:
                errors.append(f"PRE-FLIGHT ERROR: Detected 'klee_assume(...)' that references 'sizeof(...)' but does NOT appear to be\na harness-local safety guard for an actual 'BUF[len]' / 'BUF[len-1]' access.\nCAUSE: This is often a safety-coupling assumption (e.g., len < sizeof(buf)) that hides the bug.\nOFFENDING: klee_assume({expr});\nFIX: Remove sizeof()-based safety assumptions unless they are strictly preventing a harness-local OOB\n     (i.e., the harness itself indexes BUF[len] or BUF[len-1]). Keep only realism/perf bounds (len>0, len<4096).")
            for expr in allowed:
                errors.append(f"PRE-FLIGHT WARNING: Allowed sizeof()-based klee_assume used for harness-local safety (protecting BUF[len] / BUF[len-1]): klee_assume({expr});")

    def _split_args_top_level(arg_str: str) -> List[str]:
        out: List[str] = []
        cur: List[str] = []
        depth = 0
        for ch in arg_str:
            if ch == "(": depth += 1
            elif ch == ")": depth = max(0, depth - 1)
            if ch == "," and depth == 0:
                out.append("".join(cur).strip())
                cur = []
            else: cur.append(ch)
        tail = "".join(cur).strip()
        if tail: out.append(tail)
        return out

    sym_vars: set[str] = set()
    sym_vars.update(re.findall(r"\bklee_make_symbolic\s*\(\s*&?\s*([A-Za-z_][A-Za-z0-9_]*)\b", clean))
    sym_vars.update(re.findall(r"\bklee_range\s*\(\s*[^,]+,\s*[^,]+,\s*\"([A-Za-z_][A-Za-z0-9_]*)\"", clean))

    def _is_concrete_constant_ident(ident: str) -> bool:
        if re.search(rf"\b(?:static\s+)?const\b[^;\n]*\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b", clean): return True
        if re.search(rf"\b(?:size_t|ssize_t|int|unsigned\s+int|long|unsigned\s+long|uint64_t|uint32_t|uint16_t|uint8_t|uintptr_t)\b[^;\n]*\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b", clean): return True
        if re.search(rf"\b{re.escape(ident)}\b\s*=\s*(?:\d+|0x[0-9a-fA-F]+)\b\s*;", clean): return True
        if re.search(rf"^\s*#\s*define\s+{re.escape(ident)}\s+(?:\d+|0x[0-9a-fA-F]+)\b", harness_src or "", re.MULTILINE): return True
        return False

    def _expr_depends_on_symbolic(expr: str) -> bool:
        for v in sym_vars:
            if re.search(rf"\b{re.escape(v)}\b", expr): return True
        return False

    alloc_calls = re.finditer(r"\b(malloc|calloc|realloc)\s*\(\s*([^\)]*?)\s*\)", clean)
    for m in alloc_calls:
        fn = m.group(1)
        args_str = m.group(2)
        args = _split_args_top_level(args_str)
        size_exprs: List[str] = []
        if fn == "malloc":
            if len(args) >= 1: size_exprs = [args[0]]
        elif fn == "realloc":
            if len(args) >= 2: size_exprs = [args[1]]
        elif fn == "calloc":
            if len(args) >= 2: size_exprs = [args[0], args[1]]
        for aexpr in (e.strip() for e in size_exprs if e and e.strip()):
            if re.fullmatch(r"(?:\d+|0x[0-9a-fA-F]+)", aexpr): continue
            if re.fullmatch(r"[A-Z0-9_]+", aexpr): continue
            if re.fullmatch(r"sizeof\s*\([^)]*\)(?:\s*[\*\/]\s*(?:\d+|0x[0-9a-fA-F]+|[A-Z0-9_]+))*", aexpr): continue
            if _expr_depends_on_symbolic(aexpr):
                errors.append(f"PRE-FLIGHT ERROR: Detected dynamic allocation with symbolic-dependent size in '{fn}({aexpr})'.\nCAUSE: KLEE cannot reliably handle symbolic allocation sizes; it often concretizes or fails.\nFIX: Use fixed-size buffers (e.g., 'char buf[64];') OR allocate a fixed heap size.")
                continue
            ident_m = re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", aexpr)
            if ident_m:
                ident = ident_m.group(0)
                if ident in sym_vars:
                    errors.append(f"PRE-FLIGHT ERROR: Detected dynamic allocation with symbolic size in '{fn}({ident})'.\nCAUSE: Allocation size depends on a symbolic variable.\nFIX: Replace with a fixed-size buffer/allocation and keep only Frozen Plan realism/perf assumptions.")
                    continue
                if _is_concrete_constant_ident(ident): continue
                errors.append(f"PRE-FLIGHT WARNING: Detected allocation with variable size in '{fn}({ident})' that is not proven constant.\nRISK: If this variable becomes symbolic, KLEE may concretize/fail.\nFIX: Prefer a literal/macro constant (e.g., 64/256/4096) or 'const size_t X=64;'. Do NOT tie allocation size to symbolic inputs.")
                continue
            tmp = re.sub(r"sizeof\s*\([^)]*\)", "SIZEOF", aexpr)
            idents = [x for x in re.findall(r"\b[A-Za-z_][A-Za-z0-9_]*\b", tmp) if x != "SIZEOF"]
            if idents and all(re.fullmatch(r"[A-Z0-9_]+", x) or _is_concrete_constant_ident(x) for x in idents): continue
            errors.append(f"PRE-FLIGHT WARNING: Detected allocation size expression that is not proven constant in '{fn}({aexpr})'.\nRISK: Non-constant allocation sizes are fragile; if they become symbolic, KLEE may fail.\nFIX: Use a fixed-size buffer (stack or heap) or ensure the expression is purely constant (literals/macros/sizeof * literal).")

    if re.search(r"\bbcmp\s*\(", clean):
        has_macro = re.search(r"#\s*define\s+bcmp\s+memcmp\b", clean) is not None
        has_shim = re.search(r"\b(?:int|unsigned\s+int|long|size_t)\s+bcmp\s*\([^)]*\)\s*\{[^}]*\bmemcmp\s*\(", clean, re.DOTALL) is not None
        if not (has_macro or has_shim):
            errors.append("PRE-FLIGHT ERROR: Used 'bcmp' without a redirector/shim.\nCAUSE: 'bcmp' is often missing from KLEE's uclibc, leading to external-call failures.\nFIX (choose one):\n  A) Add:  #define bcmp memcmp\n  B) Add:  int bcmp(const void *s1, const void *s2, size_t n) { return memcmp(s1, s2, n); }")

    if ("OOB" in strategy_u) and ("klee_assume" not in clean):
        errors.append("PRE-FLIGHT WARNING: No 'klee_assume' found in an OOB harness.\nRISK: KLEE may pick trivial values (e.g., len=0) and miss the vulnerability.\nFIX: Add realism/performance constraints (e.g., len>0, len<4096) per the Frozen Plan.")

    if "klee_assume" in clean:
        if re.search(r"klee_assume\s*\([^;]*\bstrlen\s*\(", clean):
            errors.append("PRE-FLIGHT ERROR: Detected 'klee_assume' using 'strlen'.\nCAUSE: KLEE's strlen is path-sensitive. Using it in an assumption often leads to 'invalid klee_assume call (provably false)' on edge cases (e.g. empty strings).\nFIX: Use C-level filtering instead: 'if (strlen(s) > MAX) return 0;'.\nOR: Construct the string with a known symbolic length variable and terminate it manually.")
    return errors

class StatementGraph:
    def __init__(self, inst_map, orig_map):
        self.inst_map = inst_map
        self.orig_map = orig_map
        self.chain = []       # List of (func, file, line)
        self.statuses = {}    # Node -> "PASSED" | "BLOCKED" | "TARGET" | "TIMEOUT"
        self._file_cache = {}

    def _fetch_code(self, fname, line, use_original=False):
        # Choose the correct map based on node type
        target_map = self.orig_map if use_original else self.inst_map
        candidates = target_map.get(fname, [])
        
        if not candidates: 
            return f"(Source unavailable in {'Original' if use_original else 'Instrumented'})"
        
        path = candidates[0]
        try:
            if path not in self._file_cache:
                self._file_cache[path] = path.read_text(errors="replace").splitlines()
            
            lines = self._file_cache[path]
            if 0 <= line - 1 < len(lines):
                return lines[line - 1].strip()
        except: pass
        return "(Read Error)"

    def update(self, stack_trace, is_blocker=True, is_timeout=False):
        """
        stack_trace: List of (func_name, file_name, line_num) from Root -> Leaf
        """
        if not stack_trace: return
        self.chain = stack_trace

        # Mark statuses for the prefix (Passed)
        for node in stack_trace[:-1]:
            self.statuses[node] = "PASSED"
        
        # Mark the frontier node
        last = stack_trace[-1]
        if is_timeout:
            self.statuses[last] = "TIMEOUT"
        elif is_blocker:
            self.statuses[last] = "BLOCKED"
        else:
            self.statuses[last] = "PASSED"

    def render(self):
        if not self.chain: return "(No Execution Trace Available)"
        
        out = []
        for i, node in enumerate(self.chain):
            func, fname, fline = node
            status = self.statuses.get(node, "UNKNOWN")
            
            # --- [FIX] Initialize variables for every iteration ---
            icon = "   "
            use_orig = False  # <--- Essential default value
            
            if status == "PASSED": 
                icon = "[✓]"
            elif status == "BLOCKED": 
                icon = "[X]"
            elif status == "TIMEOUT": 
                icon = "[T]"
            elif status == "TARGET": 
                icon = "[!]"
                use_orig = True # Only target uses Original Line Numbers
            
            # Visual Tree formatting
            indent = "  " * i
            out.append(f"{indent}{icon} {func} ({fname}:{fline})")
            
            # Fetch Code
            if fline > 0:
                # use_orig is guaranteed to be defined now (True or False)
                code = self._fetch_code(fname, fline, use_original=use_orig)
                out.append(f"{indent}      `{code}`")
            
            if i < len(self.chain) - 1:
                out.append(f"{indent}      ↓")
        
        return "\n".join(out)

def interactive_synthesizer(
    frozen_plan: Dict[str, Any],
    ctx: Dict[str, Any],
    args: argparse.Namespace,
    builder_prompt: str,
    out_dir: Path,
    src_root: Path,
    harness_dir: Path,
    logs_dir: Path,
    max_iters: int
) -> Tuple[str, Dict[str, Any]]:
    import datetime, json, re, shutil
    from pathlib import Path
    from typing import Any, Dict, List, Optional, Tuple

    harness_src = ""
    history: List[str] = []
    saved_bugs: List[Dict[str, Any]] = []
    saved_bugs_dir = out_dir / "saved_bugs"
    saved_bugs_dir.mkdir(parents=True, exist_ok=True)

    # --------------------------------------------------------------------------
    # Helper: Save Bug
    # --------------------------------------------------------------------------
    def _record_saved_bug(
        kind: str,
        crash_location: Optional[str],
        failure_reason: str,
        klee_out_dir: Optional[Path],
        turn_idx: int,
        harness_src_for_record: Optional[str] = None
    ) -> Dict[str, Any]:
        rec: Dict[str, Any] = {
            "kind": kind,
            "crash_location": crash_location,
            "failure_reason": failure_reason,
            "turn": turn_idx,
            "klee_out_dir": str(klee_out_dir) if klee_out_dir else None,
            "ktests": [],
            "validation": {"status": "PENDING", "result": None, "details": None},
            "created_at": datetime.datetime.now().isoformat(),
        }

        bug_dir: Optional[Path] = None
        if klee_out_dir and klee_out_dir.exists():
            try:
                ktests = sorted([p for p in klee_out_dir.glob("*.ktest") if p.is_file()])
                if not ktests:
                    ktests = sorted([p for p in klee_out_dir.glob("**/*.ktest") if p.is_file()])

                bug_id = f"bug_{len(saved_bugs):03d}_turn{turn_idx}"
                bug_dir = saved_bugs_dir / bug_id
                bug_dir.mkdir(parents=True, exist_ok=True)

                for kp in ktests:
                    try:
                        shutil.copy2(kp, bug_dir / kp.name)
                        rec["ktests"].append(str(bug_dir / kp.name))
                    except Exception:
                        rec["ktests"].append(str(kp))

                rec["bug_dir"] = str(bug_dir)

                if harness_src_for_record:
                    (bug_dir / "harness.c").write_text(harness_src_for_record, encoding="utf-8")
                    rec["harness_path"] = str(bug_dir / "harness.c")
            except Exception as e:
                rec["ktests_error"] = str(e)

        try:
            out_json_base = bug_dir if bug_dir else saved_bugs_dir
            out_json = out_json_base / f"record_{len(saved_bugs):03d}.json"
            out_json.write_text(json.dumps(rec, indent=2, sort_keys=True), encoding="utf-8")
            rec["record_path"] = str(out_json)
        except Exception:
            pass

        saved_bugs.append(rec)
        return rec

    # --------------------------------------------------------------------------
    # Helper: Text Cap
    # --------------------------------------------------------------------------
    def _cap_text(s: Any, n: int) -> str:
        if not isinstance(s, str):
            s = str(s)
        if len(s) <= n:
            return s
        keep = n // 2
        return s[:keep] + f"\n...[middle {len(s)-n} chars truncated]...\n" + s[-keep:]

    # --------------------------------------------------------------------------
    # Auto-Repair: Collision detection from compilation logs
    # --------------------------------------------------------------------------
    _RX_COLLISION = [
        # clang/ld
        re.compile(r"multiple definition of `([^`']+)`"),
        re.compile(r"duplicate symbol: ([^\s]+)"),
        re.compile(r"ld: error: duplicate symbol: ([^\s]+)"),
        # lld variants
        re.compile(r"error: duplicate symbol: ([^\s]+)"),
        re.compile(r"symbol '([^']+)' is already defined"),
        # llvm-link-ish
        re.compile(r"multiply defined symbol\s+([^\s]+)"),
    ]

    def _extract_colliding_symbols(compiler_log: str) -> List[str]:
        syms: List[str] = []
        for line in compiler_log.splitlines():
            for rx in _RX_COLLISION:
                m = rx.search(line)
                if m:
                    sym = m.group(1).strip()
                    # strip common decorations
                    sym = sym.replace("@@", "").strip()
                    if sym and sym not in syms:
                        syms.append(sym)
        return syms

    def _rename_function_definition(code: str, old: str, new: str) -> str:
        """
        Rename the *definition* of a function and any direct calls inside the harness.
        This is intentionally conservative to avoid breaking library headers.
        """
        # Rename function definitions:  <ret> old(<args>) {
        def_rx = re.compile(
            rf"(^\s*(?:[A-Za-z_]\w*[\s\*]+)+){re.escape(old)}(\s*\([^;]*\)\s*\{{)",
            re.MULTILINE
        )
        code2 = def_rx.sub(rf"\1{new}\2", code)

        # Rename direct calls: old(
        call_rx = re.compile(rf"(?<![#\w]){re.escape(old)}\s*\(")
        code2 = call_rx.sub(f"{new}(", code2)
        return code2

    def _auto_repair_collisions_from_log(code: str, compiler_log: str) -> Tuple[str, List[str]]:
        """
        If the harness defines a symbol that collides with project.bc, rename it and
        add a macro alias ONLY if safe (i.e., the harness intended to override).
        """
        collisions = _extract_colliding_symbols(compiler_log)
        if not collisions:
            return code, []

        repaired = code
        applied: List[str] = []

        # Identify functions actually *defined* in the harness.
        defined_funcs = set(re.findall(
            r"^\s*(?:[A-Za-z_]\w*[\s\*]+)+([A-Za-z_]\w*)\s*\([^;]*\)\s*\{",
            repaired,
            flags=re.MULTILINE
        ))

        for sym in collisions:
            # Only fix if harness defines it (otherwise it isn't ours to rename).
            if sym not in defined_funcs:
                continue

            new = f"stub_{sym}"
            repaired = _rename_function_definition(repaired, sym, new)

            # Add a macro alias so remaining references (incl. included code in harness) resolve.
            # We place macros near the top, before includes, in a best-effort way.
            if f"#define {sym} {new}" not in repaired:
                repaired = f"#define {sym} {new}\n" + repaired

            applied.append(sym)

        return repaired, applied

    # --------------------------------------------------------------------------
    # Setup: Constraints & Oracle
    # --------------------------------------------------------------------------
    dynamic_constraints: List[str] = []
    current_timeout = args.timeout
    best_stats = {"status": "none", "score": 0, "failure_reason": "No iterations", "final_harness": "", "best_turn": -1}
    best_label = "E"
    required_entrypoint = str((frozen_plan.get("entrypoint", {}) or {}).get("name") or "unknown_entrypoint")

    immutable_funcs = compute_immutable_set(frozen_plan)
    immutable_str = ", ".join(sorted(immutable_funcs))

    fm = (frozen_plan or {}).get("frozen_meta", {}) or {}
    oracle_id = str(fm.get("frozen_assertion_id") or "").strip()
    oracle_call = str(fm.get("frozen_assertion_call") or "").strip()

    if oracle_id == "CHECK_READ":
        oracle_snippet = (
            "/* FROZEN ORACLE */\n"
            "#define CHECK_READ(ptr, len) klee_check_memory_access((void*)(ptr), (size_t)(len))\n"
            + (oracle_call if oracle_call else "CHECK_READ(ptr, len);")
            + "\n"
        )
    elif oracle_id == "BUG_ASSERT":
        oracle_snippet = (
            "/* FROZEN ORACLE */\n"
            "#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\n"
            + (oracle_call if oracle_call else "BUG_ASSERT(cond);")
            + "\n"
        )
    else:
        oracle_snippet = "/* FROZEN ORACLE */\n/* Must include BUG_ASSERT(...) or CHECK_READ(...) */\n"

    plan_constraints = ""
    for asm in frozen_plan.get("assumptions", []):
        if isinstance(asm, dict) and asm.get("type") == "klee_assume":
            plan_constraints += f"- REQUIRED ASSUMPTION: {asm.get('constraint')}\n"

    sticky_constraints = (
        "STICKY CONSTRAINTS (HARD):\n"
        "- Preserve section markers.\n"
        "- main() inside /* --- Harness --- */ only.\n"
        f"- Entrypoint: {required_entrypoint}\n"
        f"- IMMUTABLE: {immutable_str}\n"
        f"{plan_constraints}"
        f"{oracle_snippet}"
        "\nNOTE: HISTORY lines may include structured dumps; treat them as authoritative error reports.\n"
    )

    print("\n[=] PHASE 2: Iterative Refinement (Concrete -> Symbolic)")
    budget_used = 0
    total_turns = 0
    max_total_limit = max_iters * 3

    # --------------------------------------------------------------------------
    # [DIAGNOSIS AGENT] 1. Signal Collector Setup
    # --------------------------------------------------------------------------
    inst_file_map: Dict[str, List[Path]] = {}
    orig_file_map: Dict[str, List[Path]] = {}
    inst_root = out_dir.parent / "instrumented_source"

    if inst_root.exists():
        for p in inst_root.rglob("*.[ch]*"):
            inst_file_map.setdefault(p.name, []).append(p)

    if src_root.exists():
        for p in src_root.rglob("*.[ch]*"):
            orig_file_map.setdefault(p.name, []).append(p)

    statement_graph = StatementGraph(inst_file_map, orig_file_map)
    blocker_memory: Dict[Tuple[str, str, str], int] = {}

    target_f = Path(ctx["vul_file"]).name
    target_l = int(ctx["vul_line"])
    statement_graph.chain = [
        (required_entrypoint, "harness.c", 0),
        ("...", "", 0),
        ("TARGET", target_f, target_l),
    ]
    statement_graph.statuses = {
        (required_entrypoint, "harness.c", 0): "PASSED",
        ("...", "", 0): "UNKNOWN",
        ("TARGET", target_f, target_l): "TARGET",
    }

    print("\n*** STATEMENT GRAPH (MISSION OBJECTIVE) ***")
    print(statement_graph.render())
    print("*******************************************\n")

    # --------------------------------------------------------------------------
    # REFINEMENT LOOP
    # --------------------------------------------------------------------------
    while budget_used < max_iters and total_turns < max_total_limit:
        i = total_turns
        print(f"\n  --- [Refinement Turn {i+1} (Budget {budget_used+1}/{max_iters})] ---")

        last_failure = _cap_text(history[-1], 2500) if history else "(none)"
        history_tail = "\n\n".join(_cap_text(h, 800) for h in history[-3:-1]) if len(history) > 1 else ""

        anti_search_msg = ""
        if len(ctx["enclosing_function"].splitlines()) > 50:
            target_fname = Path(ctx["vul_file"]).name
            anti_search_msg = f"\n[SYSTEM NOTICE]: Source for '{target_fname}' is loaded above. DO NOT use `find`."

        dyn_constraints_text = ""
        if dynamic_constraints:
            dyn_constraints_text = (
                "\n[!!! ACTIVE CONSTRAINT ENFORCEMENT - DO NOT IGNORE !!!]\n"
                + "\n".join(dynamic_constraints)
                + "\n"
            )

        user_msg = (
            f"{sticky_constraints}\n"
            f"{dyn_constraints_text}\n"
            f"LAST FAILURE (Read Carefully):\n{last_failure}\n\n"
            f"PRIOR HISTORY:\n{history_tail}\n"
            f"TARGET CODE CONTEXT:\n```c\n{ctx['enclosing_function']}\n```\n"
            f"Current Harness:\n{_cap_text(harness_src, 2000)}\n"
            f"{anti_search_msg}\n"
            "TASK: Fix errors. Output JSON only: { \"harness\": \"<C code>\" }"
        )

        ensure_dir(out_dir)
        messages = [{"role": "system", "content": builder_prompt}, {"role": "user", "content": user_msg}]
        raw_response, usage = llm_chat(messages)
        update_token_stats(usage)
        (out_dir / f"refine_T{i:02d}_raw_response.txt").write_text(str(raw_response), encoding="utf-8")

        code, _meta = extract_harness_code_from_llm_response(str(raw_response))
        if not code:
            print("  [!] Error: Agent returned no code.")
            history.append("SYSTEM: You failed to provide a ```c code block.")
            if best_stats["score"] == 0:
                best_stats["failure_reason"] = "No code returned"
            budget_used += 1
            total_turns += 1
            continue

        # Auto-Repair: Remove redundant assertions (if instrumented predicate strategy)
        if "instrumented_predicate" in str(ctx.get("strategy")):
            code = re.sub(r"\bBUG_ASSERT\s*\([^;]*\)\s*;?", "", code)
            code = re.sub(r"\bREACH_ASSERT\s*\([^;]*\)\s*;?", "", code)

        # Inject standard headers
        strategy_name = ((ctx.get("strategy") or {}).get("name") or "")
        harness_src = inject_standard_headers(code, frozen_plan=frozen_plan, strategy=strategy_name)

        # Pre-Flight
        pre_flight = preflight_check(harness_src, strategy_name)
        if any("PRE-FLIGHT ERROR" in msg for msg in pre_flight):
            print("      [!] Blocking Execution due to PRE-FLIGHT ERROR.")
            history.append("\n".join(pre_flight))
            budget_used += 1
            total_turns += 1
            continue

        required_entrypoint = str((frozen_plan.get("entrypoint", {}) or {}).get("name") or "unknown_entrypoint")

        allowed = set([required_entrypoint])
        for x in (frozen_plan.get("reachability_chain") or []):
            if isinstance(x, str) and x.strip():
                allowed.add(x.strip())

        # Validation
        try:
            is_valid, err_msg = validate_harness_structure(
                harness_src, required_entrypoint,
                args.validation_policy_obj, args.rule_id,
                args.spec_stem, frozen_plan, allowed_entrypoints=sorted(allowed) 
            )
        except Exception as e:
            is_valid, err_msg = False, str(e)

        if not is_valid:
            print(f"  [!] Harness Validation Failed: {err_msg}")
            if "does not CALL required entrypoint" in str(err_msg):
                history.append(f"[RED CARD]: You removed the call to '{required_entrypoint}'. Restore it immediately.")
            else:
                history.append(f"SYSTEM ERROR: Structure Invalid.\nREASON: {err_msg}")
            budget_used += 1
            total_turns += 1
            continue

        # Compilation
        ensure_dir(harness_dir)
        (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")
        print("  [*] Compiling to Bitcode...")

        okc, msg, bc = compile_harness_to_bc(
            args, src_root,
            harness_dir / "harness.c",
            harness_dir / "harness.bc",
            Path(args.project_bc) if args.project_bc else None
        )[0:3]

        # If compilation fails, try collision auto-repair using the compiler log (generic)
        if not okc:
            repaired, applied = _auto_repair_collisions_from_log(harness_src, msg or "")
            if applied:
                print(f"  [i] Auto-Repair: Renaming colliding stubs: {applied}")
                history.append(f"[SYSTEM] Auto-repaired symbol collisions: {applied}")
                harness_src = repaired
                (harness_dir / "harness.c").write_text(harness_src, encoding="utf-8")
                okc, msg, bc = compile_harness_to_bc(
                    args, src_root,
                    harness_dir / "harness.c",
                    harness_dir / "harness.bc",
                    Path(args.project_bc) if args.project_bc else None
                )[0:3]

        if not okc:
            print("  [!] Compilation Failed.")
            summary = summarize_log(msg, "Clang Error")
            history.append(f"COMPILATION ERROR:\n{summary}")
            budget_used += 1
            total_turns += 1
            continue

        # Run KLEE
        print("  [*] Running KLEE...")
        stats = run_klee(
            bc_path=bc,
            klee=args.klee,
            flags=args.klee_flags,
            timeout=current_timeout,
            log_dir=logs_dir,
            idx=i,
            target_file=ctx.get("vul_file", ""),
            target_line=ctx.get("vul_line", 0),
        )


        # [DIAG] Summarize this execution step for both the console log and LLM history.
        diag_status = str(stats.get("status") or "unknown")
        diag_reason = str(stats.get("failure_reason") or "")
        diag_crash  = str(stats.get("crash_type") or "none")
        diag_reach  = "REACH_ASSERT" if stats.get("reach_assert_hit") else ""
        diag_bug    = "BUG_ASSERT" if stats.get("bug_assert_hit") else ""
        diag_loc    = str(stats.get("crash_location") or "")
        diag_line = f"[DIAG] exec: status={diag_status} crash={diag_crash} {diag_bug} {diag_reach} loc={diag_loc} reason={_cap_text(diag_reason,220)}"
        print("  " + diag_line)
        history.append(diag_line)
        klee_out_dir = logs_dir / f"klee-out-{i}"
        stack_tuples: List[Tuple[str, str, int]] = []
        is_timeout = (stats.get("status") == "timeout")

        # Trace extraction (same logic, condensed)
        if klee_out_dir.exists():
            for err_file in sorted(klee_out_dir.glob("*.err")):
                try:
                    content = err_file.read_text(errors="replace")
                    matches = re.findall(
                        r"^\s*#\S+\s+(?:0x[0-9a-fA-F]+\s+)?in\s+([^\s\(]+).*?at\s+([^:\n]+):(\d+)",
                        content,
                        flags=re.MULTILINE
                    )
                    if matches:
                        for func, fpath, fline in matches[::-1]:
                            stack_tuples.append((func, Path(fpath).name, int(fline)))
                    if stack_tuples:
                        break
                except Exception:
                    pass

        if not stack_tuples:
            if is_timeout:
                stack_tuples = [(required_entrypoint, "harness.c", 0)]
            elif stats.get("bug_found"):
                loc = stats.get("crash_location", "unknown:0")
                m = re.search(r"([\w\-\.]+\.(?:c|cc|cpp|h|hpp)):(\d+)", str(loc))
                if m:
                    stack_tuples = [("UnknownFunc", m.group(1), int(m.group(2)))]
                else:
                    stack_tuples = [(required_entrypoint, "harness.c", 0)]
            else:
                stack_tuples = [(required_entrypoint, "harness.c", 0), ("Execution Finished", "", 0)]

        if stack_tuples:
            statement_graph.update(stack_tuples, is_blocker=bool(stats.get("bug_found")), is_timeout=is_timeout)

        graph_visualization = statement_graph.render()
        print("\n*** STATEMENT GRAPH (UPDATED) ***")
        print(graph_visualization)
        print("***********************************\n")

        # SUCCESS
        if stats.get("bug_found") and stats.get("crash_type") == "spec":
            print(f"  [+] TARGET BUG REPRODUCED: {stats.get('failure_reason')}")
            saved_bugs.append(stats)
            best_stats = stats
            best_label = "SPEC_BUG"
            break

        # FAILURE PATH
        if stats.get("bug_found"):
            _record_saved_bug(
                stats.get("crash_type", "none"),
                stats.get("crash_location"),
                stats.get("failure_reason", ""),
                klee_out_dir,
                i,
                harness_src_for_record=harness_src
            )

        c_file_name = stack_tuples[-1][1] if stack_tuples else ""
        c_line = stack_tuples[-1][2] if stack_tuples else 0
        c_func_name = stack_tuples[-1][0] if stack_tuples else "unknown_function"
        if c_func_name.startswith("?"):
            c_func_name = "the_crashing_function"

        blocker_key = (c_func_name, c_file_name, str(c_line))
        blocker_memory[blocker_key] = blocker_memory.get(blocker_key, 0) + 1
        recurrence = blocker_memory[blocker_key]

        # snippet extraction (best-effort)
        context_snippet = ""
        last_stmt_text = "(Unknown)"
        if c_file_name:
            candidates = inst_file_map.get(c_file_name, [])
            if candidates:
                try:
                    lines = candidates[0].read_text(errors="replace").splitlines()
                    if 0 <= c_line - 1 < len(lines):
                        last_stmt_text = lines[c_line - 1].strip()
                        start_l = max(0, c_line - 3)
                        end_l = min(len(lines), c_line + 2)
                        snippet = [
                            f"{'>>' if (idx+1)==c_line else '  '} {idx+1}: {lines[idx]}"
                            for idx in range(start_l, end_l)
                        ]
                        context_snippet = "\n".join(snippet)
                except Exception:
                    pass

        log_summary = summarize_log(stats.get("full_log", ""), "KLEE Log")
        graph_context = (
            "\nSTATEMENT GRAPH (Execution Flow):\n"
            "-------------------------------------------------\n"
            f"{graph_visualization}\n"
            "-------------------------------------------------\n"
        )

        escalation_msg = ""
        if recurrence >= 2:
            escalation_msg = (
                f"\n[ESCALATION]: You have failed to fix this error {recurrence} times. "
                f"IGNORE all other goals. FIX THIS CRASH."
            )

        # Key change: Intrinsic crashes are handled as “STEER AWAY” barriers, not “stub it”
        failure_reason = str(stats.get("failure_reason", ""))
        is_intrinsic = ("intrinsic" in failure_reason.lower()) or ("llvm.load.relative" in failure_reason.lower())

        current_score = 0.5
        current_label = "H0 (Miss)"
        feedback_body = ""

        if is_timeout:
            current_score = 1
            current_label = "H1 (Timeout)"
            feedback_body = (
                f"[DIAGNOSIS]: Execution TIMED OUT.\n"
                f"STALLED AT: `{last_stmt_text}` inside `{c_func_name}`.\n"
                f"ACTION: Stub `{c_func_name}` or reduce symbolic array sizes.{escalation_msg}"
            )

        elif stats.get("bug_found") and is_intrinsic:
            current_score = 0.5
            current_label = "BLOCKER (INTRINSIC)"
            # [STAILOR] Intrinsic mitigation: patch the crashing project function body in instrumented source
            blocker = _extract_klee_intrinsic_blocker(str(stats.get("full_log", "")))
            if blocker:
                ok_m, note_m = _mitigate_intrinsic_blocker_in_src(src_root, blocker, execution_log=(out_dir / "execution.log"))
                if ok_m:
                    history.append(f"[INTRINSIC-MITIGATION]: {note_m}")
                else:
                    history.append(f"[INTRINSIC-MITIGATION-FAIL]: {note_m}")

            feedback_body = (
                f"[DIAGNOSIS]: Execution BLOCKED by LLVM intrinsic in PROJECT bitcode.\n"
                f"CRASH FUNCTION: `{c_func_name}` ({c_file_name}:{c_line})\n"
                f"CRASH STMT: `{last_stmt_text}`\n"
                f"REASON: {failure_reason}\n"
                f"CRASH CONTEXT:\n{context_snippet}\n"
                f"ACTION: Auto-mitigate intrinsic by stubbing the crashing function body in instrumented source (callsite-safe alternative when possible). {escalation_msg}"
            )
            # Make it sticky/hard so the agent stops trying to stub forbidden project funcs.
            dynamic_constraints.append(
                f"CRITICAL: Avoid calling `{c_func_name}` / error-reporting paths; do NOT define/stub it in harness."
            )

        elif stats.get("bug_found"):
            current_score = 0.5
            current_label = f"BLOCKER ({stats.get('crash_type')})"
            feedback_body = (
                f"[DIAGNOSIS]: Execution BLOCKED by {stats.get('crash_type','UNKNOWN').upper()} crash.\n"
                f"CRASH FUNCTION: `{c_func_name}`\n"
                f"CRASH STMT: `{last_stmt_text}`\n"
                f"REASON: {failure_reason}\n"
                f"CRASH CONTEXT:\n{context_snippet}\n"
                f"ACTION: Fix setup so this path is avoided or made safe.{escalation_msg}"
            )

        elif stats.get("reach_assert_hit"):
            current_score = 2
            current_label = "H2_REACH"
            feedback_body = (
                "KLEE: REACHED target (H2_REACH), but BUG_ASSERT did not fire.\n"
                "ACTION: adjust setup so the bug condition is triggered at the target."
            )

        else:
            current_score = 0.5
            current_label = "H0 (Miss)"
            feedback_body = (
                f"[DIAGNOSIS]: Execution Finished EARLY (Target Not Reached).\n"
                f"LAST EXECUTED STATEMENT: `{last_stmt_text}`\n"
                f"ACTION: Change the harness setup to satisfy the condition at this line."
            )

        full_msg = f"{feedback_body}\n{graph_context}\n\n[LOGS]:\n{log_summary}"

        print("-" * 60)
        print(" [DIAGNOSIS & STRATEGY SENT TO AGENT]")
        print("-" * 60)
        print(full_msg)
        print("-" * 60)

        history.append(full_msg)

        if current_score >= best_stats.get("score", 0):
            best_stats = dict(stats)
            best_stats["score"] = current_score
            best_stats["failure_reason"] = current_label
            best_stats["final_harness"] = harness_src
            best_stats["best_turn"] = i
            best_label = current_label

        # Cleanup
        if not stats.get("bug_found") and not stats.get("reach_assert_hit") and not is_timeout:
            if klee_out_dir.exists():
                shutil.rmtree(klee_out_dir, ignore_errors=True)
        if (harness_dir / "harness.bc").exists():
            (harness_dir / "harness.bc").unlink(missing_ok=True)

        budget_used += 1
        total_turns += 1

    # Validation: replay saved bugs (kept as-is)
    if saved_bugs:
        print("\n[=] VALIDATION: Concrete replay of all saved bugs (target + non-target)")
        validation_root = out_dir / "validation"
        validation_root.mkdir(parents=True, exist_ok=True)
        for bi, rec in enumerate(saved_bugs):
            try:
                ktests = [Path(p) for p in rec.get("ktests", []) if p]
                if not ktests:
                    continue
                bug_dir = Path(rec.get("bug_dir") or (validation_root / f"bug_{bi:03d}"))
                bug_dir.mkdir(parents=True, exist_ok=True)

                harness_text = rec.get("harness_path", "")
                if harness_text and Path(harness_text).exists():
                    harness_text = Path(harness_text).read_text(errors="ignore")
                else:
                    harness_text = harness_src

                v_status, v_msg, v_assumptions = "SKIP", "No runnable ktest", []
                for kt in ktests:
                    v_status, v_msg, v_assumptions = run_reproducer_suite(harness_text, src_root, bug_dir, kt, args)
                    if v_status != "SKIP":
                        break

                rec["validation"] = {"status": "DONE", "result": v_status, "details": {"message": v_msg}}
                if rec.get("record_path"):
                    Path(rec["record_path"]).write_text(json.dumps(rec, indent=2), encoding="utf-8")
            except Exception:
                pass

    return best_label, best_stats


def strip_c_comments_and_strings_preserve_lines(text: str) -> str:
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

def _parse_c_args(arg_str: str) -> List[Dict[str, Any]]:
    args = []
    raw_args = []
    buffer = ""
    depth = 0
    for char in arg_str:
        if char == '(': depth += 1
        elif char == ')': depth -= 1
        if char == ',' and depth == 0:
            raw_args.append(buffer.strip())
            buffer = ""
        else: buffer += char
    if buffer.strip(): raw_args.append(buffer.strip())
    for raw in raw_args:
        parts = raw.split()
        if not parts: continue
        name_token = parts[-1]
        name = name_token.lstrip("*")
        is_ptr = (name_token.count("*") > 0) or ("[" in name_token) or any("*" in p for p in parts[:-1])
        is_const = "const" in raw
        type_tokens = [p for p in parts[:-1] if p not in ["const", "volatile", "restrict", "struct", "unsigned", "signed"]]
        if not type_tokens and ("unsigned" in parts or "signed" in parts): base_type = "int" 
        else: base_type = type_tokens[0] if type_tokens else "int"
        args.append({ "name": name.replace("[]", "").replace(";", ""), "base_type": base_type, "is_ptr": is_ptr, "is_const": is_const, "raw": raw })
    return args


def auto_discover_stub_candidates(src_root: Path, vul_file_rel: str, rule_id: str) -> str:
    """Project-agnostic *safe* stub guidance for the planner.

    IMPORTANT: This function must NEVER propose body-level stubs for static helpers in the vulnerable TU.
    Those helpers often build/maintain state required to reach the target (e.g., xmlDictFindEntry).

    Instead, we only emit *gate unlock* guidance:
      - Identify early-return/goto gates whose condition depends on a *call result*.
      - Prefer callsite-aware macro overrides (or wrapper calls) that make gate conditions satisfiable.
      - Do NOT hardcode constants unless they appear in the gate predicate itself.

    This guidance is text-only; the actual enforcement happens during instrumentation filtering.
    """
    target_file = src_root / vul_file_rel
    if not target_file.exists():
        return ""

    content = target_file.read_text(errors="replace")
    masked = strip_c_comments_and_strings_preserve_lines(content)

    # Locally-defined functions in this TU (avoid treating as external gatekeepers)
    def_pat = re.compile(r"(^|\n)\s*(?:static\s+)?[\w\s\*]+?\b([A-Za-z_]\w*)\s*\([^;{}]*\)\s*\{", re.MULTILINE)
    defined_funcs = set(m.group(2) for m in def_pat.finditer(masked))

    # Gate patterns: if (f(...) != CONST) return/goto;  and if (!f(...)) return/goto;
    gate_cmp_pat = re.compile(
        r"\bif\s*\(\s*([A-Za-z_]\w*)\s*\([^\)]*\)\s*(==|!=|<=|>=|<|>)\s*((?:0x[0-9A-Fa-f]+)|(?:\d+)|(?:NULL))\s*\)\s*\{?\s*(?:return\b|goto\b)",
        re.MULTILINE,
    )
    gate_not_pat = re.compile(
        r"\bif\s*\(\s*!\s*([A-Za-z_]\w*)\s*\([^\)]*\)\s*\)\s*\{?\s*(?:return\b|goto\b)",
        re.MULTILINE,
    )

    gates = []
    for m in gate_cmp_pat.finditer(masked):
        fn, op, cst = m.group(1), m.group(2), m.group(3)
        if fn in defined_funcs:
            continue
        line_no = content.count("\n", 0, m.start()) + 1
        gates.append((fn, op, cst, line_no))
    for m in gate_not_pat.finditer(masked):
        fn = m.group(1)
        if fn in defined_funcs:
            continue
        line_no = content.count("\n", 0, m.start()) + 1
        gates.append((fn, "!", "", line_no))

    if not gates:
        return ""

    # Render a short guidance block. The planner may translate this into callsite wrappers.
    kept = ", ".join([f"{fn}{op}{cst}@L{ln}" for (fn, op, cst, ln) in gates[:12]])
    more = "" if len(gates) <= 12 else f" (+{len(gates)-12} more)"
    return (
        "\n*** [AUTO-GENERATED] SAFE GATE-UNLOCK HINTS (NO BODY STUBS) ***\n"
        f"File '{vul_file_rel}': found {len(gates)} external gate(s).\n"
        f"Gates: {kept}{more}\n"
        "Guidance:\n"
        "- Do NOT inject body-level stubs into static helpers in this TU.\n"
        "- Prefer callsite-aware wrappers or macro overrides that satisfy these gate predicates.\n"
        "- Only constrain return values to constants that appear explicitly in the gate predicate.\n"
    )

# ---------------- MAIN ----------------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sa-out-dir", required=True)
    ap.add_argument("--dataset-root", required=True)
    ap.add_argument("--project-id", required=True)
    ap.add_argument("--src-root", required=True)
    ap.add_argument("--compile-commands", dest="compile_commands", default=None,
                    help="Path to compile_commands.json (optional; enables TU-restricted Phase-1 entrypoint discovery)")
    ap.add_argument("--spec", required=True)
    ap.add_argument("--spec-stem", required=True)
    ap.add_argument("--vul-file", required=True)
    ap.add_argument("--vul-line", type=int, required=True)
    ap.add_argument("--rule-id", default=None, help="Optional override. Auto-derived from spec if missing.")
    ap.add_argument("--target-vul", required=True)
    ap.add_argument("--project-bc", default=None)
    ap.add_argument("--build-project-bc-cmd", default=None)
    ap.add_argument("--llvm-link", default=None, help="Path to llvm-link (optional; used to derive LLVM toolchain)")
    ap.add_argument("--llvm-nm", default=None, help="Path to llvm-nm (optional; used for fast symbol checks)")
    ap.add_argument("--llm-model", required=True)
    ap.add_argument("--llm-api-base", required=True)
    ap.add_argument("--clang", default="clang-14")
    ap.add_argument("--clang-flags", default="")
    ap.add_argument("--klee", default="klee")
    ap.add_argument("--klee-flags", default="")
    ap.add_argument("--max-a", type=int, default=15)
    ap.add_argument("--max-b", type=int, default=3)
    ap.add_argument("--max-cycles", type=int, default=5)
    ap.add_argument("--timeout", type=int, default=45)
    ap.add_argument("--run-dir", required=True)
    ap.add_argument("--summary-tsv", default=None)
    ap.add_argument("--validation-policy", default=os.environ.get("VALIDATION_POLICY"))
    ap.add_argument("--ql-file", help="Path to the CodeQL rule file (.ql)")
    ap.add_argument("--reproduce", action="store_true")
    ap.add_argument("--reproduce-ktest")
    args = ap.parse_args()
    
    start_time = time.time()
    if args.validation_policy and Path(args.validation_policy).exists():
        args.validation_policy_obj = load_validation_policy(args.validation_policy)
    else:
        print("  [i] Validation Policy not found or not provided. Generating automatically...")
        ql_path = Path(args.ql_file) if args.ql_file else Path("rule.ql") 
        ql_meta = parse_ql_metadata(ql_path)
        auto_policy = generate_auto_policy(args.project_id, ql_meta, args.rule_id)
        run_dir = ensure_dir(Path(args.run_dir).resolve())
        policy_path = run_dir / "auto_validation_policy.yaml"
        with policy_path.open("w", encoding="utf-8") as f: yaml.dump(auto_policy, f)
        args.validation_policy_obj = auto_policy
        print(f"  [i] Auto-generated policy saved to {policy_path}")

    _vcfg = (args.validation_policy_obj or {}).get("validation", {}) or {}
    if "external_stub_allowlist" in _vcfg and isinstance(_vcfg["external_stub_allowlist"], list):
        global EXTERNAL_STUB_ALLOWLIST
        EXTERNAL_STUB_ALLOWLIST = set(_vcfg["external_stub_allowlist"])
    if "semantic_stub_denylist" in _vcfg and isinstance(_vcfg["semantic_stub_denylist"], list):
        global REPLAY_SEMANTIC_STUB_DENYLIST
        REPLAY_SEMANTIC_STUB_DENYLIST = set(_vcfg["semantic_stub_denylist"])

        init_llvm_tools(args)

    args.clang_flags = shlex.split(args.clang_flags) if args.clang_flags else []
    args.klee_flags  = shlex.split(args.klee_flags) if args.klee_flags else []
    os.environ["LLM_MODEL"] = args.llm_model
    os.environ["LLM_API_BASE"] = args.llm_api_base
    run_dir = ensure_dir(Path(args.run_dir).resolve())
    setup_logging(run_dir)

    ctx = build_context(Path(args.sa_out_dir), Path(args.src_root), Path(args.spec), args.vul_file, args.vul_line, ensure_dir(run_dir / "ctx"))
    spec_json = read_json(Path(args.spec)) 

    print(f"[+] Running Context Discovery on {args.vul_file}...")
    stub_hints = auto_discover_stub_candidates(Path(args.src_root), args.vul_file, args.rule_id or "")
    if stub_hints: print(f"    [i] Discovered {stub_hints} static barrier functions.")
    else: print("    [i] No obvious static barriers found.")

    strategy_name, strategy_cfg = infer_strategy(ctx["spec"]) 
    ctx["strategy"] = {"name": strategy_name, **strategy_cfg}
    print(f"[Strategy] Inferred: {strategy_name} (Oracle: {strategy_cfg.get('oracle_type')})")

    base_instruction = strategy_cfg.get("planner_instruction", "")
    augmented_instruction = base_instruction + "\n" + stub_hints

    prompts = make_prompt.generate_prompts(
        vul_file=args.vul_file,
        vul_line=args.vul_line,
        rule_id=args.rule_id,
        vul_statement=ctx.get("vul_statement_text", "") or "",
        source_root=args.src_root,
    )

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
        "4. LINKING HEURISTIC: 'Lazy Stubbing'\n"
        "   - PROBLEM: You are linking against the FULL library (project.bc). Most functions ALREADY EXIST.\n"
        "   - RULE: Do NOT define/stub a function unless the compiler reports 'undefined reference' or KLEE reports 'failed external call'.\n"
        "   - IF UNSURE: Assume the function exists. Call it. If missing, the toolchain will tell you.\n"
        f"5. ENTRYPOINT IS SACRED: You MUST call the target entrypoint.\n"
        "   - Even if you are fixing a compilation error, NEVER remove the call to the entrypoint.\n"
        "   - If the entrypoint requires complex setup, stub the SETUP functions, not the entrypoint itself.\n"
    )
    strategy_block = (f"\n*** VULNERABILITY STRATEGY ENFORCEMENT ***\nStrategy: {strategy_name}\nOracle: {strategy_cfg.get('oracle_type')}\nPolicy:\n{augmented_instruction}\n")
    prompts["planner"] = mindset_block + prompts["planner"] + strategy_block
    prompts["builder"] = mindset_block + prompts["builder"] + strategy_block

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
    
    prompt_dir = ensure_dir(run_dir / "prompts")
    (prompt_dir / "planner_prompt.txt").write_text(prompts["planner"], encoding="utf-8")
    (prompt_dir / "builder_prompt.txt").write_text(prompts["builder"], encoding="utf-8")
    print(f"  [i] Prompts saved to {prompt_dir}")

    frozen_plan = run_frozen_analysis(ctx, args, prompts["planner"], run_dir / "frozen_analysis", Path(args.src_root))
    if "plan_error" in frozen_plan:
        print("[!] Frozen analysis failed. Aborting.")
        return

    src_root = Path(args.src_root)
    try:
        proj_bc, inst_actions, inst_err = build_instrumented_project_bc(src_root=src_root, work_dir=run_dir, frozen_plan=frozen_plan, args=args)
        if inst_actions: (run_dir / "instrumentation.actions").write_text("\n".join(inst_actions) + "\n", encoding="utf-8")
        if inst_err:
            print(f"[!] Instrumented build error: {inst_err}")
            return {"status": "E", "reason": inst_err}
        if proj_bc:
            print(f"  [i] Switching to Instrumented Bitcode: {proj_bc}")
            args.project_bc = str(proj_bc)
            inst_inc = proj_bc.parent / "include"
            inst_build = proj_bc.parent / "build"
            new_flags = []
            if inst_inc.exists(): new_flags.append(f"-I{inst_inc}")
            if inst_build.exists(): new_flags.append(f"-I{inst_build}")
            args.clang_flags = new_flags + args.clang_flags
    except Exception as e:
        return {"status": "E", "reason": f"instrumentation build failed: {e}"}

    final_status, stats = interactive_synthesizer(
        frozen_plan, ctx, args, prompts["builder"], 
        run_dir / "refinement", Path(args.src_root), 
        ensure_dir(run_dir / "refinement" / "harness"), 
        ensure_dir(run_dir / "refinement" / "logs"),
        args.max_a
    )

    if final_status.startswith("H2_BUG"):
        print("\n[=] PHASE 3: System Validation (Replay)")
        harness_path = run_dir / "refinement" / "harness" / "harness.c"
        ktest_path = Path(stats.get("best_ktest_path", ""))
        if harness_path.exists() and ktest_path.exists():
            print(f"  [*] Replaying Artifacts:\n      Harness: {harness_path.name}\n      Input:   {ktest_path.name}")
            harness_src = harness_path.read_text(encoding="utf-8")
            verdict, msg = run_reproducer_suite(harness_src, Path(args.src_root), run_dir, ktest_path, args)
            print(f"  [*] Validation Verdict: {verdict}")
            if verdict == "CONFIRMED":
                final_status = "H2_BUG_CONFIRMED"
                (run_dir / "reproduction_success.txt").write_text(msg, encoding="utf-8")
                print("  [✓] Replay confirmed the bug! Marked as H2_BUG_CONFIRMED.")
            elif verdict == "INVALID_HARNESS":
                final_status = "H2_INVALID"
                print("  [!] Replay rejected the harness (Assumptions violated).")
            elif verdict == "WEAK":
                final_status = "H2_BUG_WEAK" 
            else:
                is_oob_read = (ctx.get("strategy_name") == "OOB_READ")
                klee_log = stats.get("full_log", "")
                klee_memory_err = ("memory error" in klee_log or "out of bound" in klee_log)
                if is_oob_read and klee_memory_err and verify_rescue_eligibility(run_dir, klee_log, harness_path):
                    final_status = "H2_BUG_CONFIRMED_MODEL"
                    print(f"  [!] Replay was silent, but KLEE detected definitive OOB Read at CHECK_READ.")
                    print(f"      Accepting as H2_BUG_CONFIRMED_MODEL (Strategy: OOB_READ).")
                    (run_dir / "reproduction_model.txt").write_text(f"Silent OOB Read confirmed by KLEE memory model.\n{msg}", encoding="utf-8")
                else:
                    final_status = "H2_REACH"
                    print(f"  [!] Replay Failed and Bug is not a Silent OOB. Downgrading to H2_REACH.")
                    print(f"      FULL REPLAY LOG:\n{msg}")
        else:
             print(f"  [!] Missing artifacts for replay. Harness={harness_path.exists()}, KTest={ktest_path.exists()}")

    total_analysis_time = time.time() - start_time
    final_meta = { "spec": str(args.spec), "class": final_status, "total_analysis_time": total_analysis_time, "klee": stats if stats else {}, "tokens": _TOKEN_STATS }
    write_json(run_dir / "run_meta.json", final_meta)

    if args.summary_tsv:
        strat_name = ctx.get("strategy", {}).get("name", "unknown")
        bug_site = stats.get("bug_site_type", "-")
        bug_loc = stats.get("bug_location", "-")
        with open(args.summary_tsv, "a", encoding="utf-8") as f:
            fcntl.flock(f, fcntl.LOCK_EX)
            if f.tell() == 0:
                headers = ("Spec\tFinalStatus\tKleeStatus\tTotalTime\tBestTurn\tPromptTokens\tComplTokens\tTotalTokens\tStrategy\tBugType\tBugLoc\n")
                f.write(headers)
            line = (f"{args.spec_stem}\t{final_status}\t{stats.get('status','none')}\t{total_analysis_time:.2f}\t{stats.get('best_turn', -1)}\t{_TOKEN_STATS['prompt_tokens']}\t{_TOKEN_STATS['completion_tokens']}\t{_TOKEN_STATS['total_tokens']}\t{strat_name}\t{bug_site}\t{bug_loc}\n")
            f.write(line)
            fcntl.flock(f, fcntl.LOCK_UN)

    print(f"[✓] Finished {args.spec_stem}: {final_status}")

if __name__ == "__main__":
    main()