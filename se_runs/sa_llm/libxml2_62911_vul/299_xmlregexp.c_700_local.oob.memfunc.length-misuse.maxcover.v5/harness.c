#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    // Symbolic input for the string parameter
    char input[256];
    klee_make_symbolic(input, sizeof(input), "input");
    // Ensure null-termination for safety
    input[255] = '\0';

    // Call the target function with symbolic input
    xmlRegParserCtxtPtr ctxt = xmlRegNewParserCtxt((const xmlChar *)input);

    // If the function returns non-NULL, we have reached the memset line (line 700)
    if (ctxt != NULL) {
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        if (ctxt->string != NULL) {
            xmlFree(ctxt->string);
        }
        xmlFree(ctxt);
    }

    return 0;
}