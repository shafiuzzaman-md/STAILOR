chmod +x sailr_cegir/run_sailr_cegir_batch.sh
# SAILR CEGIR Pipeline

This folder hosts the SAILR CEGIR pipeline, parallel to the `sa_llm` baseline.

- `run_cegir.py` – core CEGIR engine (assertion → instrumentation → build/KLEE refinement).
- `run_sailr_cegir_batch.sh` – batch driver over all specs in `specs/<PROJECT>/`,
  similar to `sa_llm/run_sa_llm_batch.sh`.

### Usage

Run SAILR CEGIR on all specs of a project:

```bash
SA_OUT_DIR=sa_outputs \
DATASET_ROOT=dataset \
LLM_MODEL=deepseek-chat \
LLM_API_BASE=https://api.deepseek.com \
MAX_A=8 \
MAX_B=12 \
TIMEOUT=120 \
./sailr_cegir/run_sailr_cegir_batch.sh 62911/libxml2_62911_vul local.oob.memfunc.length-misuse
```
Outputs will go under: se_runs/sailr/<PROJECT>/<SPEC_STEM>/
---


