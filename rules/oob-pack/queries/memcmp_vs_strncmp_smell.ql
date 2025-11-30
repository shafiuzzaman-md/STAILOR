/**
 * @id local.oob.memcmp-nonstring-length
 * @name memcmp length not from strlen/strnlen
 * @kind problem
 * @problem.severity warning
 * @precision medium
 * @tags security; external/cwe/cwe-125; reliability
 * @description Flags memcmp calls where the length argument is not derived from strlen/strnlen,
 *              which can correlate with OOB-reads in string-like comparisons.
 */

import cpp

from FunctionCall fc, Expr n
where
  fc.getTarget().hasName("memcmp") and
  fc.getNumberOfArguments() = 3 and
  n = fc.getArgument(2) and
  not exists(FunctionCall sl |
    sl = n and (sl.getTarget().hasName("strlen") or sl.getTarget().hasName("strnlen"))
  )
select fc,
  "memcmp used with a non-string length source; verify 'n' cannot exceed either string length (possible OOB-read)."
