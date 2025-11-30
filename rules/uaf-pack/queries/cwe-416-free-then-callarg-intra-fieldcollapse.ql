/**
 * @name CWE-416: Free-then-Call-Argument (libxml2, intra; field-collapse + light agg steps)
 * @kind problem
 * @precision low
 * @problem.severity error
 * @id shafi/cpp/libxml2/pattern/free-then-callarg/intra
 * @tags security external/cwe/cwe-416
 *
 * @shortDescription CWE-416: freed value later passed as call argument (libxml2, intra)
 * @description
 * Flags flows where a freed libxml2 pointer is later passed as a call argument in the same function.
 * Includes bidirectional field-collapse and light pointer/aggregate propagation to catch common moves.
 */

import cpp
import semmle.code.cpp.dataflow.new.DataFlow
import semmle.code.cpp.exprs.Access as Access

private predicate isBefore(Expr a, Expr b) {
  a.getEnclosingFunction() = b.getEnclosingFunction() and
  a.getLocation().getFile() = b.getLocation().getFile() and
  a.getLocation().getStartLine() < b.getLocation().getStartLine()
}

class LibxmlOrGenericDeallocator extends Function {
  LibxmlOrGenericDeallocator() {
    exists(string n | n = this.getName() and
      ( n = "free" or n = "g_free" or n = "cfree" or n = "av_free" or
        n = "xfree" or n = "safe_free" or
        n.regexpMatch(".*(Delete|Destroy|Dispose|Free|Release|Unref|UnRef)$") or
        n.regexpMatch("(?i)^xmlFree.*") or n.regexpMatch("(?i)^xmlHashFree.*") or
        n = "xmlDictFree" or n = "xmlBufferFree" ))
  }
}
predicate inLibxmlFile(Expr e) {
  e.getLocation().getFile().getRelativePath().regexpMatch("(?i).*/libxml2/.*")
}
predicate looksXmlVar(Expr e) {
  exists(Variable v | e instanceof VariableAccess and v = e.(VariableAccess).getTarget()
        and v.getName().regexpMatch("(?i)^xml[A-Za-z0-9_]+"))
}
predicate isLibxmlPtrType(Type t) {
  t instanceof PointerType and t.toString().regexpMatch("(?i)\\bxml[A-Za-z0-9_]+\\s*\\*")
}
predicate isXmlPointerish(Expr e) { isLibxmlPtrType(e.getType()) or looksXmlVar(e) }

predicate isDirectLibxmlScopedFree(FunctionCall c, Expr freed) {
  c.getTarget() instanceof LibxmlOrGenericDeallocator and
  freed = c.getArgument(0) and
  freed.getType() instanceof PointerType and
  ( isXmlPointerish(freed) or inLibxmlFile(freed) )
}

/** Sink: used as argument in a call. */
predicate isCallArgUse(Expr e) {
  exists(FunctionCall fc | fc.getAnArgument() = e)
}

/** Pointer-to-pointer copies (cheap propagation). */
predicate isPointerCopy(AssignExpr a) {
  a.getLValue().getType() instanceof PointerType and
  a.getRValue().getType() instanceof PointerType
}

/** Store: x -> agg.f   or   agg[i] = x */
predicate storeIntoAggregate(Expr src, Expr aggLHS) {
  exists(AssignExpr a |
    a.getRValue() = src and a.getLValue() = aggLHS and
    ( aggLHS instanceof Access::DotFieldAccess or
      aggLHS instanceof Access::PointerFieldAccess or
      aggLHS instanceof Access::ArrayExpr )
  )
}

/** Load: agg.f -> y   or   agg[i] -> y */
predicate loadFromAggregate(Expr aggRHS, Expr dst) {
  exists(AssignExpr a |
    a.getLValue() = dst and a.getRValue() = aggRHS and
    ( aggRHS instanceof Access::DotFieldAccess or
      aggRHS instanceof Access::PointerFieldAccess or
      aggRHS instanceof Access::ArrayExpr )
  )
}

module Cfg implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node s) {
    exists(FunctionCall c, Expr a | isDirectLibxmlScopedFree(c, a) and s.asExpr() = a)
  }
  predicate isSink(DataFlow::Node t) {
    exists(Expr e | isCallArgUse(e) and t.asExpr() = e)
  }
  additional predicate isAdditionalTaintStep(DataFlow::Node n1, DataFlow::Node n2) {
    // pointer copies
    exists(AssignExpr a | isPointerCopy(a) and n1.asExpr() = a.getRValue() and n2.asExpr() = a.getLValue())
    or
    // store/load across aggregates
    exists(Expr src, Expr aggLHS | storeIntoAggregate(src, aggLHS) and n1.asExpr() = src and n2.asExpr() = aggLHS)
    or
    exists(Expr aggRHS, Expr dst | loadFromAggregate(aggRHS, dst) and n1.asExpr() = aggRHS and n2.asExpr() = dst)
    or
    // bidirectional field collapse
    exists(Access::PointerFieldAccess m | n1.asExpr() = m and n2.asExpr() = m.getQualifier())
    or
    exists(Access::DotFieldAccess d    | n1.asExpr() = d and n2.asExpr() = d.getQualifier())
    or
    exists(Access::PointerFieldAccess m | n1.asExpr() = m.getQualifier() and n2.asExpr() = m)
    or
    exists(Access::DotFieldAccess d    | n1.asExpr() = d.getQualifier() and n2.asExpr() = d)
  }
}
module DF = DataFlow::Global<Cfg>;

/** Result: freed value flows to a later call-argument use in the same function. */
from DataFlow::Node s, DataFlow::Node t, FunctionCall freeC, Expr freed, Expr sink, FunctionCall useC
where
  DF::flow(s, t) and
  s.asExpr() = freed and
  t.asExpr() = sink and
  isDirectLibxmlScopedFree(freeC, freed) and
  isCallArgUse(sink) and
  useC.getAnArgument() = sink and
  freed.getEnclosingFunction() = useC.getEnclosingFunction() and
  isBefore(freed, useC)
select sink,
  "Potential UAF (libxml2, intra): value freed by '" + freeC.getTarget().getName() +
  "()' is later passed as an argument to '" + useC.getTarget().getName() + "()'."
