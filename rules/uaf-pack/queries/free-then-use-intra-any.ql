/**
 * @name CWE-416: free(var) then later used as call argument (intra)
 * @description Flags local variables freed and later passed as a function-call argument in the same function.
 * @id shafi/cpp/uaf/free-then-callarg/intra.any
 * @kind problem
 * @tags security external/cwe/cwe-416 correctness
 * @problem.severity warning
 * @precision low
 */

import cpp

/** Limit to your libxml2 cases; relax/remove if you want repo-wide. */
private predicate inProject(Locatable l) {
  l.getLocation().getFile().getRelativePath().regexpMatch("(?i).*libxml2.*")
}

/** Heuristic deallocator set: free, xmlFree*, and names ending in Free/Release/Unref. */
class Deallocator extends Function {
  Deallocator() {
    exists(string n |
      n = this.getName() and
      (
        n = "free" or
        n.regexpMatch("(?i)^xmlFree.*") or
        n.regexpMatch(".*(Free|Release|Unref|UnRef)$")
      )
    )
  }
}

/** Simple same-file, source-before-sink ordering. */
private predicate isBefore(Locatable a, Locatable b) {
  a.getLocation().getFile() = b.getLocation().getFile() and
  a.getLocation().getStartLine() < b.getLocation().getStartLine()
}

/**
 * Report when a local variable is freed and later passed as any call argument
 * in the same enclosing function.
 *
 * This matches the htmlCurrentChar pattern: local `guess` is freed, then
 * later used in a reporting/formatting call (e.g., htmlParseErr/__xmlRaiseError).
 */
from
  Function f,
  LocalVariable v,
  FunctionCall freeCall,
  FunctionCall useCall,
  VariableAccess vaAtFree,
  VariableAccess vaAtUse
where
  // Both events within the same function and project scope
  freeCall.getEnclosingFunction() = f and
  useCall.getEnclosingFunction() = f and
  inProject(freeCall) and inProject(useCall)

  // The free site: deallocator(target=free(...) first argument)
  and freeCall.getTarget() instanceof Deallocator
  and vaAtFree = freeCall.getArgument(0)
  and vaAtFree.getTarget() = v

  // The use site: the same variable appears as any argument to a later call
  and vaAtUse = useCall.getAnArgument()
  and vaAtUse.getTarget() = v

  // Order: free happens before the later use
  and isBefore(freeCall, useCall)
select
  useCall, 
  "Potential use-after-free: local '" + v.getName() + 
  "' is freed by '" + freeCall.getTarget().getName() + "()' and later used as a call argument.",
  freeCall, "Freed here"
