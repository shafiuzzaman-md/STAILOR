# sailr_cegir/scripts/strategies.py
import re
from typing import Dict, Tuple, Any

# --- GLOBAL POLICIES ---

GENERIC_STUBBING_POLICY = (
    "*** SMART & AGGRESSIVE STUBBING STRATEGY ***\n"
    "1. EVALUATE CONTEXT (Entrypoint -> Path -> Assertion):\n"
    "   - Do not just return 0. Analyze *what* return value allows execution to reach the oracle.\n"
    "   - Example: If code has `if (hash(k1) != hash(k2)) return;`, the stub MUST return a CONSTANT to force the collision.\n"
    "2. HANDLE DATA STRUCTURES (Hashing/Maps) SMARTLY:\n"
    "   - Real hash functions avoid collisions. Many OOB bugs live INSIDE collision handling logic.\n"
    "   - ACTION: Stub hash functions to return a CONSTANT that FORCES COLLISIONS.\n"
    "   - IMPORTANT: Prefer a NONZERO constant (e.g., 0x80000000) if the table treats 0 as 'empty'.\n"
    "3. PRESERVE REQUIRED MEMORY OPS (CRITICAL):\n"
    "   - Preserve the *program-required* memory access pattern when it is necessary to reach the vulnerable site.\n"
    "   - Do NOT introduce NEW loops over symbolic arrays merely to constrain bytes (path explosion).\n"
    "   - If the real code already performs `for(i< len) read buf[i]`, do not “optimize away” that read.\n"
    "   - If you only need a terminator for a string, set `buf[sizeof(buf)-1]=0` or constrain a small prefix.\n"
    "4. VISIBILITY RULE:\n"
    "   - PUBLIC/EXTERNAL functions: Stub in the harness (stub_func + #define).\n"
    "   - PRIVATE/STATIC functions: Stub via 'instrumentation' (insert 'return CONST;' ) inside the source file."
)

GENERIC_LINKER_FIX = (
    "*** GENERIC LINKER FIX (Macro Redirection) ***\n"
    "To stub a library function without 'multiple definition' linker errors:\n"
    "1. Do NOT define the function directly (e.g., 'void target_func...').\n"
    "2. Define a unique name: 'void stub_target_func(...)'.\n"
    "3. Use a preprocessor redirect: '#define target_func stub_target_func'."
)

OOB_CONSTRAINT_GUIDE = (
    "\n*** CRITICAL: DO NOT ENFORCE SAFETY ***\n"
    "Your goal is to REPRODUCE an out-of-bounds condition, not prevent it.\n"
    "1. DIVERGENT BUFFER SIZES: You MUST allocate a SMALL buffer but allow a LARGE length.\n"
    "   - RIGHT:  char buf[64]; klee_assume(len < 4096);\n"
    "   - WRONG:  char buf[4096]; klee_assume(len < 4096); (Safe -> Bug Missed)\n"
    "2. FORBIDDEN (TARGET SAFETY-COUPLING): Do not use 'sizeof(buf)' to constrain the length *that drives the target bug*.\n"
    "   EXCEPTION (HARNESS SAFETY): If the harness itself indexes buf[len-1] or buf[len], you MUST bound len by sizeof(buf)\n"
    "   OR avoid indexing using len (preferred: set buf[sizeof(buf)-1]=0 and only assume len>0).\n"
)

IN_SOURCE_STUBBING = (
    "\n*** PERFORMANCE TIP: IN-SOURCE SMART STUBBING ***\n"
    "If a 'static' function (hash, crypto, checksum) causes path explosion:\n"
    "1. ACTION: Stub it inside the target file using 'instrumentation'.\n"
    "2. DIRECTIVE: { 'file': '...', 'line': <start_of_body>, 'kind': 'insert_before', 'code': 'return 0x80000000; /* Forced Collision */' }\n"
)

# STRATEGIES are strictly ordered. Specific matches (OOB) are prioritized over generic ones (LOGIC/OVERFLOW).
STRATEGIES: Dict[str, Dict[str, Any]] = {
    "OOB_READ": {
        "match": [r"cwe-125", r"oob.*read", r"out-of-bounds.*read", r"buffer-overread", r"heap-inspection", r"length-misuse"],
        "suspect_calls": ["memcmp", "strcmp", "strncmp", "strchr", "strstr", "bcmp", "memcpy", "memmove"],
        # OOB_READ often does NOT crash. We confirm via an instrumented, rule-driven predicate at the vuln site.
        "oracle_type": "instrumented_predicate",
        "assertion_macro": "BUG_ASSERT(condition)",
        "planner_instruction": (
            "This is an Out-of-Bounds Read (CWE-125).\n"
            "*** STRICT PLACEMENT & LOGIC RULES ***\n"
            "1. NO HARNESS ASSERTIONS: Do NOT place BUG_ASSERT() or REACH_ASSERT() in the harness.\n"
            "2. TARGET ASSERTION (BUG): Use 'instrumentation' to place BUG_ASSERT() immediately BEFORE the vulnerable line.\n"
            "   - Directive: { 'file': '...', 'line': N, 'kind': 'insert_before', 'code': 'BUG_ASSERT(...);' }\n"
            "3. TARGET ASSERTION (REACH): Use 'instrumentation' to place REACH_ASSERT() immediately AFTER the vulnerable line.\n"
            "   - Directive: { 'file': '...', 'line': N, 'kind': 'insert_after', 'code': 'REACH_ASSERT();' }\n"
            "4. INJECT DEFINITIONS (CRITICAL): You MUST inject these definitions at the TOP of the target file (Line 1).\n"
            "   - Reason: The library file is compiled separately and does not see harness macros. We must fix visibility.\n"
            "   - Directive: {\n"
            "       'file': '<target_file.c>',\n"
            "       'line': 1,\n"
            "       'kind': 'insert_before',\n"
            "       'code': '#include <stdlib.h>\\n#include <assert.h>\\n"
            "#include <klee/klee.h>\\n"
            "#ifndef BUG_ASSERT\\n"
            "#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\\n" # Match klee_builder.txt semantics
            "#endif\\n"
            "#ifndef REACH_ASSERT\\n"
            "#define REACH_ASSERT() klee_assert(0 && \"REACH_ASSERT\")\\n"
            "#endif'\n"
            "     }\n"
            "5. SMART STUBBING: Identify static hash/crypto functions and stub them IN-SOURCE to return a CONSTANT to force collisions.\n"
            "   IMPORTANT: Prefer a NONZERO constant (e.g., 0x80000000) if the data structure treats 0 as an 'empty/sentinel' hash.\n"
            "6. CONTAINER LOGIC: Prime the state (concrete setup -> symbolic trigger).\n"
            "   - LENGTH-MISMATCH REQUIREMENT (stored-key lookups): If the bug site reads `entry->name[len]` / `entry->name[len-1]`\n"
            "     or compares a stored key against an external `(name, len)` (e.g., `memcmp(entry->name, name, len)` then `entry->name[len]`),\n"
            "     you MUST construct TWO operations: first insert/prime with a SHORT key using len1 (1..16), then a second lookup with len2 > len1\n"
            "     to force probing/compare of the short entry under the larger length. Repeating the same (name,len) will NOT reach the bug site.\n"
            "7. LOOP POLICY (IMPORTANT):\n"
            "   - Do NOT add new loops over symbolic arrays purely to constrain bytes (path explosion).\n"
            "   - Preserving an existing program loop that is required to reach the vulnerable read is allowed.\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX + "\n" + OOB_CONSTRAINT_GUIDE
            + "\n" + IN_SOURCE_STUBBING
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Allocate a SMALL fixed-size buffer (e.g. 'char buf[64]'). Do NOT allocate 4096 bytes.",
                "rationale": "We need the symbolic length (up to 4096) to EXCEED the allocation size to force an out-of-bounds READ at the target."
            },
            {
                "type": "klee_assume",
                "constraint": "{{LEN_VAR}} > 0",
                "rationale": "Realism: avoid degenerate trivial paths."
            },
            {
                "type": "klee_assume",
                "constraint": "{{LEN_VAR}} < 4096",
                "rationale": "Performance: keep solver search tractable."
            },
            {
                "type": "constraint_policy",
                "instruction": "Do NOT add safety-coupling assumptions that constrain the bug-driving length in the target (e.g., '{{LEN_VAR}} < sizeof(target_buf)' or min(..., sizeof(target_buf))). Exception: If the HARNESS itself performs indexing like 'buf[{{LEN_VAR}}]' or 'buf[{{LEN_VAR}}-1]' (or equivalent), you MUST add a harness-safety bound such as '{{LEN_VAR}} < sizeof(buf)' (or '{{LEN_VAR}} <= sizeof(buf)-1') to prevent a harness-local OOB crash before reaching the target.",
                "rationale": "Target safety-coupling can hide the bug and invalidate confirmation; harness-local bounds are permitted only to prevent premature harness crashes that block exploration."
            },
            {
                "type": "constraint_policy",
                "instruction": "Do NOT add new loops over symbolic arrays to enforce non-null characters. If you need a terminator, set 'buf[sizeof(buf)-1] = 0' or constrain only a small prefix.",
                "rationale": "New loops over symbolic arrays cause combinatorial path growth; preserve only program-required loops."
            }
        ]
    },

    "OOB_WRITE": {
        "match": [
            r"cwe-120", r"cwe-787", r"cwe-805", r"cwe-121", r"cwe-122",
            r"oob.*write", r"out-of-bounds.*write", r"heap-overflow",
            r"stack-overflow", r"buffer-overflow", r"length-misuse"
        ],
        "suspect_calls": ["memcpy", "memmove", "memset", "strcpy", "strncpy", "strcat", "sprintf", "snprintf", "gets"],
        "oracle_type": "crash",
        "assertion_macro": "BUG_ASSERT(0)",
        "planner_instruction": (
            "This is a Memory Corruption bug (Write/Overflow: CWE-120/787/805).\n"
            "ORACLE: Use 'BUG_ASSERT(0)' as a post-call landing marker *AFTER* the vulnerable call.\n"
            "Logic: 'If I reach this line, the crash did NOT happen.' (KLEE/ASan will catch the crash automatically).\n"
            "HARNESS GOAL: Call the function with inputs that cause a write PAST the allocated buffer.\n"
            "*** CRITICAL: INJECT DEFINITIONS ***\n"
            "You MUST inject these definitions at the TOP of the target file (Line 1) to support the oracle:\n"
            "   - Directive: {\n"
            "       'file': '<target_file.c>',\n"
            "       'line': 1,\n"
            "       'kind': 'insert_before',\n"
            "       'code': '#include <stdlib.h>\\n#include <assert.h>\\n"
            "#include <klee/klee.h>\\n"
            "#ifndef BUG_ASSERT\\n"
            "#define BUG_ASSERT(cond) klee_assert(!(cond) && \"BUG_ASSERT\")\\n" # Match klee_builder.txt semantics
            "#endif\\n"
            "#ifndef REACH_ASSERT\\n"
            "#define REACH_ASSERT() klee_assert(0 && \"REACH_ASSERT\")\\n"
            "#endif\\n'\n"
            "     }\n"
            "*** CRITICAL: PLACEMENT ***\n"
            "For OOB_WRITE, you MUST use 'insert_after' for the BUG_ASSERT(0) directive.\n"
            "Placing it 'insert_before' will crash the program before the bug triggers (False Positive).\n"
            "*** FORBIDDEN STUBS (CRITICAL) ***\n"
            "1. Do NOT stub 'strlen', 'malloc', 'calloc', or 'free' in the harness.\n"
            "   - Reason: The target library uses the REAL libc functions. Your harness #define may be ignored by the target (Phantom Stub).\n"
            "   - Reason: Returning fake values (like SIZE_MAX) creates logical contradictions with constraints (e.g., len < 128).\n"
            "2. To trigger overflows, use REAL inputs and REAL libc semantics.\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX
            + "\n" + IN_SOURCE_STUBBING
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Allocate a concrete input buffer (e.g., 'char buf[256]').",
                "rationale": "Concrete buffers avoid symbolic-size allocation complexity and reduce solver overhead."
            },
            {
                "type": "constraint_policy",
                "instruction": "Filter short strings: `if (strlen(buf) <= 64) return 0;` (DO NOT use klee_assume for this lower bound).",
                "rationale": "Using klee_assume on strlen-derived constraints can introduce many infeasible paths and premature terminations; filtering is safer."
            },
            {
                "type": "constraint_policy",
                "instruction": "Filter overly-long strings for performance: `if (strlen(buf) >= 128) return 0;` (preferred over klee_assume).",
                "rationale": "Keeps libc strlen loops tractable without relying on global solver assumptions."
            }
        ]
    },

    "UAF": {
        "match": [r"cwe-416", r"use-after-free", r"double-free"],
        "suspect_calls": ["free"],
        "oracle_type": "crash",
        "assertion_macro": "BUG_ASSERT(0)",
        "planner_instruction": (
            "This is a Use-After-Free (CWE-416). "
            "You MUST use 'BUG_ASSERT(0)' as a post-use landing marker. "
            "Ensure the object is freed *before* the vulnerable use in your call sequence."
        ),
    },

    "INT_OVERFLOW": {
        "match": [
            r"integer[-_ ]overflow",
            r"signed[-_ ]overflow",
            r"unsigned[-_ ]overflow",
            r"overflow[-_ ]in[-_ ]alloc",
            r"alloc[-_ ]size[-_ ]overflow",
            r"size[-_ ]calculation[-_ ]overflow",
            # Removed generic "cpp/.*overflow" to prevent stealing CWE-120
            r"cwe-190", r"cwe-191", r"cwe-680", r"cwe-681",
        ],
        "oracle_type": "instrumented_predicate",
        "assertion_macro": "BUG_ASSERT(condition)",
        "planner_instruction": (
            "This is an Integer Overflow / Size Computation bug (e.g., CWE-190/191/680).\n"
            "ORACLE: Use an instrumented predicate at the computation/alloc site.\n"
            "*** PLACEMENT RULES ***\n"
            "1. Prefer target-site instrumentation: insert BUG_ASSERT(<overflow predicate>) immediately BEFORE the vulnerable computation or allocation.\n"
            "2. Insert REACH_ASSERT() immediately AFTER the line to confirm reachability.\n"
            "*** PREDICATE GUIDANCE ***\n"
            "You MUST express overflow using standard C idioms:\n"
            " - Prefer __builtin_add_overflow / __builtin_mul_overflow if available.\n"
            " - Otherwise use widening arithmetic (e.g., cast to unsigned __int128) and compare.\n"
            "Examples:\n"
            " - size_t out; BUG_ASSERT(__builtin_add_overflow(a, b, &out));\n"
            " - BUG_ASSERT((unsigned __int128)a * (unsigned __int128)b > (unsigned __int128)SIZE_MAX);\n"
        ),
    },

    "LOGIC": {
        "match": [],
        "oracle_type": "predicate",
        "assertion_macro": "BUG_ASSERT(condition)",
        "planner_instruction": (
            "This is a Logic Bug or Integer Issue. "
            "You MUST write a C boolean expression (Predicate) that is TRUE when the bug happens. "
            "Example: BUG_ASSERT(result < 0)."
        ),
    },
}


def infer_strategy(spec_json: Dict[str, Any]) -> Tuple[str, Dict[str, Any]]:
    rule_id = str(spec_json.get("rule_id", "")).lower()
    msg = str(spec_json.get("message", "")).lower()
    filename = str(spec_json.get("file", "")).lower()

    # 1. Direct Regex Match
    for name, strategy in STRATEGIES.items():
        if name == "LOGIC":
            continue
        for pattern in strategy["match"]:
            if re.search(pattern, rule_id) or re.search(pattern, msg) or re.search(pattern, filename):
                return name, strategy

    # 2. Heuristic: Suspect Calls (if provided by static analysis facts)
    facts = spec_json.get("facts", {})
    suspects = facts.get("suspect_calls", []) if isinstance(facts, dict) else []

    for call in suspects:
        for name, strategy in STRATEGIES.items():
            if call in strategy.get("suspect_calls", []):
                return name, strategy

    return "LOGIC", STRATEGIES["LOGIC"]