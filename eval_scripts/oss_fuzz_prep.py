#!/usr/bin/env python3
import argparse
import json
import shutil
import os
import re
import struct
from pathlib import Path

# --- CONFIGURATION ---
STATUS_MAP = {
    "H2_BUG_CONFIRMED": "CONFIRMED",
    "H2_BUG_CONFIRMED_MODEL": "CONFIRMED_MODEL"
}

# C++ Driver (Stays C++ to support OSS-Fuzz standard)
STANDALONE_DRIVER_SRC = """
#include <iostream>
#include <fstream>
#include <vector>
#include <cstdint>

// Link to the C function
extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size);

int main(int argc, char** argv) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
        return 1;
    }
    std::ifstream file(argv[1], std::ios::binary | std::ios::ate);
    if (!file) {
        std::cerr << "Error opening file: " << argv[1] << std::endl;
        return 1;
    }
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);
    std::vector<uint8_t> buffer(size);
    if (!file.read((char*)buffer.data(), size)) {
        return 1;
    }
    LLVMFuzzerTestOneInput(buffer.data(), buffer.size());
    return 0;
}
"""

class KTestReader:
    def __init__(self, path: Path):
        self.path = path
        self.objects = []
        try: self._parse()
        except Exception as e: print(f"  [!] KTest Parse Error ({path.name}): {e}")

    def _parse(self):
        with open(self.path, 'rb') as f:
            data = f.read()
        if data[:5] != b'KTEST': raise ValueError("Invalid KTest magic")
        offset = 5
        version, = struct.unpack('>I', data[offset:offset+4])
        offset += 4
        num_args, = struct.unpack('>I', data[offset:offset+4])
        offset += 4
        for _ in range(num_args):
            l, = struct.unpack('>I', data[offset:offset+4])
            offset += 4 + l
        if version >= 2: offset += 8
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

def generate_oss_fuzz_source_c(driver_src: str) -> str:
    """Generates a pure C file (target.c) with robust macro cleaning."""
    
    clean_lines = []
    for line in driver_src.splitlines():
        stripped = line.strip()
        
        if re.search(r'^\s*#\s*include\s*[<"]klee/klee\.h[>"]', stripped):
            clean_lines.append("// " + line)
            continue
            
        if re.search(r'^\s*#\s*define\s+BUG_ASSERT', stripped):
            clean_lines.append("// " + line)
            continue
        if re.search(r'^\s*#\s*define\s+REACH_ASSERT', stripped):
            clean_lines.append("// " + line)
            continue
        if re.search(r'^\s*#\s*define\s+klee_assert', stripped):
            clean_lines.append("// " + line)
            continue
            
        clean_lines.append(line)

    driver_src_clean = "\n".join(clean_lines)

    parts = {}
    current_section = "preamble"
    buffer = []
    
    for line in driver_src_clean.splitlines():
        if "/* --- Global Constants --- */" in line:
            parts[current_section] = "\n".join(buffer)
            current_section = "globals"
            buffer = []
        elif "/* --- Stub Functions --- */" in line:
            parts[current_section] = "\n".join(buffer)
            current_section = "stubs"
            buffer = []
        elif "/* --- Embedded Functions --- */" in line:
            parts[current_section] = "\n".join(buffer)
            current_section = "embedded"
            buffer = []
        elif "/* --- Harness --- */" in line:
            parts[current_section] = "\n".join(buffer)
            current_section = "harness"
            buffer = []
        buffer.append(line)
    parts[current_section] = "\n".join(buffer)

    out = []
    out.append("// [STAILOR] Auto-converted for OSS-Fuzz Verification (C Mode)")
    out.append("#include <stdint.h>")
    out.append("#include <stddef.h>")
    out.append("#include <stdlib.h>")
    out.append("#include <string.h>")
    out.append("#include <assert.h>")
    out.append("#include <stdio.h>")
    
    out.append("\n/* --- Safe Macro Shims --- */")
    out.append("#define klee_assert(x) assert(x)")
    out.append("#define BUG_ASSERT(x) assert(x)")
    out.append("#define REACH_ASSERT()")
    out.append("#define klee_assume(x)")
    
    if "globals" in parts:
        out.append("\n/* --- Globals --- */")
        out.append(parts["globals"])

    if "embedded" in parts:
        out.append("\n/* --- Embedded Helpers --- */")
        out.append(parts["embedded"])

    harness_raw = parts.get("harness", "")
    
    main_match = re.search(r'(int\s+main\s*\([^)]*\)\s*\{)', harness_raw)
    if main_match:
        start_idx = main_match.start()
        brace_idx = main_match.end()
        preamble = harness_raw[:start_idx]
        raw_body = harness_raw[brace_idx:]
        last_brace = raw_body.rfind('}')
        body = raw_body[:last_brace] if last_brace != -1 else raw_body
    else:
        preamble = ""
        body = harness_raw

    out.append("\n/* --- Harness Preamble --- */")
    out.append(preamble)

    body = re.sub(r'klee_assume\s*\((.*)\)\s*;', r'if (!(\1)) return 0;', body)
    body = re.sub(r'BUG_ASSERT\s*\((.*)\)\s*;', r'assert(\1);', body)
    body = re.sub(r'REACH_ASSERT\s*\(\s*\)\s*;', r'', body)
    body = re.sub(r'klee_assert\s*\((.*)\)\s*;', r'assert(\1);', body)

    def input_replacer(match):
        dest = match.group(1).strip()
        size_expr = match.group(2).strip()
        return (f"/* mapped {dest} */\n"
                f"    if (Size < _consumed + {size_expr}) return 0;\n"
                f"    memcpy({dest}, Data + _consumed, {size_expr});\n"
                f"    _consumed += {size_expr};")

    body = re.sub(r'klee_make_symbolic\s*\(\s*([^,]+)\s*,\s*([^,]+)\s*,\s*"[^"]*"\s*\)\s*;', input_replacer, body)

    out.append("\n/* --- Fuzzer Entrypoint --- */")
    out.append('int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {')
    out.append("    size_t _consumed = 0;")
    out.append(body)
    out.append("}")

    return "\n".join(out)

def get_ktest_path(spec_dir, meta_ktest_path):
    if meta_ktest_path and Path(meta_ktest_path).exists(): return Path(meta_ktest_path)
    if meta_ktest_path and (spec_dir / Path(meta_ktest_path).name).exists(): return spec_dir / Path(meta_ktest_path).name
    if (spec_dir / "refinement/logs").exists():
        ktests = sorted((spec_dir / "refinement/logs").rglob("*.ktest"), key=lambda f: f.stat().st_mtime, reverse=True)
        if ktests: return ktests[0]
    return None

def main():
    parser = argparse.ArgumentParser(description="Prepare OSS-Fuzz Verification Artifacts")
    parser.add_argument("--runs-root", required=True)
    parser.add_argument("--output-dir", required=True)
    args = parser.parse_args()
    
    runs_root = Path(args.runs_root)
    out_dir = Path(args.output_dir)
    prep_dir = out_dir / "oss_fuzz_prep"
    if prep_dir.exists(): shutil.rmtree(prep_dir)
    prep_dir.mkdir(parents=True)

    print(f"[*] Scanning {runs_root} for CONFIRMED bugs...")
    
    scan_list = sorted([x for x in runs_root.iterdir() if x.is_dir()])

    count = 0
    for project_dir in scan_list:
        pid = project_dir.name
        
        # Extract base name (libxml2) from project ID (libxml2_55980_vul)
        base_name = pid.split('_')[0]
        
        spec_dirs = sorted([x for x in project_dir.iterdir() if x.is_dir()])
        
        for spec_dir in spec_dirs:
            spec_id = spec_dir.name
            meta_path = spec_dir / "run_meta.json"
            if not meta_path.exists(): continue
            
            try:
                meta = json.loads(meta_path.read_text())
                status = meta.get("class", "none")
                
                if status in STATUS_MAP.keys() and "CONFIRMED" in STATUS_MAP[status]:
                    print(f"  [+] Processing: {spec_id} (Project: {base_name})")
                    oss_dest = prep_dir / f"{pid}_{spec_id}"
                    oss_dest.mkdir(exist_ok=True)
                    
                    harness_src = spec_dir / "refinement/harness/harness.c"
                    ktest_src = get_ktest_path(spec_dir, meta.get("klee", {}).get("best_ktest_path"))
                    
                    if harness_src.exists():
                        shutil.copy2(harness_src, oss_dest / "driver.c")
                        try:
                            c_content = harness_src.read_text(encoding="utf-8", errors="replace")
                            c_target = generate_oss_fuzz_source_c(c_content)
                            (oss_dest / "target.c").write_text(c_target, encoding="utf-8")
                            (oss_dest / "standalone_driver.cc").write_text(STANDALONE_DRIVER_SRC, encoding="utf-8")
                        except Exception as e: print(f"      [!] Conversion Failed: {e}")

                        if ktest_src:
                            try:
                                ktr = KTestReader(ktest_src)
                                with open(oss_dest / "crash.bin", "wb") as f:
                                    for obj in ktr.objects: f.write(obj['data'])
                            except Exception as e: print(f"      [!] Binary Extract Failed: {e}")
                        
                        # [FIX] Removed -lz -llzma -ldl to fix linker errors
                        # If libxml2 needs them, it should have been built with them.
                        # Since ld fails to find them, they are likely missing/disabled.
                        (oss_dest / "build_helper.sh").write_text(
                            f"#!/bin/bash\n"
                            f"echo '[*] Searching for library...'\n"
                            f"LIB_PATH=$(find /src -name 'lib{base_name}.a' -o -name '{base_name}.a' -o -name 'lib{pid}.a' | head -n 1)\n"
                            f"if [ -z \"$LIB_PATH\" ] || [ ! -f \"$LIB_PATH\" ]; then\n"
                            f"  echo '[!] Library not found. Attempting build...'\n"
                            f"  if [ -d \"/src/{base_name}\" ]; then\n"
                            f"    cd /src/{base_name}\n"
                            f"    [ -f autogen.sh ] && ./autogen.sh\n"
                            f"    [ -f configure ] && ./configure --disable-shared --without-python\n"
                            f"    make -j$(nproc)\n"
                            f"    cd -\n"
                            f"    LIB_PATH=$(find /src -name 'lib{base_name}.a' -o -name '{base_name}.a' | head -n 1)\n"
                            f"  fi\n"
                            f"fi\n"
                            f"if [ -z \"$LIB_PATH\" ]; then echo '[!] FAIL: Could not find/build library'; exit 1; fi\n"
                            f"echo \"    Using: $LIB_PATH\"\n"
                            f"echo '[*] Compiling...'\n"
                            f"# Compile Target as C\n"
                            f"$CC $CFLAGS -fsanitize=address -I/src/{base_name}/include -I/src/{pid}/include -c target.c -o target.o\n"
                            f"# Compile Driver as C++\n"
                            f"$CXX $CXXFLAGS -fsanitize=address -c standalone_driver.cc -o driver.o\n"
                            f"# Link (Minimal Deps)\n"
                            f"$CXX $CXXFLAGS -fsanitize=address driver.o target.o \"$LIB_PATH\" -o reproducer -lm -lpthread\n\n"
                            f"[ -f ./reproducer ] && ./reproducer crash.bin\n",
                            encoding="utf-8"
                        )
                        count += 1
            except Exception as e: print(f"[!] Error processing {spec_id}: {e}")

    print(f"\n[✓] Prep Complete. Generated {count} artifacts in {prep_dir}")

if __name__ == "__main__":
    main()