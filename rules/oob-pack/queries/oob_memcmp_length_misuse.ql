/**
 * @id local.oob.memfunc.length-misuse
 * @name memcmp/bcmp: length not string-bounded (possible OOB read)
 * @kind problem
 * @problem.severity warning
 * @precision medium
 * @tags security; external/cwe/cwe-125
 * @description Flags memcmp/bcmp calls where the third argument (n) is not clearly
 *              derived from strlen/strnlen or a safe minimum of the two string lengths.
 *              If either input is a C-string and n exceeds its length, the compare can
 *              read past the terminator (OOB read).
 */

import cpp

/** Call is memcmp(...) or bcmp(...) with exactly 3 args. */
predicate isMemCompare(FunctionCall fc) {
  fc.getNumberOfArguments() = 3 and
  (
    fc.getTarget().hasName("memcmp") or
    fc.getTarget().hasName("bcmp")
  )
}

/** n is obviously string-bounded via strlen/strnlen (direct call or simple wrapper). */
predicate isStringBound(Expr n) {
  exists(FunctionCall sl |
    sl = n and (sl.getTarget().hasName("strlen") or sl.getTarget().hasName("strnlen"))
  )
  or
  /*
   * Common "min(strlen(a), strlen(b))" patterns:
   *   - n = aLen < bLen ? aLen : bLen
   *   - n = std::min(strlen(a), strlen(b))
   */
  exists(ConditionalExpr c, Expr x, Expr y |
    n = c and x = c.getThen() and y = c.getElse() and
    (
      isStringBound(x) or isStringBound(y)
    )
  )
  or
  exists(FunctionCall m, Expr x, Expr y |
    m = n and m.getTarget().getName() = "min" and
    (
      exists(FunctionCall sx | sx = m.getArgument(0) and isStringBound(sx)) or
      exists(FunctionCall sy | sy = m.getArgument(1) and isStringBound(sy))
    )
  )
}

/** At least one arg looks string-like (pointer to a *char*-ish base type or string literal). */
predicate looksStringish(Expr e) {
  exists(PointerType pt |
    e.getType() = pt and pt.getBaseType().getName().regexpMatch("(?i).*char.*")
  )
  or e instanceof StringLiteral
}

/** Optional: ignore obviously fixed-size binary compares like memcmp(&x,&y,sizeof(x)) */
predicate isSizeofLike(Expr n) { n.toString().regexpMatch("(?i)\\bsizeof\\s*\\(") }

/** Main match: memcmp/bcmp on string-ish data where n is not string-bounded. */
from FunctionCall fc, Expr a0, Expr a1, Expr n
where isMemCompare(fc)
  and a0 = fc.getArgument(0) and a1 = fc.getArgument(1) and n = fc.getArgument(2)
  and (looksStringish(a0) or looksStringish(a1))
  and not isStringBound(n)
  and not isSizeofLike(n)
select fc,
  "Compare length '" + n.toString() +
  "' is not string-bounded; if either input is a C-string, memcmp/bcmp may read past it (possible OOB read)."
