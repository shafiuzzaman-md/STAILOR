#!/usr/bin/env python3
"""
validate_finding.py — Standalone validator for STAILOR findings.
Replays KLEE test inputs on the ORIGINAL library with ASan.
"""
import argparse, os, sys, shutil, struct, subprocess
from pathlib import Path

def run_cmd(cmd, env=None, stdin=None, timeout=10):
    try:
        p = subprocess.run(cmd, env=env, stdin=stdin,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=timeout)
        return p.returncode, p.stdout.decode('utf-8','ignore'), p.stderr.decode('utf-8','ignore')
    except subprocess.TimeoutExpired:
        return 124, "", "[TIMEOUT]"

def extract_ktest(ktest_path, output_path):
    """Extract largest data object from KLEE .ktest file."""
    try:
        d = ktest_path.read_bytes()
        if d[:5] != b'KTEST': return False
        p = 9
        na = struct.unpack('>I', d[p:p+4])[0]; p += 4
        for _ in range(na):
            s = struct.unpack('>I', d[p:p+4])[0]; p += 4 + s
        no = struct.unpack('>I', d[p:p+4])[0]; p += 4
        best = b""
        for _ in range(no):
            nl = struct.unpack('>I', d[p:p+4])[0]; p += 4 + nl
            dl = struct.unpack('>I', d[p:p+4])[0]; p += 4
            obj = d[p:p+dl]; p += dl
            if len(obj) > len(best): best = obj
        if best:
            output_path.write_bytes(best); return True
    except Exception as e:
        print(f"[!] KTest Error: {e}")
    return False

def find_library(src_root):
    """Find the original static library."""
    candidates = [
        src_root / "build" / "libxml2.a",
        src_root / "libxml2.a",
    ]
    for c in candidates:
        if c.exists(): return c
    # Fallback: largest .a file
    libs = sorted(src_root.rglob("*.a"), key=lambda p: p.stat().st_size, reverse=True)
    return libs[0] if libs else None

def validate(finding_dir, src_root):
    finding_dir = Path(finding_dir).resolve()
    src_root = Path(src_root).resolve()
    print(f"[+] Validating: {finding_dir.name}")

    harness = finding_dir / "harness.c"
    ktest = finding_dir / "crash.ktest"
    repro = finding_dir / "repro_input.bin"
    exe = finding_dir / "val_native.exe"

    if not harness.exists():
        print("[-] No harness.c"); return False
    if not ktest.exists():
        print("[-] No crash.ktest"); return False

    lib = find_library(src_root)
    if not lib:
        print("[-] No original library found"); return False
    print(f"    Library: {lib}")

    if not extract_ktest(ktest, repro):
        print("[-] Failed to extract ktest input"); return False

    # Compile with ASan
    inc_dirs = []
    for sub in ["include", "build/include", "build"]:
        d = src_root / sub
        if d.is_dir(): inc_dirs.extend(["-I", str(d)])

    cmd = ["clang", "-O0", "-g", "-fsanitize=address,undefined",
           "-D__KLEE__=0",
           "-Dklee_assume(c)=if(!(c))exit(0)",
           "-Dklee_make_symbolic(a,b,c)=read(0,a,b)",
           "-Dklee_warning(m)=",
           "-Dklee_assert(c)=",
    ] + inc_dirs + [
           str(harness), str(lib),
           "-lz", "-lm", "-lpthread", "-ldl",
           "-o", str(exe)]

    print("    Building validator...")
    rc, _, err = run_cmd(cmd, timeout=30)
    if rc != 0:
        print(f"[-] Build failed:\n{err[:500]}"); return False

    # Execute
    print("    Running concrete execution...")
    env = os.environ.copy()
    env["ASAN_OPTIONS"] = "halt_on_error=1:detect_leaks=0"
    with open(repro, "rb") as f:
        rc, _, err = run_cmd([str(exe)], env=env, stdin=f, timeout=10)

    if "AddressSanitizer" in err or rc in (-11, 139):
        print("[!] SUCCESS: TRUE POSITIVE (Memory Bug)")
        (finding_dir / "validation.log").write_text(err, encoding="utf-8")
        return True
    elif "Aborted" in err:
        print("[!] SUCCESS: TRUE POSITIVE (Assertion)")
        return True

    print("[-] No crash on original library.")
    return False

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--finding", required=True)
    ap.add_argument("--src-root", required=True)
    args = ap.parse_args()
    sys.exit(0 if validate(args.finding, args.src_root) else 1)
