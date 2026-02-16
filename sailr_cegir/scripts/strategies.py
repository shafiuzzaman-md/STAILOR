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

# STRATEGIES are strictly ordered. Specific matches are prioritized over generic ones.
STRATEGIES: Dict[str, Dict[str, Any]] = {
    
    # --- CWE-126: Buffer Over-read ---
    "BUFFER_OVERREAD": {
        "match": [
            r"buffer-overread", 
            r"overrun-read", 
            r"read-overflow",
            r"cwe-126"
        ],
        "suspect_calls": ["memcmp", "strcmp", "strncmp", "strchr", "strstr", "bcmp", "strlen", "strnlen"],
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is a Buffer Overread (CWE-125/126).\n"
            "*** PROBE-TRAP PROTOCOL ***\n"
            "1. ORACLE: Use 'instrumentation' to place STAILOR_PROBE() immediately BEFORE the vulnerable read.\n"
            "   - Directive: { 'file': '...', 'line': N, 'kind': 'insert_before', 'code': 'STAILOR_PROBE();' }\n"
            "2. LOGIC TRAP: If KLEE is silent (masked bug), use ReplaceCode to inject `if (cond) STAILOR_TRAP();`.\n"
            "3. CONTAINER LOGIC: If the bug is a read past the end of a string/buffer, ensure the input length exceeds the buffer size.\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX + "\n" + OOB_CONSTRAINT_GUIDE
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Allocate a SMALL fixed-size buffer (e.g. 'char buf[64]'). Do NOT allocate 4096 bytes.",
                "rationale": "Force the read operations to go beyond the allocated boundary."
            },
            {
                "type": "klee_assume",
                "constraint": "{{LEN_VAR}} > 64",
                "rationale": "Ensure length is sufficient to trigger overread on a 64-byte buffer."
            },
            {
                "type": "constraint_policy",
                "instruction": "Do NOT use sizeof() to constrain the read length unless protecting harness-local access.",
                "rationale": "Avoid safety coupling that hides the overread."
            }
        ]
    },

    # --- CWE-125: Out-of-Bounds Read ---
    "OOB_READ": {
        "match": [
            r"cwe-125", 
            r"oob.*read", 
            r"out-of-bounds.*read", 
            r"heap-inspection", 
            r"length-misuse"
        ],
        "suspect_calls": ["memcpy", "memmove", "bcopy"],
        # OOB_READ often does NOT crash. We confirm via an instrumented, rule-driven predicate at the vuln site.
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is an Out-of-Bounds Read (CWE-125).\n"
            "*** PROBE-TRAP PROTOCOL ***\n"
            "1. NO HARNESS ASSERTIONS: Do NOT place STAILOR_TRAP() in the harness.\n"
            "2. TARGET ORACLE (PROBE): Use 'instrumentation' to place STAILOR_PROBE() immediately BEFORE the vulnerable line.\n"
            "   - Directive: { 'file': '...', 'line': N, 'kind': 'insert_before', 'code': 'STAILOR_PROBE();' }\n"
            "3. SMART STUBBING: Identify static hash/crypto functions and stub them IN-SOURCE to return a CONSTANT to force collisions.\n"
            "   IMPORTANT: Prefer a NONZERO constant (e.g., 0x80000000) if the data structure treats 0 as an 'empty/sentinel' hash.\n"
            "4. CONTAINER LOGIC: Prime the state (concrete setup -> symbolic trigger).\n"
            "   - LENGTH-MISMATCH REQUIREMENT: If checking `entry->name[len]`, insert short key first, then lookup with larger length.\n"
            "5. LOOP POLICY (IMPORTANT): Do NOT add new loops over symbolic arrays purely to constrain bytes.\n"
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
                "instruction": "Do NOT add safety-coupling assumptions that constrain the bug-driving length in the target (e.g., '{{LEN_VAR}} < sizeof(target_buf)'). Exception: Harness-local safety bounds (BUF[{{LEN_VAR}}]) are permitted.",
                "rationale": "Target safety-coupling can hide the bug and invalidate confirmation."
            },
            {
                "type": "constraint_policy",
                "instruction": "Do NOT add new loops over symbolic arrays to enforce non-null characters. If you need a terminator, set 'buf[sizeof(buf)-1] = 0'.",
                "rationale": "New loops over symbolic arrays cause combinatorial path growth; preserve only program-required loops."
            }
        ]
    },

    # --- CWE-120: Classic Buffer Overflow (Specific) ---
    "BUFFER_OVERFLOW": {
        "match": [
            r"cwe-120", 
            r"buffer-overflow", 
            r"classic-overflow"
        ],
        "suspect_calls": ["strcpy", "sprintf", "gets", "strcat"],
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is a Classic Buffer Overflow (CWE-120).\n"
            "Input is copied without checking its size (e.g. strcpy, sprintf).\n"
            "*** ORACLE & PLACEMENT ***\n"
            "1. ORACLE: Use 'STAILOR_PROBE()' as a landing marker *BEFORE* the vulnerable call.\n"
            "2. GOAL: Provide an input larger than the destination buffer to trigger a crash.\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Allocate a concrete input buffer (e.g., 'char buf[256]').",
                "rationale": "Concrete buffers avoid symbolic-size allocation complexity."
            },
            {
                "type": "constraint_policy",
                "instruction": "Filter short strings: `if (strlen(buf) <= 64) return 0;`.",
                "rationale": "Using klee_assume on strlen can cause infeasible paths; filtering is safer."
            },
            {
                "type": "constraint_policy",
                "instruction": "Filter overly-long strings for performance: `if (strlen(buf) >= 128) return 0;`.",
                "rationale": "Keeps libc strlen loops tractable."
            }
        ]
    },

    # --- CWE-787: Generic OOB Write ---
    "OOB_WRITE": {
        "match": [
            r"cwe-787", r"cwe-805", r"cwe-121", r"cwe-122",
            r"oob.*write", r"out-of-bounds.*write", r"heap-overflow",
            r"stack-overflow", r"length-misuse"
        ],
        "suspect_calls": ["memcpy", "memmove", "memset", "snprintf"],
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is a Memory Corruption bug (Write/Overflow: CWE-787/805).\n"
            "ORACLE: Use 'STAILOR_PROBE()' as a landing marker *BEFORE* the vulnerable call.\n"
            "Logic: Probe confirms reachability. KLEE memory checker confirms the bug.\n"
            "HARNESS GOAL: Call the function with inputs that cause a write PAST the allocated buffer.\n"
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

    # --- CWE-416: Use-After-Free ---
    "UAF": {
        "match": [
            r"cwe-416", 
            r"use-after-free", 
            r"free-then-use", 
            r"free-then-deref", 
            r"free-then-callarg", 
            r"free-then-return",
            r"lookup-remove-use"
        ],
        "suspect_calls": ["free", "xmlFree", "xmlHashRemoveEntry", "xmlHashFree", "xmlDictFree"],
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is a Use-After-Free (CWE-416).\n"
            "*** ORACLE & PLACEMENT ***\n"
            "1. ORACLE: Use 'STAILOR_PROBE()' as a landing marker immediately BEFORE the vulnerable use site.\n"
            "   - Directive: { 'file': '...', 'line': N, 'kind': 'insert_before', 'code': 'STAILOR_PROBE();' }\n"
            "2. TRIGGER SEQUENCE: You must construct a path: Allocate -> Free -> Use.\n"
            "   - Case A (Direct): free(p); use(p);\n"
            "   - Case B (Lookup-Remove-Use): \n"
            "       val = lookup(key); // Keep pointer to val\n"
            "       remove(key);       // Frees the internal struct\n"
            "       use(val);          // UAF Trigger\n"
            "3. PRECONDITIONS: Ensure the object exists before freeing it. Do not double-free (unless testing CWE-415).\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Ensure the object is NOT NULL before freeing.",
                "rationale": "Freeing NULL is a no-op and won't trigger UAF."
            }
        ]
    },

    # --- CWE-415: Double Free ---
    "DOUBLE_FREE": {
        "match": [
            r"cwe-415", 
            r"double-free", 
            r"free-then-free"
        ],
        "suspect_calls": ["free", "xmlFree", "xmlHashFree"],
        "oracle_type": "probe_trap",
        "assertion_macro": "STAILOR_PROBE()",
        "planner_instruction": (
            "This is a Double Free (CWE-415).\n"
            "*** ORACLE & PLACEMENT ***\n"
            "1. ORACLE: Use 'STAILOR_PROBE()' immediately BEFORE the SECOND free call.\n"
            "2. TRIGGER SEQUENCE: Allocate -> Free -> Free.\n"
            "   - Do NOT set the pointer to NULL between frees (that makes the second free safe).\n"
            "   - Ensure the execution path actually hits both frees.\n"
            "\n" + GENERIC_STUBBING_POLICY + "\n" + GENERIC_LINKER_FIX
        ),
        "frozen_assumptions": [
            {
                "type": "vulnerability_setup",
                "instruction": "Do not nullify pointers after free().",
                "rationale": "Setting p=NULL prevents the double-free crash."
            }
        ]
    },

    # --- CWE-190: Integer Overflow ---
    "INT_OVERFLOW": {
        "match": [
            r"integer[-_ ]overflow",
            r"signed[-_ ]overflow",
            r"unsigned[-_ ]overflow",
            r"overflow[-_ ]in[-_ ]alloc",
            r"alloc[-_ ]size[-_ ]overflow",
            r"size[-_ ]calculation[-_ ]overflow",
            r"cwe-190", r"cwe-191", r"cwe-680", r"cwe-681",
        ],
        "oracle_type": "instrumented_predicate",
        "assertion_macro": "STAILOR_TRAP()",
        "planner_instruction": (
            "This is an Integer Overflow / Size Computation bug (e.g., CWE-190/191/680).\n"
            "ORACLE: Use an instrumented predicate at the computation/alloc site.\n"
            "*** PLACEMENT RULES ***\n"
            "1. Prefer target-site instrumentation: insert `if (<overflow predicate>) STAILOR_TRAP();` immediately BEFORE the vulnerable computation or allocation.\n"
            "2. Insert STAILOR_PROBE() immediately AFTER the line to confirm reachability.\n"
            "*** PREDICATE GUIDANCE ***\n"
            "You MUST express overflow using standard C idioms:\n"
            " - Prefer __builtin_add_overflow / __builtin_mul_overflow if available.\n"
            " - Otherwise use widening arithmetic (e.g., cast to unsigned __int128) and compare.\n"
            "Examples:\n"
            " - size_t out; if (__builtin_add_overflow(a, b, &out)) STAILOR_TRAP();\n"
            " - if ((unsigned __int128)a * (unsigned __int128)b > (unsigned __int128)SIZE_MAX) STAILOR_TRAP();\n"
        ),
    },

    "LOGIC": {
        "match": [],
        "oracle_type": "predicate",
        "assertion_macro": "STAILOR_TRAP()",
        "planner_instruction": (
            "This is a Logic Bug or Integer Issue. "
            "You MUST write a C boolean expression (Predicate) that is TRUE when the bug happens. "
            "Example: if (result < 0) STAILOR_TRAP();"
        ),
    },
}


def infer_strategy(spec_json: Dict[str, Any]) -> Tuple[str, Dict[str, Any]]:
    # 0) Honor an explicit strategy from upstream static analysis / spec when provided.
    explicit = (spec_json.get('strategy_name') or spec_json.get('strategy') or '').strip()
    if explicit:
        key = explicit.upper()
        if key in STRATEGIES:
            return key, STRATEGIES[key]
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