/**
 * @name CWE-416: Free-then-Call-Argument (intra, no-dataflow)
 * @kind problem
 * @precision low
 * @problem.severity error
 * @id shafi/cpp/pattern/free-then-callarg/intra-fast
 * @tags security external/cwe/cwe-416
 *
 * @shortDescription Flags locals freed and later passed as call arguments in the same function.
 * @description
 * Intra-procedural check: a local variable is freed by free-like APIs (free/xmlFree/…)
 * and later appears (possibly wrapped by casts/parentheses) as an argument to another call.
 * Uses generic AST descendant traversal; no dataflow libs or special AST node types.
 */

import cpp

/** Free-like functions (extend as needed). */
class FreeLikeFunction extends Function {
  FreeLikeFunction() {
    this.hasName("free") or
    this.getName().matches("%Free%") // e.g., xmlFree
  }
}

/** Does expression `e` (or any descendant) reference local variable `v`? */
predicate exprRefsVar(Expr e, LocalVariable v) {
  exists(Expr sub |
    sub = e.getAChild*() and
    sub instanceof VariableAccess and
    sub.(VariableAccess).getTarget() = v
  )
  or
  (e instanceof VariableAccess and e.(VariableAccess).getTarget() = v)
}

/** Is this call freeing local `v`? */
predicate isFreeOf(FunctionCall c, LocalVariable v) {
  c.getTarget() instanceof FreeLikeFunction and
  c.getNumberOfArguments() >= 1 and
  exprRefsVar(c.getArgument(0), v)
}

/** Does this call pass `v` as any argument? */
predicate passesAsArgument(FunctionCall c, LocalVariable v) {
  exists(int i |
    0 <= i and i < c.getNumberOfArguments() and
    exprRefsVar(c.getArgument(i), v)
  )
}

/** Same function, and `useC` appears later (by line). */
predicate inSameFuncAndLater(FunctionCall freeC, FunctionCall useC) {
  freeC.getEnclosingFunction() = useC.getEnclosingFunction() and
  freeC.getLocation().getStartLine() < useC.getLocation().getStartLine()
}

/** Optional: bias toward likely error-reporting calls to cut noise while testing. */
predicate likelyErrorSite(FunctionCall c) {
  c.getTarget().getName().matches("%Err%") or
  c.getTarget().getName().matches("%error%")
}

from Function f, LocalVariable v, FunctionCall freeC, FunctionCall useC
where
  inSameFuncAndLater(freeC, useC) and
  f = freeC.getEnclosingFunction() and
  isFreeOf(freeC, v) and
  passesAsArgument(useC, v) and
  // Prove `v` belongs to `f` by requiring at least one access to `v` in `f`.
  exists(VariableAccess va | va.getTarget() = v and va.getEnclosingFunction() = f) and
  likelyErrorSite(useC)  // remove this after validation to broaden matches
  // You can temporarily narrow scope while validating on libxml2:
  // and freeC.getFile().getBaseName() = "HTMLparser.c"
  // and f.hasName("htmlCurrentChar")
select
  useC,
  "UAF: '" + v.getName() + "' freed at " +
  freeC.getLocation().toString() + " then passed to " +
  useC.getTarget().getName() + " here."
