# se_config — Project-Specific Configuration for STAILOR Agent

The `se_config/` directory lives at the project root alongside `sailr_cegir/`,
`dataset/`, and `se_runs/`. It holds project-level configuration that customizes
how the agent generates harnesses, stubs, and prompts. All extras are **appended**
to auto-generated content — nothing is replaced.

## Quick Start

```bash
# 1. Copy samples to create your config
cp -r se_config/samples/ se_config/my_project/

# 2. Edit config.json and extras as needed
vim se_config/my_project/config.json

# 3. Run (single spec)
SE_CONFIG="$(pwd)/se_config/my_project" \
CLANG="/usr/lib/llvm-14/bin/clang" \
LLVM_LINK="/usr/bin/llvm-link-14" \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include -I$(pwd)/dataset/62911/libxml2_62911_vul/build -I/home/shafi/tools/klee/include" \
MAX_TURNS=80 \
TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "oob-read" \
   "specs/libxml2_62911_vul/174_dict.c_541_local_cpp_cwe-125-oob-read.json" \
   "rules/stailor-queries/suites/stailor.qls"

# 4. Run (full batch)
SE_CONFIG="$(pwd)/se_config/my_project" \
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```

Without `SE_CONFIG`, the system runs with auto-generated defaults — fully backward compatible.

## Directory Layout

```
project_root/
├── sailr_cegir/             ← scripts (run_worker.sh, run_batch.sh, etc.)
├── dataset/                 ← source code
├── specs/                   ← auto-generated specs
├── se_runs/                 ← output
│
├── se_config/               ← this directory
│   ├── README.md
│   ├── samples/             ← reference files (not used by system)
│   │   ├── config.json
│   │   ├── stubs_extra.c
│   │   ├── types_extra.h
│   │   ├── prompt_extra.txt
│   │   └── per_spec/
│   │       └── 174_dict.c_541_.../
│   │           ├── stubs_extra.c
│   │           └── prompt_extra.txt
│   │
│   └── <your_project>/      ← your actual config (create from samples)
│       ├── config.json      ← main configuration (optional)
│       ├── stubs_extra.c    ← global extra stubs (optional)
│       ├── types_extra.h    ← global extra types (optional)
│       ├── prompt_extra.txt ← global extra prompt context (optional)
│       └── per_spec/        ← spec-specific extras (optional)
│           └── <SPEC_STEM>/
│               ├── stubs_extra.c
│               ├── types_extra.h
│               └── prompt_extra.txt
```

## config.json Fields

| Field | Type | Description |
|-------|------|-------------|
| `extra_cflags` | `string[]` | Extra `-D` flags for compilation (e.g. attribute macros) |
| `extra_includes` | `string[]` | Extra `-I` paths |
| `skip_macro_prefixes` | `string[]` | ALL_CAPS prefixes to skip during macro extraction (e.g. `["XML_", "LIBXML_"]`) |
| `skip_stubs` | `string[]` | Function names to NOT generate stubs for |
| `custom_stubs` | `{name: code}` | Custom stub implementations (replace weak void stubs) |
| `extra_typedefs` | `string[]` | Typedef lines added to stubs.c |
| `struct_defs` | `string[]` | Struct definitions injected into extracted source |
| `klee_flags` | `string[]` | Extra KLEE flags (merged with CLI `--klee-flags`) |
| `prompt_extra` | `string` | Project-specific guidance appended to LLM system prompt |
| `agent.max_turns` | `int` | Override MAX_TURNS for this project |
| `agent.max_cycles` | `int` | Override MAX_CYCLES for this project |
| `agent.timeout` | `int` | Override TIMEOUT for this project |

## Optional Extra Files

All extras are **appended** — they never replace auto-generated content.

| File | Scope | Description |
|------|-------|-------------|
| `stubs_extra.c` | Global | Appended to auto-generated stubs.c for all specs |
| `types_extra.h` | Global | `#include`'d after auto-extracted types for all specs |
| `prompt_extra.txt` | Global | Appended to LLM system prompt for all specs |
| `per_spec/<STEM>/stubs_extra.c` | Per-spec | Appended after global stubs_extra |
| `per_spec/<STEM>/types_extra.h` | Per-spec | Included after global types_extra |
| `per_spec/<STEM>/prompt_extra.txt` | Per-spec | Appended after global prompt_extra |

## Resolution Order

For each spec, content is merged in this order:

```
auto-generated  →  config.json fields  →  global extras  →  per-spec extras
```

Everything stacks. If no extras exist, the system works exactly as before.

## Finding the SPEC_STEM for per_spec/

The per-spec directory name must match the spec JSON filename without `.json`:

```bash
ls specs/libxml2_62911_vul/
# 174_dict.c_541_local_cpp_cwe-125-oob-read.json
#  └─ SPEC_STEM = 174_dict.c_541_local_cpp_cwe-125-oob-read

# Create per-spec extras:
mkdir -p se_config/my_project/per_spec/174_dict.c_541_local_cpp_cwe-125-oob-read/
```

## Run Commands

### Single Spec (with SE_CONFIG)

```bash
SE_CONFIG="$(pwd)/se_config/my_project" \
CLANG="/usr/lib/llvm-14/bin/clang" \
LLVM_LINK="/usr/bin/llvm-link-14" \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include \
  -I$(pwd)/dataset/62911/libxml2_62911_vul/build \
  -I/home/shafi/tools/klee/include" \
MAX_TURNS=80 \
TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; \
  bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "oob-read" \
   "specs/libxml2_62911_vul/174_dict.c_541_local_cpp_cwe-125-oob-read.json" \
   "rules/stailor-queries/suites/stailor.qls"
```

### Full Batch (with SE_CONFIG)

```bash
SE_CONFIG="$(pwd)/se_config/my_project" \
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```

### Without SE_CONFIG (backward compatible — no changes needed)

```bash
# Single spec
CLANG="/usr/lib/llvm-14/bin/clang" \
LLVM_LINK="/usr/bin/llvm-link-14" \
CLANG_FLAGS="-I$(pwd)/dataset/62911/libxml2_62911_vul/include \
  -I$(pwd)/dataset/62911/libxml2_62911_vul/build \
  -I/home/shafi/tools/klee/include" \
MAX_TURNS=80 \
TIMEOUT=600 \
BUILD_PROJECT_BC_CMD="export CFLAGS='-I/home/shafi/tools/klee/include'; \
  bash $(pwd)/sailr_cegir/build_project_bc.sh {SRC_ROOT} {OUT_BC}" \
bash sailr_cegir/run_worker.sh \
   "62911/libxml2_62911_vul" \
   "oob-read" \
   "specs/libxml2_62911_vul/174_dict.c_541_local_cpp_cwe-125-oob-read.json" \
   "rules/stailor-queries/suites/stailor.qls"

# Batch
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```