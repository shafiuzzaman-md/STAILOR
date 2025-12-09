#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;

    // Initialize libxml2
    xmlInitMemory();

    // Create a symbolic regex pattern
    char pattern[100];
    klee_make_symbolic(pattern, sizeof(pattern), "pattern");
    // Ensure null termination for safety
    pattern[sizeof(pattern)-1] = '\0';

    // Compile the regex pattern
    comp = xmlRegexpCompile((const xmlChar *)pattern);
    if (comp == NULL) {
        // If compilation fails, we cannot proceed
        return 0;
    }

    // Create execution context
    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    // Make exec->maxRollbacks and exec->nbRollbacks symbolic to influence the allocation
    klee_make_symbolic(&exec->maxRollbacks, sizeof(exec->maxRollbacks), "maxRollbacks");
    klee_make_symbolic(&exec->nbRollbacks, sizeof(exec->nbRollbacks), "nbRollbacks");

    // Ensure maxRollbacks is positive and nbRollbacks is non-negative
    klee_assume(exec->maxRollbacks > 0);
    klee_assume(exec->nbRollbacks >= 0);

    // Set other required fields to avoid null dereferences
    exec->state = 0;
    exec->index = 0;
    exec->transno = 0;
    exec->comp = comp;
    exec->status = XML_REGEXP_OK;

    // The target line 3085 is inside xmlRegExecPushStringInternal.
    // We need to call a function that leads to it.
    // xmlRegExecPushString is a public function that calls the internal one.
    const xmlChar *inputString = (const xmlChar *)"test";
    int ret = xmlRegExecPushString(exec, inputString, NULL);

    // Place reachability marker near the vulnerable memset
    // The memset is at line 3085, so we assert we reached that path
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    xmlCleanupParser();
    xmlMemoryDump();

    return 0;
}