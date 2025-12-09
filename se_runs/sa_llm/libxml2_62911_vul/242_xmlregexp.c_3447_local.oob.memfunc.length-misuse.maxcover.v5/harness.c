#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;

    // Symbolic regex pattern
    char pattern[256];
    klee_make_symbolic(pattern, sizeof(pattern), "pattern");
    // Ensure null-terminated string for safety
    pattern[255] = '\0';

    // Compile regex from symbolic pattern
    comp = xmlRegexpCompile((const xmlChar *)pattern);
    if (comp == NULL) {
        return 0;
    }

    // Ensure comp->compact or comp->states is not NULL to pass the check at line 3440-3441
    // We cannot directly set internal fields, but we can assume a valid compiled regex has them.
    // The function xmlRegNewExecCtxt is the target entry point.
    exec = xmlRegNewExecCtxt(comp);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    // Place reachability marker: we have reached the memset at line 3447
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    return 0;
}