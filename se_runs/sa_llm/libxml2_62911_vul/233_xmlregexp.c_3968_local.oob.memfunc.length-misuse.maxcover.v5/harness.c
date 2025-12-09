#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;
    xmlChar *value;
    int value_len;

    // Symbolic inputs for regex compilation and execution
    char pattern[100];
    klee_make_symbolic(pattern, sizeof(pattern), "pattern");
    pattern[sizeof(pattern)-1] = '\0';

    char input[100];
    klee_make_symbolic(input, sizeof(input), "input");
    input[sizeof(input)-1] = '\0';

    // Create regex compilation
    comp = xmlRegexpCompile((const xmlChar *)pattern);
    if (comp == NULL) {
        return 0;
    }

    // Create regex execution context
    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    // Ensure exec->comp->nbCounters > 0 to reach the memcpy line
    // We need to groom the regex to have counters
    // Use a pattern that likely creates counters (e.g., with repetitions)
    // We'll also make exec->errCounts and exec->counts allocated
    // The structure fields are internal, but we can try to trigger the path

    // Symbolic value for error string
    klee_make_symbolic(&value_len, sizeof(value_len), "value_len");
    klee_assume(value_len >= 0 && value_len < 100);
    value = (xmlChar *)xmlMalloc(value_len + 1);
    klee_make_symbolic(value, value_len + 1, "value");
    value[value_len] = 0;

    // Force exec->state to be non-NULL and not a sink state
    // We need to execute the regex to set up state
    // First, try to run the regex
    int ret = xmlRegExecPushString(exec, (const xmlChar *)input, NULL);
    // This may set exec->state appropriately

    // Now, we need to trigger the error path in xmlFARegExec
    // The error path is reached when progress is true and state is not sink
    // We'll try to cause an error by pushing an invalid string or using a mismatch
    // We'll also set exec->errString to NULL initially to hit the xmlFree branch
    if (exec->errString != NULL) {
        xmlFree(exec->errString);
        exec->errString = NULL;
    }

    // To reach line 3968, we need:
    // 1. progress true (set by xmlFARegExec internally)
    // 2. exec->state != NULL
    // 3. exec->state->type != XML_REGEXP_SINK_STATE
    // 4. exec->comp->nbCounters > 0
    // We'll try to force these conditions by calling xmlRegExecPushString again
    // with a different input to cause a transition error

    // Make a symbolic char to potentially cause a mismatch
    char extra;
    klee_make_symbolic(&extra, sizeof(extra), "extra");
    xmlRegExecPushString(exec, (const xmlChar *)&extra, NULL);

    // The internal function xmlFARegExec may set the error state
    // We'll now attempt to trigger the error handling path by calling
    // xmlRegExecNextChar or similar, but we don't have direct API.
    // Instead, we'll rely on KLEE to explore paths in xmlRegExecPushString
    // that lead to the error.

    // Place reachability assertion near the target line
    // Since we cannot directly call the internal function, we'll rely on
    // the harness to reach the code via the public API.
    // We'll add a marker that the path is reachable.
    // The actual memcpy is inside xmlFARegExec, which is called by xmlRegExecPushString.
    // We'll add a klee_assert after the push to mark we've been through the function.
    // But we need to be on the specific path.

    // Instead, we'll use a trick: if exec->errString is set, it means we hit the error path
    if (exec->errString != NULL && exec->comp->nbCounters > 0) {
        // We are likely on the path to the memcpy
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    if (exec->errString != NULL) {
        xmlFree(exec->errString);
    }
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    if (value != NULL) {
        xmlFree(value);
    }

    return 0;
}