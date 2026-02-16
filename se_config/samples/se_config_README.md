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

# 3. Prepare (CodeQL + specs + bitcode) — only once
./stailor_prepare.sh 62911/libxml2_62911_vul --se-config se_config/my_project

# 4. Run agent
SE_CONFIG="$(pwd)/se_config/my_project" \
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```

## Directory Layout

```
project_root/
├── sailr_cegir/             ← scripts
├── dataset/                 ← source code
├── specs/                   ← auto-generated specs (from CodeQL)
├── se_runs/                 ← output
│
├── se_config/               ← this directory
│   ├── README.md
│   ├── samples/             ← reference files (blocked from use)
│   │
│   └── <your_project>/
│       ├── config.json              ← main configuration
│       │
│       │  # --- Global extras (apply to ALL specs) ---
│       ├── stubs_extra.c            ← appended to auto-generated stubs
│       ├── types_extra.h            ← #include'd after auto-extracted types
│       ├── prompt_extra.txt         ← appended to LLM system prompt
│       │
│       │  # --- Additional specs (merged into specs/) ---
│       ├── extra_specs/             ← manually written or imported specs
│       │   ├── manual_oob_write_parser.json
│       │   ├── from_coverity_leak_001.json
│       │   └── llm_generated_uaf_ctx.json
│       │
│       │  # --- Spec generation hints ---
│       ├── vuln_patterns.txt        ← vulnerability patterns → LLM generates specs
│       ├── focus_modules.txt        ← limit analysis to specific files/dirs
│       │
│       │  # --- Per-spec extras ---
│       └── per_spec/
│           └── <SPEC_STEM>/
│               ├── stubs_extra.c
│               ├── types_extra.h
│               └── prompt_extra.txt
```

## config.json Fields

| Field | Type | Description |
|-------|------|-------------|
| **Compilation** | | |
| `extra_cflags` | `string[]` | Extra `-D` flags (e.g. attribute macros) |
| `extra_includes` | `string[]` | Extra `-I` paths |
| **Stub Control** | | |
| `skip_macro_prefixes` | `string[]` | ALL_CAPS prefixes to skip during macro extraction |
| `skip_stubs` | `string[]` | Function names to NOT generate stubs for |
| `custom_stubs` | `{name: code}` | Custom stub implementations |
| `extra_typedefs` | `string[]` | Typedef lines added to stubs.c |
| `struct_defs` | `string[]` | Struct definitions injected into extracted source |
| **KLEE** | | |
| `klee_flags` | `string[]` | Extra KLEE flags (merged with CLI) |
| **Agent** | | |
| `agent.max_turns` | `int` | Override MAX_TURNS |
| `agent.max_cycles` | `int` | Override MAX_CYCLES |
| `agent.timeout` | `int` | Override TIMEOUT |
| `prompt_extra` | `string` | Inline prompt context (alternative to prompt_extra.txt) |
| **Project Scope** | | |
| `focus.modules` | `string[]` | Only analyze files matching these patterns |
| `focus.functions` | `string[]` | Only analyze these entry functions |
| `focus.exclude` | `string[]` | Skip files/dirs matching these patterns |
| `focus.description` | `string` | Freeform project description for agent context |

## Extra Specs — Adding Vulnerabilities from Any Source

Place additional spec JSONs in `se_config/<project>/extra_specs/`. These are
**merged** into the auto-generated `specs/` directory at run time. Sources:

### 1. Manual specs (hand-written)

```json
{
  "id": "manual_001",
  "source": "manual",
  "vul_file": "parser.c",
  "vul_line": 234,
  "vul_func": "xmlParseContent",
  "entry_func": "xmlParseDocument",
  "cwe_id": "787",
  "title": "OOB write in parser content handling",
  "description": "Buffer overflow when parsing oversized CDATA sections",
  "spine": ["xmlParseDocument", "xmlParseContent"],
  "context_lines": 5
}
```

### 2. Imported from other SA tools

Convert Coverity/Infer/Semgrep findings to spec JSON:

```bash
# Coverity → spec
python3 scripts/import_coverity.py --input coverity_results.json --out se_config/my_project/extra_specs/

# Infer → spec
python3 scripts/import_infer.py --input infer-out/report.json --out se_config/my_project/extra_specs/

# Generic CSV → spec (file, line, function, cwe)
python3 scripts/import_csv_specs.py --input vulns.csv --out se_config/my_project/extra_specs/
```

### 3. LLM-generated specs from vulnerability patterns

Write patterns in `vuln_patterns.txt`, and `stailor_prepare.sh` will ask the LLM
to generate specs from them:

**`vuln_patterns.txt`** example:
```
# Each block describes a vulnerability pattern to search for.
# The LLM will analyze the source and generate spec JSONs.

PATTERN: Integer overflow in size calculations
  FILES: alloc.c, malloc.c, memory.c
  CWE: 190
  HINT: Look for multiply-before-allocate patterns like malloc(n * sizeof(T))
         where n comes from untrusted input without overflow check.

PATTERN: Use-after-free in reference-counted objects
  FILES: dict.c, hash.c, tree.c
  CWE: 416
  HINT: Objects freed in cleanup paths while still referenced by iterators
         or callback contexts. Check xmlFree() calls near loop variables.

PATTERN: Stack buffer overflow from unbounded string copy
  FILES: uri.c, encoding.c, xmlIO.c
  CWE: 121
  HINT: Fixed-size stack buffers filled by xmlStrncopy/memcpy without
         checking source length. Especially in URL/path parsing.
```

### 4. Spec JSON format reference

Every spec JSON (auto-generated or manual) must have at minimum:

```json
{
  "vul_file": "dict.c",       // source filename (basename or relative path)
  "vul_line": 541,             // vulnerable line number
  "vul_func": "xmlDictFindEntry", // function containing the vulnerability
  "entry_func": "xmlDictLookup",  // entry point function
  "cwe_id": "125"              // CWE number (optional but recommended)
}
```

Optional enrichments (auto-generated specs have these, manual can too):

```json
{
  "spine": ["xmlDictLookup", "xmlDictLookupInternal", "xmlDictFindEntry"],
  "title": "OOB read in dictionary lookup",
  "description": "...",
  "source_context": { "lines": {"539": "...", "540": "...", "541": "..."} },
  "rule_id": "cwe-125-oob-read",
  "context_lines": 5
}
```

## Focus Modules — Analyzing Specific Code

For large codebases (e.g., Linux kernel), use `focus_modules.txt` or
`config.json` focus fields to scope the analysis:

**`focus_modules.txt`** example:
```
# One pattern per line. Supports glob syntax.
# Only files matching these patterns will be analyzed.

# Linux kernel — focus on networking subsystem
net/ipv4/*.c
net/ipv6/*.c
net/core/*.c
include/net/*.h

# Exclude test and tools
!tools/**
!test/**
!samples/**
```

**`config.json` focus fields** (equivalent):
```json
{
  "focus": {
    "modules": ["net/ipv4/*.c", "net/ipv6/*.c", "net/core/*.c"],
    "functions": ["tcp_sendmsg", "ip_rcv", "skb_copy_datagram_iter"],
    "exclude": ["tools/**", "test/**", "samples/**"],
    "description": "Linux kernel TCP/IP networking stack. Key structures: sk_buff (skb), sock, tcp_sock. Use kmalloc/kfree for allocation. Locking via spin_lock/rcu_read_lock."
  }
}
```

**`prompt_extra.txt`** for domain knowledge:
```
This is the Linux kernel networking subsystem (net/ipv4, net/ipv6).

Key constraints for harness generation:
- Use kmalloc/kfree instead of malloc/free
- sk_buff structures must be initialized via alloc_skb(), not raw malloc
- Socket structures require sock_init_data() initialization  
- RCU-protected data needs rcu_read_lock/unlock stubs
- Spinlocks should be stubbed as no-ops for KLEE
- printk and WARN_ON should be no-ops
- CONFIG_* macros: assume CONFIG_IPV6=1, CONFIG_NETFILTER=1

Common false positive patterns to ignore:
- Locking assertion failures (BUG_ON in lock checking)
- WARN_ON_ONCE for debug-only checks
```

## Resolution Order

For each spec, content is merged in this order:

```
CodeQL auto-specs ──┐
extra_specs/ ───────┤──→ merged spec list
                    │
config.json ────────┤
global extras ──────┤──→ per-spec harness configuration
per-spec extras ────┘
```

## Finding the SPEC_STEM for per_spec/

```bash
ls specs/libxml2_62911_vul/
# 174_dict.c_541_local_cpp_cwe-125-oob-read.json
#  └─ SPEC_STEM = 174_dict.c_541_local_cpp_cwe-125-oob-read

mkdir -p se_config/my_project/per_spec/174_dict.c_541_local_cpp_cwe-125-oob-read/
```

For manual specs in `extra_specs/`, the SPEC_STEM is the filename without `.json`:
```bash
# extra_specs/manual_oob_write_parser.json
#  └─ SPEC_STEM = manual_oob_write_parser
```

## Run Commands

### Full pipeline (prepare + run)

```bash
# One-time prep
./stailor_prepare.sh 62911/libxml2_62911_vul --se-config se_config/my_project

# Run agents  
SE_CONFIG="$(pwd)/se_config/my_project" \
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```

### Single spec

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

### Without SE_CONFIG (fully backward compatible)

```bash
bash sailr_cegir/stailor.sh 62911/libxml2_62911_vul
```
