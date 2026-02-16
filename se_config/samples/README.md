# SE Config — Sample Directory

Copy this directory and customize for your project:

```bash
cp -r ssample_config/ se-config/
# Edit files as needed, then:
./stailor.sh 55980/libxml2_55980_vul --se-config se-config/
```

## Directory Layout

```
se-config/
├── config.json              # Agent/KLEE/validation settings (optional)
├── stubs_extra.c            # Global stubs appended for ALL specs (optional)
├── types_extra.h            # Global types included for ALL specs (optional)
├── prompt_extra.txt         # Global LLM prompt context for ALL specs (optional)
└── per_spec/                # Per-spec extras (optional)
    └── <SPEC_STEM>/         # Matches spec filename without .json
        ├── stubs_extra.c    # Appended after global stubs_extra
        ├── types_extra.h    # Included after global types_extra
        └── prompt_extra.txt # Appended after global prompt_extra
```

## Resolution Order

For each spec, extras are merged in this order:
1. Auto-generated (by the agent) — always present
2. Global extras (`se-config/*.c`, `*.h`, `*.txt`) — appended
3. Per-spec extras (`se-config/per_spec/<STEM>/*`) — appended after global

Nothing is overridden — everything stacks.

## Minimal Setup

Only `config.json` is recognized for settings. All other files are optional.
If you just want defaults, an empty directory with no `config.json` works too:

```bash
mkdir se-config
./stailor.sh 55980/libxml2_55980_vul --se-config se-config/
```

## Finding the SPEC_STEM

The per-spec directory name must match the spec JSON filename (minus `.json`).
List your specs to find the stems:

```bash
ls specs/libxml2_55980_vul/
# 174_dict.c_541_local_cpp_cwe-125-oob-read.json
# -> SPEC_STEM = 174_dict.c_541_local_cpp_cwe-125-oob-read
```
