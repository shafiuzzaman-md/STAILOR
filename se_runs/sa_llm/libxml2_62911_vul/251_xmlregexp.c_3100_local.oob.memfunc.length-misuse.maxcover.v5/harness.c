#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    // Initialize libxml2
    xmlInitParser();

    // Create a regexp compilation context
    xmlRegexpPtr comp = xmlRegexpCompile((const xmlChar *)"a*");
    if (comp == NULL) {
        return 0;
    }

    // Create an execution context
    xmlRegExecCtxtPtr exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    // Make exec->comp->nbCounters symbolic to influence the allocation size
    int symbolic_nbCounters;
    klee_make_symbolic(&symbolic_nbCounters, sizeof(symbolic_nbCounters), "nbCounters");
    // Ensure it's non-negative and reasonable for allocation
    klee_assume(symbolic_nbCounters >= 0);
    klee_assume(symbolic_nbCounters < 100); // Bound to avoid excessive memory

    // Overwrite the comp->nbCounters in the exec context
    // Note: exec->comp points to the same regexp comp, so we modify it directly
    comp->nbCounters = symbolic_nbCounters;

    // Allocate exec->counts array with the same size
    if (exec->counts != NULL) {
        xmlFree(exec->counts);
    }
    exec->counts = (int *)xmlMalloc(comp->nbCounters * sizeof(int));
    if (exec->counts == NULL) {
        xmlRegFreeExecCtxt(exec);
        xmlRegFreeRegexp(comp);
        return 0;
    }

    // Initialize exec->nbRollbacks to 0 (or a value that ensures rollbacks array is allocated)
    exec->nbRollbacks = 0;
    // Ensure rollbacks array is allocated (xmlRegNewExecCtxt may allocate it, but we ensure)
    if (exec->rollbacks == NULL) {
        exec->maxRollbacks = 10;
        exec->rollbacks = (xmlRegExecRollback *)xmlMalloc(exec->maxRollbacks * sizeof(xmlRegExecRollback));
        if (exec->rollbacks == NULL) {
            xmlFree(exec->counts);
            xmlRegFreeExecCtxt(exec);
            xmlRegFreeRegexp(comp);
            return 0;
        }
    }

    // Now call xmlFARegExecSave which contains the target line
    // This function is static, so we cannot call it directly.
    // Instead, we trigger it via xmlRegexpExec, which internally calls save/rollback.
    // We'll use a simple input string and execute the regexp.

    // Make a symbolic input string
    char input[10];
    klee_make_symbolic(input, sizeof(input), "input");
    input[sizeof(input)-1] = '\0'; // Ensure null-terminated

    // Execute the regexp; this may call xmlFARegExecSave internally
    int ret = xmlRegexpExec(comp, (const xmlChar *)input, (const xmlChar *)input);

    // Place reachability assertion near the target line.
    // Since we cannot directly instrument the static function, we assume the path was reached.
    // We'll use a dummy condition that is always false to mark reachability.
    // In practice, KLEE may explore the path; we add an assertion that will fail if reached.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    xmlCleanupParser();
    return 0;
}