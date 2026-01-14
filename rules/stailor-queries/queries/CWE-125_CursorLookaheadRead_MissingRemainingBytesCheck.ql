/**
 * @id local/cpp/cwe-125-cursor-lookahead-missing-bytes-check
 * @name CWE-125: Cursor lookahead read without remaining-bytes check
 *
 * @description
 * Flags direct fixed-offset reads from a cursor-like pointer (e.g., cur[3]) in stream/parsing code
 * when there is no nearby early-exit guard that checks the remaining bytes.
 *
 * @kind problem
 * @problem.severity warning
 * @tags security
 * external/cwe/cwe-125
 */
import cpp

/** =========================
 * 1) Heuristics: identify cursor-like and end-like expressions
 * =========================
 *
 * FIXED: Use a single string binding 'n' to avoid duplicate results
 * if an expression matches multiple access types (or multiple AST paths).
 */
private predicate isCurLike(Expr e) {
  exists(string n |
    (
      exists(VariableAccess va | va = e and n = va.getTarget().getName()) or
      exists(FieldAccess fa | fa = e and n = fa.getTarget().getName())
    ) and
    n.regexpMatch("(?i).*(cur|cursor).*")
  )
}

private predicate isEndLike(Expr e) {
  exists(string n |
    (
      exists(VariableAccess va | va = e and n = va.getTarget().getName()) or
      exists(FieldAccess fa | fa = e and n = fa.getTarget().getName())
    ) and
    n.regexpMatch("(?i).*(end|limit|last).*")
  )
}

/** =========================
 * 2) Pattern: fixed-offset (lookahead) read of a cursor
 * =========================
 */
private predicate isCursorLookaheadRead(ArrayExpr ae, Expr base, int idxVal) {
  base = ae.getArrayBase() and
  isCurLike(base) and
  // Ensure the offset is an integer literal
  exists(Literal idxLit |
    idxLit = ae.getArrayOffset() and
    idxLit.getValue().regexpMatch("\\d+") and 
    idxVal = idxLit.getValue().toInt()
  ) and
  idxVal >= 0 and
  // Keep the tightened lookahead limit from previous iterations
  idxVal <= 8 
}

/** =========================
 * 3) Guard recognition: remaining-bytes early exit
 * =========================
 */
bindingset[read, base, requiredBytes]
private predicate hasNearbyRemainingBytesGuard(ArrayExpr read, Expr base, int requiredBytes) {
  exists(IfStmt ifs, RelationalOperation cmp, SubExpr sub, Literal nLit |
    // Guard and read must be in the same function.
    ifs.getEnclosingFunction() = read.getEnclosingFunction() and
    ifs.getCondition() = cmp and

    // Support both '<' and '<='
    (cmp.getOperator() = "<" or cmp.getOperator() = "<=") and
    
    sub = cmp.getLeftOperand() and
    nLit = cmp.getRightOperand() and

    // left side: end-like minus base
    isEndLike(sub.getLeftOperand()) and
    
    // Check structural equality (fast and safe)
    (
      sub.getRightOperand() = base 
      or
      sub.getRightOperand().toString() = base.toString()
    ) and

    // Guard must ensure enough bytes.
    nLit.getValue().regexpMatch("\\d+") and 
    nLit.getValue().toInt() >= requiredBytes and

    // Accept 'goto' or 'return' as early exit
    exists(Stmt exitStmt | 
        exitStmt.getParent+() = ifs.getThen() and
        (exitStmt instanceof ReturnStmt or exitStmt instanceof GotoStmt)
    ) and

    // Proximity requirement
    ifs.getLocation().getStartLine() < read.getLocation().getStartLine() and
    read.getLocation().getStartLine() - ifs.getLocation().getStartLine() <= 30
  )
}

/** =========================
 * 4) Main query
 * =========================
 */
from ArrayExpr ae, Expr base, int idxVal, int requiredBytes
where
  // 1. Match the pattern
  isCursorLookaheadRead(ae, base, idxVal) and
  
  // 2. Calculate requiredBytes
  requiredBytes = idxVal + 1 and

  // 3. Exclude "&base[idx]"
  not exists(AddressOfExpr u | u.getOperand() = ae) and

  // 4. Exclude if we see a nearby early-exit guard.
  not hasNearbyRemainingBytesGuard(ae, base, requiredBytes) and

  // 5. DE-DUPLICATION: Ensure we only report one result per source location.
  not exists(ArrayExpr ae2 |
    ae2 != ae and
    ae2.getLocation() = ae.getLocation()
  )

select ae,
  "Potential OOB lookahead read: " + base.toString() + "[" + idxVal.toString() +
  "] without a nearby remaining-bytes guard."