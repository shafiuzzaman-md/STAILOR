/**
 * @name CWE-416: Free-then-Dereference (libxml2, intra-procedural)
 * @kind problem
 * @precision medium
 * @problem.severity error
 * @id shafi/cpp/libxml2/pattern/free-then-deref/intra
 * @tags security external/cwe/cwe-416
 *
 * @shortDescription CWE-416: free-then-dereference in libxml2 (intra)
 * @description
 * Flags intra-procedural dereference/field/array uses of a pointer that was previously freed.
 * Uses libxml2 scoping for sources; includes bidirectional field-collapse so field derefs count.
 */

import cpp
import semmle.code.cpp.dataflow.new.DataFlow
import semmle.code.cpp.exprs.Access as Access
import semmle.code.cpp.controlflow.Dereferenced as Deref

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

/** Deref-like use (include field/array exprs and explicit deref). */
predicate isDerefUse(Expr e) {
  e instanceof Access::PointerFieldAccess or
  e instanceof Access::DotFieldAccess or
  e instanceof Access::ArrayExpr or
  Deref::dereferenced(e)
}

module Cfg implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node s) {
    exists(FunctionCall c, Expr a | isDirectLibxmlScopedFree(c, a) and s.asExpr() = a)
  }
  predicate isSink(DataFlow::Node t) {
    exists(Expr e | isDerefUse(e) and t.asExpr() = e)
  }
  additional predicate isAdditionalTaintStep(DataFlow::Node n1, DataFlow::Node n2) {
    exists(Access::PointerFieldAccess m | n1.asExpr() = m and n2.asExpr() = m.getQualifier()) or
    exists(Access::DotFieldAccess d    | n1.asExpr() = d and n2.asExpr() = d.getQualifier()) or
    exists(Access::PointerFieldAccess m | n1.asExpr() = m.getQualifier() and n2.asExpr() = m) or
    exists(Access::DotFieldAccess d    | n1.asExpr() = d.getQualifier() and n2.asExpr() = d)
  }
}
module DF = DataFlow::Global<Cfg>;

from DataFlow::Node s, DataFlow::Node t, FunctionCall freeC, Expr freed, Expr sink
where
  DF::flow(s, t) and
  s.asExpr() = freed and
  t.asExpr() = sink and
  isDirectLibxmlScopedFree(freeC, freed) and
  freed.getEnclosingFunction() = sink.getEnclosingFunction() and
  isBefore(freed, sink)
select sink,
  "UAF (libxml2, intra): value freed by '" + freeC.getTarget().getName() + "()' is dereferenced later."
