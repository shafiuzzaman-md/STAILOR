#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
tp_classifier.py
Project-Agnostic True-Positive Classification for STAILOR Findings.

Replaces the binary TP/FP classification with a multi-dimensional
confidence score based on independent signals:
  1. Location proximity  – how close is the crash to the target?
  2. Bug-type concordance – does the crash type match the spec?
  3. Path coverage        – did KLEE reach the target area (probe rungs)?
  4. Stack quality        – is the crash in meaningful code or in shims/libc?
  5. Validation result    – did ASAN replay confirm the crash?

Usage:
    from tp_classifier import TPClassifier, TPVerdict
    classifier = TPClassifier(target_file, target_line, spec_bug_type)
    verdict = classifier.classify(klee_stats, oracle_assessment)
    verdict = classifier.boost_with_validation(verdict, validation_result)
"""

from __future__ import annotations

import os
import re
from dataclasses import dataclass, field, asdict
from typing import Any, Dict, List, Optional, Tuple


# ---------------------------------------------------------------------------
#  Bug-type taxonomy (project-agnostic)
# ---------------------------------------------------------------------------

# Maps (crash_category, spec_family) -> concordance score.
# crash_category comes from KLEE log parsing; spec_family from the SA spec.
_TYPE_CONCORDANCE: Dict[Tuple[str, str], float] = {
    # Memory crashes matching memory-safety specs
    ("memory", "OOB"):              0.95,
    ("memory", "BUFFER_OVERFLOW"):  0.90,
    ("memory", "BUFFER_OVERREAD"):  0.90,
    ("memory", "OOB_READ"):         0.90,
    ("memory", "OOB_WRITE"):        0.90,
    ("memory", "UAF"):              0.80,
    ("memory", "USE_AFTER_FREE"):   0.80,
    ("memory", "DOUBLE_FREE"):      0.75,
    ("memory", "NULL_DEREF"):       0.70,
    ("memory", "INVALID_POINTER"):  0.70,
    ("memory", "DANGLING_POINTER"): 0.75,
    ("memory", "STACK_UAF"):        0.75,
    ("memory", "INTEGER_OVERFLOW"): 0.50,
    ("memory", "INT_OVERFLOW"):     0.50,
    ("memory", "ALLOC_SIZE_OVERFLOW"): 0.60,
    ("memory", "INCORRECT_LENGTH"): 0.65,
    ("memory", "OUT_OF_RANGE_POINTER"): 0.80,

    # Spec (probe/trap) crashes
    ("spec", "OOB"):                1.00,
    ("spec", "OOB_READ"):           1.00,
    ("spec", "OOB_WRITE"):          1.00,
    ("spec", "BUFFER_OVERFLOW"):    1.00,
    ("spec", "BUFFER_OVERREAD"):    1.00,
    ("spec", "UAF"):                1.00,
    ("spec", "USE_AFTER_FREE"):     1.00,
    ("spec", "DOUBLE_FREE"):        1.00,
    ("spec", "NULL_DEREF"):         1.00,
    ("spec", "INT_OVERFLOW"):       1.00,
    ("spec", "LOGIC"):              0.90,
}

# Functions considered "infrastructure" or "shim" — not project code.
_SHIM_FUNCS = frozenset({
    "bcmp", "memcmp", "strcmp", "strncmp", "memcpy", "memmove", "memset",
    "strlen", "strnlen", "strcpy", "strncpy", "stpcpy", "strcat", "strncat",
    "__klee_posix_wrapped_main", "__user_main", "__uClibc_main", "main",
    "__stailor_safe_memmove", "__stailor_safe_memcpy", "__stailor_safe_memset",
})

# ASAN error types mapped to spec bug families
_ASAN_TYPE_MAP: Dict[str, List[str]] = {
    "heap-buffer-overflow":       ["OOB", "OOB_WRITE", "OOB_READ", "BUFFER_OVERFLOW", "BUFFER_OVERREAD"],
    "stack-buffer-overflow":      ["OOB", "OOB_WRITE", "OOB_READ", "BUFFER_OVERFLOW"],
    "global-buffer-overflow":     ["OOB", "BUFFER_OVERFLOW"],
    "heap-use-after-free":        ["UAF", "USE_AFTER_FREE", "DANGLING_POINTER"],
    "stack-use-after-return":     ["UAF", "STACK_UAF"],
    "double-free":                ["DOUBLE_FREE"],
    "alloc-dealloc-mismatch":     ["DOUBLE_FREE"],
    "SEGV on unknown address":    ["NULL_DEREF", "INVALID_POINTER", "OOB"],
    "attempting free on address":  ["DOUBLE_FREE", "UAF"],
    "container-overflow":         ["OOB", "BUFFER_OVERFLOW"],
}


# ---------------------------------------------------------------------------
#  Signal weights (tunable)
# ---------------------------------------------------------------------------

@dataclass
class SignalWeights:
    """Weights for combining TP signals. Must sum to ~1.0."""
    location:      float = 0.30
    type_match:    float = 0.20
    path_coverage: float = 0.25
    stack_quality: float = 0.10
    validation:    float = 0.15


# ---------------------------------------------------------------------------
#  Verdict data class
# ---------------------------------------------------------------------------

@dataclass
class TPVerdict:
    """Structured TP classification result."""
    confidence:        float              # 0.0 – 1.0 overall
    label:             str                # SPEC_BUG | LIKELY_TP | POSSIBLE_TP | UNTARGETED | FP
    signals:           Dict[str, float] = field(default_factory=dict)
    evidence:          List[str]        = field(default_factory=list)
    validation_status: str              = "PENDING"  # VALIDATED_CRASH | NO_CRASH | SKIPPED | PENDING
    crash_at_target:   bool             = False
    crash_type_match:  bool             = False

    def to_dict(self) -> Dict[str, Any]:
        return asdict(self)

    @property
    def is_tp(self) -> bool:
        return self.label in ("SPEC_BUG", "LIKELY_TP")


# ---------------------------------------------------------------------------
#  TP Classifier
# ---------------------------------------------------------------------------

class TPClassifier:
    """
    Project-agnostic TP classifier.

    Instantiate once per spec (target_file + target_line + bug type),
    then call ``classify()`` for every KLEE finding and optionally
    ``boost_with_validation()`` after ASAN replay.
    """

    # Thresholds (tunable)
    THRESHOLD_SPEC_BUG   = 0.75
    THRESHOLD_LIKELY_TP  = 0.50
    THRESHOLD_POSSIBLE   = 0.30

    def __init__(
        self,
        target_file: str,
        target_line: int,
        spec_bug_type: str,
        *,
        weights: Optional[SignalWeights] = None,
    ):
        self.target_file = target_file
        self.target_line = target_line
        self.target_base = os.path.basename(target_file) if target_file else ""
        self.spec_bug_type = spec_bug_type.upper() if spec_bug_type else ""
        self.weights = weights or SignalWeights()

    # ----- public API -----

    def classify(
        self,
        klee_stats: Dict[str, Any],
        oracle_assessment: Dict[str, Any],
    ) -> TPVerdict:
        """
        Compute a TP confidence score from KLEE execution results and
        oracle assessment.  Returns a ``TPVerdict``.
        """
        signals: Dict[str, float] = {}
        evidence: List[str] = []

        # 1. Location proximity
        loc_score, loc_ev = self._score_location(klee_stats)
        signals["location"] = loc_score
        evidence.append(loc_ev)

        # 2. Bug-type concordance
        type_score, type_ev = self._score_type_match(klee_stats)
        signals["type_match"] = type_score
        evidence.append(type_ev)

        # 3. Path coverage (probe rungs)
        cov_score, cov_ev = self._score_path_coverage(oracle_assessment)
        signals["path_coverage"] = cov_score
        evidence.append(cov_ev)

        # 4. Stack quality
        stk_score, stk_ev = self._score_stack_quality(klee_stats)
        signals["stack_quality"] = stk_score
        evidence.append(stk_ev)

        # Validation placeholder (0.5 = neutral until we know)
        signals["validation"] = 0.5

        # Weighted combination
        w = self.weights
        confidence = (
            signals["location"]      * w.location +
            signals["type_match"]    * w.type_match +
            signals["path_coverage"] * w.path_coverage +
            signals["stack_quality"] * w.stack_quality +
            signals["validation"]    * w.validation
        )
        confidence = round(min(max(confidence, 0.0), 1.0), 4)

        label = self._label_from_confidence(confidence)

        # Special case: spec_violation flag from oracle always wins
        if oracle_assessment.get("spec_violation"):
            if confidence < self.THRESHOLD_SPEC_BUG:
                confidence = max(confidence, self.THRESHOLD_SPEC_BUG)
                label = "SPEC_BUG"
                evidence.append("oracle_spec_violation_override")

        return TPVerdict(
            confidence=confidence,
            label=label,
            signals=signals,
            evidence=evidence,
        )

    def boost_with_validation(
        self,
        verdict: TPVerdict,
        validation_result: Dict[str, Any],
    ) -> TPVerdict:
        """
        Re-score a verdict after ASAN validation completes.

        ``validation_result`` should have keys:
          - asan_status:  VALIDATED_CRASH | NO_CRASH | SKIPPED | COMPILATION_FAILED
          - crash_at_target: bool
          - crash_type_matches_spec: bool
          - asan_frames: list of (func, file, line) tuples (optional)
        """
        asan_status = validation_result.get("asan_status", "SKIPPED")
        verdict.validation_status = asan_status

        if asan_status == "VALIDATED_CRASH":
            val_score = 0.8
            verdict.evidence.append("asan_crash_confirmed")

            if validation_result.get("crash_at_target"):
                val_score = 1.0
                verdict.crash_at_target = True
                verdict.evidence.append("asan_crash_at_target_location")

            if validation_result.get("crash_type_matches_spec"):
                val_score = min(1.0, val_score + 0.1)
                verdict.crash_type_match = True
                verdict.evidence.append("asan_type_matches_spec")

        elif asan_status == "NO_CRASH":
            val_score = 0.0
            verdict.evidence.append("asan_no_crash_FP_signal")
        else:
            val_score = 0.5  # inconclusive

        verdict.signals["validation"] = val_score

        # Recompute confidence
        w = self.weights
        confidence = sum(
            verdict.signals.get(k, 0.5) * getattr(w, k)
            for k in ("location", "type_match", "path_coverage", "stack_quality", "validation")
        )
        verdict.confidence = round(min(max(confidence, 0.0), 1.0), 4)
        verdict.label = self._label_from_confidence(verdict.confidence)

        # Hard override: ASAN crash at target = always TP
        if verdict.crash_at_target and verdict.crash_type_match:
            verdict.label = "SPEC_BUG"
            verdict.confidence = max(verdict.confidence, 0.95)

        # Hard override: ASAN no crash = strong FP signal (but not absolute)
        if asan_status == "NO_CRASH" and verdict.confidence < self.THRESHOLD_POSSIBLE:
            verdict.label = "FP"
            verdict.evidence.append("downgraded_by_failed_validation")

        return verdict

    # ----- signal scorers (all project-agnostic) -----

    def _score_location(self, stats: Dict[str, Any]) -> Tuple[float, str]:
        """Score based on proximity of crash location to target."""
        eff_file = stats.get("effective_error_file") or stats.get("error_file") or ""
        eff_line = int(stats.get("effective_error_line") or stats.get("error_line") or 0)

        if not eff_file or eff_line <= 0:
            return 0.1, "location=unknown"

        eff_base = os.path.basename(eff_file)

        # Exact file match
        if eff_base == self.target_base:
            distance = abs(eff_line - self.target_line)
            if distance == 0:
                return 1.0, f"location=exact_match:{eff_base}:{eff_line}"
            elif distance <= 3:
                return 0.95, f"location=near_exact:{eff_base}:{eff_line}(d={distance})"
            elif distance <= 10:
                return 0.85, f"location=close:{eff_base}:{eff_line}(d={distance})"
            elif distance <= 30:
                return 0.65, f"location=same_region:{eff_base}:{eff_line}(d={distance})"
            elif distance <= 80:
                return 0.45, f"location=same_file:{eff_base}:{eff_line}(d={distance})"
            else:
                return 0.30, f"location=distant_same_file:{eff_base}:{eff_line}(d={distance})"

        # Target file in stack frames?
        frames = self._normalize_frames(stats.get("stack_frames", []))
        for _, fpath, fline in frames:
            if os.path.basename(fpath) == self.target_base:
                distance = abs(fline - self.target_line)
                if distance <= 10:
                    return 0.70, f"location=target_in_stack:{fpath}:{fline}(d={distance})"
                elif distance <= 50:
                    return 0.40, f"location=target_in_stack_far:{fpath}:{fline}(d={distance})"
                else:
                    return 0.25, f"location=target_in_stack_distant:{fpath}:{fline}"

        return 0.05, f"location=different_file:{eff_base}"

    def _score_type_match(self, stats: Dict[str, Any]) -> Tuple[float, str]:
        """Score based on concordance between crash type and spec bug type."""
        crash_type = (stats.get("crash_type") or "").lower()

        if not crash_type or crash_type in ("timeout", "other", "unknown"):
            return 0.1, f"type=inconclusive({crash_type})"

        # Look up in concordance table
        best_score = 0.0
        for (ct, st), score in _TYPE_CONCORDANCE.items():
            if ct in crash_type and st in self.spec_bug_type:
                best_score = max(best_score, score)

        if best_score > 0:
            return best_score, f"type=concordant({crash_type}<->{self.spec_bug_type},s={best_score})"

        # Partial: crash is "memory" and spec is some memory safety class
        memory_families = {"OOB", "UAF", "BUFFER", "NULL", "DANGLING", "DOUBLE", "INVALID", "OVERFLOW"}
        if "memory" in crash_type and any(f in self.spec_bug_type for f in memory_families):
            return 0.4, f"type=generic_memory_match({crash_type})"

        # External / blocker crashes are not TPs
        if crash_type in ("blocker_external", "blocker_intrinsic", "external"):
            return 0.0, f"type=infrastructure({crash_type})"

        return 0.15, f"type=no_match({crash_type}vs{self.spec_bug_type})"

    def _score_path_coverage(self, oracle: Dict[str, Any]) -> Tuple[float, str]:
        """Score based on how far KLEE reached toward the target (rung system)."""
        max_rung = oracle.get("max_rung", 0)
        spec_violation = oracle.get("spec_violation", False)

        if spec_violation:
            return 1.0, "path=spec_violation_confirmed"

        rung_scores = {0: 0.0, 1: 0.35, 2: 0.80}
        score = rung_scores.get(max_rung, min(0.9, 0.3 + max_rung * 0.2))

        probes = oracle.get("probes_hit", [])
        return score, f"path=rung_{max_rung}(probes={probes})"

    def _score_stack_quality(self, stats: Dict[str, Any]) -> Tuple[float, str]:
        """
        Score based on whether the crash is in project code (good)
        vs libc/shims/harness (bad).
        """
        frames = self._normalize_frames(stats.get("stack_frames", []))
        if not frames:
            return 0.5, "stack=no_frames"

        top_func, top_file, _ = frames[0]

        # Crash in harness = bad
        if "harness" in top_file.lower():
            return 0.15, f"stack=harness_crash({top_func})"

        # Crash in shim = slightly bad (real bug may be one frame up)
        if top_func in _SHIM_FUNCS:
            # Check if the CALLER is in project code
            if len(frames) > 1:
                caller_func, caller_file, _ = frames[1]
                if caller_func not in _SHIM_FUNCS and "harness" not in caller_file.lower():
                    return 0.65, f"stack=shim_but_caller_ok({top_func}->{caller_func})"
            return 0.30, f"stack=shim_crash({top_func})"

        # Crash in libc internals
        if self._is_internal_path(top_file):
            # Walk up to find first project frame
            for fn, fp, _ in frames[1:]:
                if fn not in _SHIM_FUNCS and not self._is_internal_path(fp):
                    return 0.55, f"stack=libc_but_project_caller({top_func}->{fn})"
            return 0.20, f"stack=deep_libc({top_func})"

        # Crash in project code = good
        return 0.90, f"stack=project_code({top_func}@{os.path.basename(top_file)})"

    # ----- helpers -----

    def _label_from_confidence(self, conf: float) -> str:
        if conf >= self.THRESHOLD_SPEC_BUG:
            return "SPEC_BUG"
        elif conf >= self.THRESHOLD_LIKELY_TP:
            return "LIKELY_TP"
        elif conf >= self.THRESHOLD_POSSIBLE:
            return "POSSIBLE_TP"
        else:
            return "UNTARGETED"

    @staticmethod
    def _normalize_frames(frame_list) -> List[Tuple[str, str, int]]:
        """Normalize heterogeneous frame formats to (func, file, line) tuples."""
        result = []
        for fr in (frame_list or []):
            if isinstance(fr, dict):
                result.append((
                    str(fr.get("func", "")).strip(),
                    str(fr.get("file", "")).strip(),
                    int(fr.get("line", 0)),
                ))
            elif isinstance(fr, (tuple, list)) and len(fr) >= 3:
                result.append((
                    str(fr[0]).strip(),
                    str(fr[1]).strip(),
                    int(fr[2]),
                ))
        return result

    @staticmethod
    def _is_internal_path(path: str) -> bool:
        """Detect KLEE/libc/runtime internal paths."""
        p = path.lower().replace("\\", "/")
        return any(tok in p for tok in [
            "libc/", "runtime/", "klee-uclibc", "include/klee",
            "musl/", "glibc/", "/usr/include/",
        ])


# ---------------------------------------------------------------------------
#  Enhanced ASAN Validation Result Parser (project-agnostic)
# ---------------------------------------------------------------------------

def parse_asan_output(
    asan_stderr: str,
    target_file: str,
    target_line: int,
    spec_bug_type: str,
    *,
    proximity_threshold: int = 30,
) -> Dict[str, Any]:
    """
    Parse ASAN stderr output and check if the crash matches the target.

    Returns a dict suitable for ``TPClassifier.boost_with_validation()``:
      - asan_status: str
      - crash_at_target: bool
      - crash_type_matches_spec: bool
      - asan_error_type: str
      - asan_frames: list
    """
    result: Dict[str, Any] = {
        "asan_status": "NO_CRASH",
        "crash_at_target": False,
        "crash_type_matches_spec": False,
        "asan_error_type": "",
        "asan_frames": [],
    }

    if not asan_stderr:
        return result

    has_asan = "AddressSanitizer" in asan_stderr
    has_segv = "Segmentation fault" in asan_stderr
    has_abort = "Aborted" in asan_stderr or "ASSERTION" in asan_stderr

    if not (has_asan or has_segv or has_abort):
        return result

    result["asan_status"] = "VALIDATED_CRASH"

    # Extract ASAN error type
    error_type_match = re.search(
        r"ERROR:\s*AddressSanitizer:\s*([a-z\-]+)",
        asan_stderr, re.IGNORECASE,
    )
    if error_type_match:
        result["asan_error_type"] = error_type_match.group(1)

    # Extract stack frames:  #N 0xADDR in func file:line[:col]
    frame_pattern = re.compile(
        r"#(\d+)\s+0x[0-9a-fA-F]+\s+in\s+(\S+)\s+(\S+?):(\d+)"
    )
    frames = []
    for m in frame_pattern.finditer(asan_stderr):
        frames.append({
            "frame": int(m.group(1)),
            "func": m.group(2),
            "file": m.group(3),
            "line": int(m.group(4)),
        })
    result["asan_frames"] = frames

    # Check location match
    target_base = os.path.basename(target_file) if target_file else ""
    for fr in frames:
        if os.path.basename(fr["file"]) == target_base:
            distance = abs(fr["line"] - target_line)
            if distance <= proximity_threshold:
                result["crash_at_target"] = True
                break

    # Check type concordance
    spec_upper = spec_bug_type.upper() if spec_bug_type else ""
    asan_type = result["asan_error_type"]
    for asan_key, spec_families in _ASAN_TYPE_MAP.items():
        if asan_key in asan_type or asan_key in asan_stderr:
            if any(fam in spec_upper for fam in spec_families):
                result["crash_type_matches_spec"] = True
                break

    return result


# ---------------------------------------------------------------------------
#  Post-hoc review pass (run after all findings collected)
# ---------------------------------------------------------------------------

def tp_review_pass(
    findings: list,
    target_file: str,
    target_line: int,
    spec_bug_type: str,
) -> list:
    """
    Re-examine all findings and attach a ``tp_verdict`` to each.
    Promotes or demotes labels based on confidence scores.

    Args:
        findings: List of (label, stats_dict) tuples
        target_file, target_line, spec_bug_type: from the spec

    Returns:
        List of (new_label, updated_stats_dict) tuples
    """
    classifier = TPClassifier(target_file, target_line, spec_bug_type)
    reviewed = []

    for label, stats in findings:
        # Skip error/empty findings
        if label == "E" or not isinstance(stats, dict):
            reviewed.append((label, stats))
            continue

        oracle_assessment = {
            "max_rung":       stats.get("oracle_max_rung", 0),
            "spec_violation": stats.get("oracle_spec_violation", False),
            "probes_hit":     stats.get("oracle_probes_hit", []),
            "crash_types":    stats.get("oracle_crash_types", []),
        }

        verdict = classifier.classify(stats, oracle_assessment)

        # Promotion: high-confidence untargeted -> SPEC_BUG
        if verdict.confidence >= TPClassifier.THRESHOLD_SPEC_BUG and label == "FOUND_UNTARGETED":
            label = "SPEC_BUG"
            verdict.evidence.append(f"promoted_from_UNTARGETED(conf={verdict.confidence})")

        # Demotion: low-confidence SPEC_BUG -> FOUND_UNTARGETED
        elif verdict.confidence < TPClassifier.THRESHOLD_POSSIBLE and label == "SPEC_BUG":
            label = "FOUND_UNTARGETED"
            verdict.evidence.append(f"demoted_from_SPEC_BUG(conf={verdict.confidence})")

        stats["tp_verdict"] = verdict.to_dict()
        reviewed.append((label, stats))

    return reviewed
