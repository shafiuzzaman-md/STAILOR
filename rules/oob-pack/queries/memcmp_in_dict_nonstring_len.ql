/**
 * @id local.oob.libxml2.memcmp-in-dict
 * @name libxml2 dict: memcmp with non-string length
 * @kind problem
 * @problem.severity warning
 * @precision medium
 * @tags security; external/cwe/cwe-125
 * @description Flags memcmp calls in files named like 'dict.c' or in paths containing
 *              a 'dict' directory where the length argument is not derived from
 *              strlen or strnlen and looks like a size/len source (possible OOB read).
 */

import cpp

/** file path matches dict.c, dict_*.c, or any file under a directory named 'dict' */
predicate inDictFile(File f) {
  f.getRelativePath().regexpMatch("(?i)(^|/)(dict[^/]*\\.c|.*/dict[^/]*/[^/]+\\.c)$")
}

/** n is obviously string-bounded via strlen/strnlen */
predicate isStringBound(Expr n) {
  exists(FunctionCall sl |
    sl = n and (sl.getTarget().hasName("strlen") or sl.getTarget().hasName("strnlen"))
  )
}

/** n textually looks like a size/len/length variable or field */
predicate looksLikeSizeOrLen(Expr n) {
  n.toString().regexpMatch("(?i)(^|[^A-Za-z])(len|size|length)([^A-Za-z]|$)")
}

/** argument looks like a pointer to a char-like base type (char/uchar/xmlChar/etc.) */
predicate looksStringish(Expr e) {
  exists(PointerType pt |
    e.getType() = pt and pt.getBaseType().getName().regexpMatch("(?i).*char.*")
  )
}

from FunctionCall fc, Expr a0, Expr a1, Expr n, File f
where
  fc.getTarget().hasName("memcmp") and
  fc.getNumberOfArguments() = 3 and
  a0 = fc.getArgument(0) and
  a1 = fc.getArgument(1) and
  n  = fc.getArgument(2) and
  f  = fc.getLocation().getFile() and
  inDictFile(f) and
  (looksStringish(a0) or looksStringish(a1)) and
  not isStringBound(n) and
  looksLikeSizeOrLen(n)
select fc,
  "memcmp in " + f.getRelativePath() +
  " with non-string-bounded length '" + n.toString() +
  "'. Prefer strncmp or ensure n <= shorter string length (possible OOB read)."
