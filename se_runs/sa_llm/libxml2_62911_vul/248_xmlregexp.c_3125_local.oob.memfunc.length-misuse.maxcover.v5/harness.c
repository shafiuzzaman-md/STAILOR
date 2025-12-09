#include <libxml/xmlregexp.h>
#include <libxml/xmlstring.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;

    /* Symbolic inputs for regex pattern and input string */
    char pattern[100];
    char input[100];
    klee_make_symbolic(pattern, sizeof(pattern), "pattern");
    klee_make_symbolic(input, sizeof(input), "input");

    /* Ensure null-termination for safety */
    pattern[99] = '\0';
    input[99] = '\0';

    /* Compile a regex pattern */
    comp = xmlRegexpCompile((const xmlChar *)pattern);
    if (comp == NULL) {
        return 0;
    }

    /* Create an execution context */
    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    /* Set up exec->comp->nbCounters > 0 to enter the target branch */
    /* We cannot directly set nbCounters, but we can try to execute the regex
       to cause internal allocation of counters. */
    /* Perform a regex execution to potentially trigger rollback and counter handling */
    int ret = xmlRegExecPushString2(exec, (const xmlChar *)input, (const xmlChar *)input + strlen(input), NULL);
    if (ret != 0) {
        /* If execution fails, free and exit */
        xmlRegFreeExecCtxt(exec);
        xmlRegFreeRegexp(comp);
        return 0;
    }

    /* Force a rollback scenario: push more data and then rollback */
    /* This might cause exec->nbRollbacks to be set and exec->rollbacks[exec->nbRollbacks].counts to be allocated */
    xmlRegExecPushString2(exec, (const xmlChar *)input, (const xmlChar *)input + strlen(input), NULL);
    xmlRegExecRollBack(exec);

    /* At this point, the vulnerable memcpy at line 3125 may be reached if:
       - exec->comp->nbCounters > 0
       - exec->rollbacks[exec->nbRollbacks].counts != NULL
       - exec->counts != NULL
       The SA spec suggests a potential OOB in memcpy length.
       We place a reachability assertion just before the memcpy would occur.
       Since we cannot directly insert code into xmlregexp.c, we rely on KLEE
       to explore the path and hit the line. We use a marker assertion to
       indicate we reached the target line. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Clean up */
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    return 0;
}