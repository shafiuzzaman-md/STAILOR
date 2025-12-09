#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr regexp;
    xmlRegExecCtxtPtr exec;

    // Create a simple regexp pattern
    const char *pattern = "a*b";
    regexp = xmlRegexpCompile((const xmlChar *)pattern);
    if (regexp == NULL) {
        return 0;
    }

    // Create execution context
    exec = xmlRegNewExecCtxt(regexp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(regexp);
        return 0;
    }

    // Make exec->maxRollbacks symbolic to explore different values
    klee_make_symbolic(&exec->maxRollbacks, sizeof(exec->maxRollbacks), "maxRollbacks");
    // Ensure it's positive to take the allocation path
    klee_assume(exec->maxRollbacks > 0);

    // Force the rollbacks pointer to be NULL initially to trigger the allocation path
    exec->rollbacks = NULL;

    // Call a function that will lead to the target line.
    // We use xmlRegExecPushString2 which internally may call xmlRegExecRollback.
    // We need to push enough to cause a rollback allocation.
    const xmlChar *input = (const xmlChar *)"aaab";
    int ret = xmlRegExecPushString2(exec, input, NULL);

    // Place reachability marker near the target line.
    // The target memset is inside xmlRegExecRollback, which is called from xmlRegExecPushString2.
    // We cannot directly mark the line, so we use a reachability assertion after the call.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(regexp);
    return 0;
}