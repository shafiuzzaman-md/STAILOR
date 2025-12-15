# SA driven LLM Harness: Single-shot LLM-generated harness using the SA spec, without SAILR’s counterexample-guided refinement loop.

- Single-shot: exactly one LLM call per spec, no iterative refinement.
- SA-driven: prompt is fully parameterized by the SA spec + code context.
- Harness: harness.c is the TU with main + assertions + calls into project.

```
chmod +x sa_llm/run_sa_llm_batch.sh

export DEEPSEEK_API_KEY="sk-..."   # must be your full key

PYTHONPATH=. sa_llm/run_sa_llm_batch.sh \
  --project-name libxml2_55980_vul \
  --src-root     dataset/libxml2_55980_vul \
  --spec-dir     specs/libxml2_55980_vul \
  --out-root     se_runs \
  --clang        clang-14 \
  --klee         klee \
  --clang-flags  "-I. -I/usr/include/libxml2 -Isa_manual -include sa_manual/sailr_assert.h -Ise_runs" \
  --klee-flags   "--search=nurs:covnew --max-time=3600" \
  --jobs         1

python3 sa_llm/aggregate_sa_llm_results.py \
  --mode-root se_runs/sa_llm/libxml2_55980_vul \
  --llm-usage-log llm_usage.tsv

```

summary.tsv:

- Vul = number of specs where num_vuln_assert > 0

- VulnAsserts = total number of vuln assertion triggers (sum over specs)

- ReachSpecs = number of specs where num_reach_assert > 0

- ReachAsserts = total number of reach assertion triggers

- VulOnlySpecs = specs with num_vuln > 0 and num_reach == 0

- ReachOnlySpecs= specs with num_vuln == 0 and num_reach > 0

- VulAndReachSpecs = specs with both num_vuln > 0 and num_reach > 0

- AvgVulnPerPos = average vuln triggers among positive specs
(VulnAsserts / Vul, 0 if Vul=0)

- AvgReachPerPos = average reach triggers among reach-positive specs
(ReachAsserts / ReachSpecs, 0 if ReachSpecs=0)