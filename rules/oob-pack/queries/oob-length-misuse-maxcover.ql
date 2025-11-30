/**
 * @id local.oob.memfunc.length-misuse.maxcover.v4
 * @name OOB-risk (max coverage): length/count not clearly bounded
 * @kind problem
 * @problem.severity warning
 * @precision low
 * @tags security external/cwe/cwe-125 external/cwe/cwe-787 external/cwe/cwe-120
 *
 * @shortDescription Broadly flags mem*,strn* calls where the count argument
 *                   isn’t trivially tied to destination capacity or string length.
 * @description
 * High-coverage, AST-only heuristic. Intentionally permissive to feed symbolic execution.
 * Skips only the most obviously safe sizeof(dest) pattern and direct strlen/strnlen bounds.
 */

import cpp

/* ---- Helpers (no string-typed params) ---- */

private predicate isWriteFunc(Function f) {
  f.getName().regexpMatch("(?i)^memcpy$") or
  f.getName().regexpMatch("(?i)^memmove$") or
  f.getName().regexpMatch("(?i)^memset$") or
  f.getName().regexpMatch("(?i)^strncpy$") or
  f.getName().regexpMatch("(?i)^strncat$") or
  f.getName().regexpMatch("(?i)^strlcpy$") or
  f.getName().regexpMatch("(?i)^strlcat$")
}

private predicate isReadFunc(Function f) {
  f.getName().regexpMatch("(?i)^memcmp$") or
  f.getName().regexpMatch("(?i)^bcmp$") or
  f.getName().regexpMatch("(?i)^strncmp$") or
  f.getName().regexpMatch("(?i)^strncasecmp$")
}

private predicate isTargetFunc(Function f) { isWriteFunc(f) or isReadFunc(f) }

/* n is obviously string-bounded via strlen/strnlen */
private predicate isStringBound(Expr e) {
  exists(FunctionCall c |
    c = e and
    ( c.getTarget().getName().regexpMatch("(?i)^strlen$")
      or c.getTarget().getName().regexpMatch("(?i)^strnlen$") )
  )
}

/* crude text-like sizeof(...) check (no SizeofExpr class used) */
private predicate isSizeofLike(Expr e) {
  e.toString().regexpMatch("(?i)\\bsizeof\\s*\\(")
}

/* destination present / length present */
private predicate hasLenArg(FunctionCall fc) { fc.getNumberOfArguments() >= 3 }
private predicate hasDestArg(FunctionCall fc) { fc.getNumberOfArguments() >= 1 }

/* ---- Main match ---- */
from FunctionCall fc, Function f, Expr n
where
  fc.getTarget() = f and isTargetFunc(f) and hasLenArg(fc) and
  n = fc.getArgument(2) and
  (
    (isReadFunc(f) and not isStringBound(n) and not isSizeofLike(n)) or
    (isWriteFunc(f) and hasDestArg(fc) and not isStringBound(n) and not isSizeofLike(n))
  )
select fc,
  "High-coverage OOB risk: length/count may be unbounded for " + f.getName() + "()."
