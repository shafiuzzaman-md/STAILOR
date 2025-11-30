/**
 * @id local.oob.memfunc.length-misuse.maxcover.v5
 * @name OOB-risk (max coverage): length/count not clearly bounded (reads+writes)
 * @kind problem
 * @problem.severity warning
 * @precision low
 * @tags security external/cwe/cwe-125 external/cwe/cwe-787 external/cwe/cwe-120
 *
 * @shortDescription Broadly flags mem/strn/I/O calls where the count argument
 *                   isn’t trivially tied to destination capacity or string length.
 *
 * @description
 * High-coverage, AST-only heuristic intended to feed symbolic execution.
 * Skips only the most obviously safe sizeof(dest) pattern and direct
 * strlen/strnlen bounds.
 *
 * Covers (when a size/count arg exists):
 *   - mem* / strn* / strl* family
 *   - memchr / strnstr / memscan
 *   - fgets / read / pread / recv / recvfrom
 *   - copy_from_user / copy_to_user
 */

import cpp

/* ---- Helper: classify functions by name ---- */

private predicate isWriteFunc(Function f) {
  // writes to dest buffer
  f.getName().regexpMatch("(?i)^(memcpy|memmove|memset)$") or
  f.getName().regexpMatch("(?i)^(strncpy|strncat|strlcpy|strlcat)$")
}

/**
 * Pure/mostly-read operations that consume an input buffer
 * or walk strings with an explicit bound.
 */
private predicate isReadFunc(Function f) {
  // comparisons
  f.getName().regexpMatch("(?i)^(memcmp|bcmp|strncmp|strncasecmp)$") or
  // search / scan
  f.getName().regexpMatch("(?i)^(memchr|strnstr|memscan)$") or
  // generic I/O / kernel-style copies (read-side)
  f.getName().regexpMatch("(?i)^(read|pread|recv|recvfrom)$") or
  // fgets(buf, size, stream)
  f.getName().regexpMatch("(?i)^fgets$") or
  // common kernel helpers
  f.getName().regexpMatch("(?i)^(copy_from_user|copy_to_user)$")
}

private predicate isTargetFunc(Function f) {
  isWriteFunc(f) or isReadFunc(f)
}

/* n is obviously string-bounded via strlen/strnlen */
private predicate isStringBound(Expr e) {
  exists(FunctionCall c |
    c = e and
    (
      c.getTarget().getName().regexpMatch("(?i)^strlen$") or
      c.getTarget().getName().regexpMatch("(?i)^strnlen$")
    )
  )
}

/* crude text-like sizeof(...) check (no SizeofExpr class used) */
private predicate isSizeofLike(Expr e) {
  e.toString().regexpMatch("(?i)\\bsizeof\\s*\\(")
}

/* ---- Argument position helpers ---- */

/**
 * countArg(fc, n) holds if n is the "length / count / size" argument
 * for the given library-style call.
 *
 * This is intentionally heuristic: we just map by common signatures.
 */
private predicate countArg(FunctionCall fc, Expr n) {
  exists(Function f |
    f = fc.getTarget() |
    // classic mem*/strn*/strl*/memcmp/bcmp/strncmp/strncasecmp/memchr/strnstr/memscan: 3rd arg
    (
      f.getName().regexpMatch("(?i)^(memcpy|memmove|memset|memcmp|bcmp|strncmp|strncasecmp)$") or
      f.getName().regexpMatch("(?i)^(strncpy|strncat|strlcpy|strlcat)$") or
      f.getName().regexpMatch("(?i)^(memchr|strnstr|memscan)$")
    ) and
    fc.getNumberOfArguments() >= 3 and
    n = fc.getArgument(2)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // fgets(buf, size, stream) → size is arg1
    f.getName().regexpMatch("(?i)^fgets$") and
    fc.getNumberOfArguments() >= 2 and
    n = fc.getArgument(1)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // read(fd, buf, count), recv/recvfrom(fd, buf, len, ...)
    f.getName().regexpMatch("(?i)^(read|recv|recvfrom)$") and
    fc.getNumberOfArguments() >= 3 and
    n = fc.getArgument(2)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // pread(fd, buf, count, off) – count is arg2
    f.getName().regexpMatch("(?i)^pread$") and
    fc.getNumberOfArguments() >= 4 and
    n = fc.getArgument(2)
  )
  or
  exists(Function f |
    f = fc.getTarget() |
    // copy_from_user/to_user(dst, src, size)
    f.getName().regexpMatch("(?i)^(copy_from_user|copy_to_user)$") and
    fc.getNumberOfArguments() >= 3 and
    n = fc.getArgument(2)
  )
}

/* destination presence: arg0 is usually the dest buffer */
private predicate hasDestArg(FunctionCall fc) { fc.getNumberOfArguments() >= 1 }

/* ---- Main match ---- */
from FunctionCall fc, Function f, Expr n
where
  fc.getTarget() = f and
  isTargetFunc(f) and
  countArg(fc, n) and
  // skip obviously bounded cases
  not isStringBound(n) and
  not isSizeofLike(n)
select
  fc,
  "High-coverage OOB risk: length/count may be unbounded for " + f.getName() + "().",
  n,
  "length/count argument"
