#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegAtomType type;

    // Make ctxt symbolic to explore different states
    ctxt = (xmlRegParserCtxtPtr)malloc(sizeof(struct _xmlRegParserCtxt));
    klee_make_symbolic(ctxt, sizeof(struct _xmlRegParserCtxt), "ctxt");

    // Ensure ctxt is not NULL to avoid early exit in xmlRegNewAtom
    if (ctxt == NULL) {
        return 0;
    }

    // Make type symbolic
    klee_make_symbolic(&type, sizeof(xmlRegAtomType), "type");

    // Call xmlRegNewAtom to reach line 804
    xmlRegAtomPtr atom = xmlRegNewAtom(ctxt, type);

    // Place reachability marker near the vulnerable memset call
    if (atom != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    if (atom != NULL) {
        xmlFree(atom);
    }
    free(ctxt);

    return 0;
}