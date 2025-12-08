# SA-Driven Manual Harness Pipeline
(One Logical Entrypoint + Per-Target Instrumentation)

This pipeline implements the SA-Driven Manual Harness evaluation mode. It combines hand-written project-level entrypoint drivers with automatic per-target source instrumentation derived from static-analysis (SA) output.

The design reflects a realistic manual-engineering scenario:

- A human writes one harness entrypoint for the whole project.
- Static analysis provides suspicious sites + local vulnerability conditions.
- For each SA-reported target, the pipeline automatically injects assertions into the real code and runs symbolic execution with KLEE.

## Overview

### Core idea
A single manual entry harness is reused for all targets in a project. For each SA spec, we automatically:

1. Parse source file, line number, and the assertion condition from the SA JSON spec.
2. Insert SAILR vulnerability assertion and a reachability marker before the target line:
    ```
    SAILR_ASSERT(<expr from SA spec>);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    ```
3. Build driver + instrumented translation unit (TU) into LLVM bitcode.
4. Run KLEE to classify the behavior.

This produces per-target results, including build failures, SE failures, reachability, and vulnerability detection.

## Directory Structure
A typical layout:
```
sa_manual/
  README.md
  sa_instrument.h
  instrument_sa_manual_target.py
  run_sa_manual_batch.sh

drivers/
  sa_manual/
    libxml2_sa_manual_entry.c        # ONE manual entry harness

specs/
  libxml2_62911_vul/
    000_dict.c_541.json
    001_tree.c_100.json
    ...

se_runs/
  sa_manual/
    libxml2/
      <SPEC_ID>/
        instrumented/*.c
        bc/*.bc
        klee-out/
      summary.tsv
      counts.tsv
      time.log

```
### Outputs
summary.tsv: Per-spec record
counts.tsv: Total count of each harness category
## Running the Pipeline
```
chmod +x sa_manual/run_sa_manual_batch.sh

sa_manual/run_sa_manual_batch.sh \
  --project-name libxml2_62911_vul \
  --src-root     dataset/libxml2_62911_vul \
  --spec-dir     specs/libxml2_62911_vul \
  --driver       drivers/sa_manual/libxml2_sa_manual_entry.c \
  --out-root     se_runs \
  --clang        clang-14 \
  --klee         klee \
  --clang-flags  "-I/usr/include/libxml2 -Isa_manual -include sa_manual/sailr_assert.h" \
  --klee-flags   "--search=nurs:covnew --max-time=360"

```