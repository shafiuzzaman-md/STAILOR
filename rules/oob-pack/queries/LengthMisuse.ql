/**
 * @id local/cpp/length-misuse
 * @name Potential Buffer Overflow: Length Argument Misuse
 * @description Flags memory and I/O functions where the length/count argument 
 * is not visibly bounded by 'sizeof' or string length.
 * Acts as a high-recall candidate generator for symbolic execution.
 * @kind problem
 * @problem.severity warning
 * @precision low
 * @tags security 
 * external/cwe/cwe-120
 * external/cwe/cwe-125
 * external/cwe/cwe-787
 */

import cpp

/* ---- Classification Helpers ---- */

/**
 * Functions that write to a destination buffer.
 */
private predicate isWriteFunc(Function f) {
  f.getName().regexpMatch("(?i)^(memcpy|memmove|memset)$") or
  f.getName().regexpMatch("(?i)^(strncpy|strncat|strlcpy|strlcat)$")
}

/**
 * Functions that read from a buffer or perform bounded scans.
 */
private predicate isReadFunc(Function f) {
  // Comparisons
  f.getName().regexpMatch("(?i)^(memcmp|bcmp|strncmp|strncasecmp)$") or
  // Search / Scan
  f.getName().regexpMatch("(?i)^(memchr|strnstr|memscan)$") or
  // Generic I/O / Kernel-style copies
  f.getName().regexpMatch("(?i)^(read|pread|recv|recvfrom)$") or
  // File I/O
  f.getName().regexpMatch("(?i)^fgets$") or
  // Kernel Helpers
  f.getName().regexpMatch("(?i)^(copy_from_user|copy_to_user)$")
}

private predicate isTargetFunc(Function f) {
  isWriteFunc(f) or isReadFunc(f)
}

/* ---- Safety Heuristics ---- */

/** * Checks if an expression is explicitly bounded by string length.
 * e.g. strnlen(s, max)
 */
private predicate isStringBound(Expr e) {
  exists(FunctionCall c |
    c = e and
    c.getTarget().getName().regexpMatch("(?i)^(strlen|strnlen)$")
  )
}

/**
 * Checks if an expression is a 'sizeof' operator.
 * Uses the AST class SizeofOperator for robustness (replaces fragile regex).
 */
private predicate isSizeofLike(Expr e) {
  e instanceof SizeofOperator
}

/* ---- Argument Position Logic ---- */

/**
 * Identifies the argument representing "length", "count", or "size"
 * based on the function signature.
 */
private predicate countArg(FunctionCall fc, Expr n) {
  exists(Function f |
    f = fc.getTarget() |
    (
      // Case 1: 3rd Argument is Length (Standard Lib)
      // memcpy(dst, src, len), strncpy(dst, src, len), memcmp(a, b, len)
      f.getName().regexpMatch("(?i)^(memcpy|memmove|memset|memcmp|bcmp|strncmp|strncasecmp)$") or
      f.getName().regexpMatch("(?i)^(strncpy|strncat|strlcpy|strlcat)$") or
      f.getName().regexpMatch("(?i)^(memchr|strnstr|memscan)$") or
      f.getName().regexpMatch("(?i)^(read|recv|recvfrom)$") or
      f.getName().regexpMatch("(?i)^(copy_from_user|copy_to_user)$")
    ) and
    fc.getNumberOfArguments() >= 3 and
    n = fc.getArgument(2)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // Case 2: 2nd Argument is Length (fgets)
    // fgets(buf, size, stream)
    f.getName().regexpMatch("(?i)^fgets$") and
    fc.getNumberOfArguments() >= 2 and
    n = fc.getArgument(1)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // Case 3: 3rd Argument is Length (pread)
    // pread(fd, buf, count, off) -> count is index 2
    f.getName().regexpMatch("(?i)^pread$") and
    fc.getNumberOfArguments() >= 4 and
    n = fc.getArgument(2)
  )
}

/* ---- Main Query ---- */

from FunctionCall fc, Function f, Expr n
where
  fc.getTarget() = f and
  isTargetFunc(f) and
  countArg(fc, n) and
  // Exclusion: Skip obviously safe patterns to reduce trivial noise
  not isStringBound(n) and
  not isSizeofLike(n)
select
  fc,
  "Potential OOB Risk: The length argument for " + f.getName() + "() is not trivially bounded.",
  n,
  "Length Argument"