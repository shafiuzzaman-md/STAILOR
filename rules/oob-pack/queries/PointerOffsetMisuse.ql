/**
 * @id local/cpp/pointer-offset-misuse
 * @name Potential OOB: Dynamic Pointer Offset in Memory Write
 * @description Flags memory write functions (memcpy, memset, etc.) where the 
 * destination pointer is calculated using dynamic arithmetic (ptr + offset).
 * This acts as a high-recall candidate generator for symbolic verification.
 * @kind problem
 * @problem.severity warning
 * @precision low
 * @tags security 
 * external/cwe/cwe-119
 * external/cwe/cwe-823
 */

import cpp

/* --- Target Functions (Writes Only) --- */
private predicate isWriteFunc(Function f) {
  f.getName().regexpMatch("(?i)^(memcpy|memmove|memset|strncpy|strncat|strlcpy|strlcat|strcpy|strcat)$") or
  f.getName().regexpMatch("(?i)^(recv|recvfrom|read|pread|fgets|copy_from_user)$")
}

/* --- Heuristic: Is this a risky pointer calculation? --- */
private predicate isRiskyPointerArithmetic(Expr e) {
  // Case 1: Explicit Pointer Arithmetic (ptr + offset)
  e instanceof PointerAddExpr 
  or
  // Case 2: Array Indexing used as address (&buf[i])
  (
    exists(ArrayExpr ae | 
      ae = e.(AddressOfExpr).getOperand() 
    )
  )
}

/* --- Exclusion: Skip Constants --- */
private predicate isSafeConstant(Expr e) {
  // If the offset is a literal constant (buf + 4), it's usually safe or static analysis handles it well.
  // We want to flag DYNAMIC offsets (buf + var).
  exists(PointerAddExpr add | add = e | add.getRightOperand().isConstant())
  or
  exists(ArrayExpr arr | arr = e.(AddressOfExpr).getOperand() | arr.getArrayOffset().isConstant())
}

from FunctionCall fc, Function f, Expr dest
where
  fc.getTarget() = f and
  isWriteFunc(f) and
  // Dest is usually Arg 0 for these functions (except pread/fgets special cases)
  (
    (f.getName() = "fgets" and dest = fc.getArgument(0)) or 
    (f.getName() != "fgets" and dest = fc.getArgument(0))
  ) and
  isRiskyPointerArithmetic(dest) and
  not isSafeConstant(dest)
select
  fc,
  "Potential OOB Risk: Destination pointer derived via dynamic arithmetic for " + f.getName() + "().",
  dest,
  "Destination Argument"