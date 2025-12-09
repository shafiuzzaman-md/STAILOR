#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>

int main(void) {
    // Initialize libxml2 library
    xmlInitParser();
    LIBXML_TEST_VERSION

    // The target line is inside xmlSchemaInitTypes.
    // We need to call a function that triggers xmlSchemaInitTypes.
    // xmlSchemaNewParserCtxt will eventually call xmlSchemaInitTypes
    // when it initializes the schema subsystem.
    xmlSchemaParserCtxtPtr ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt) {
        // The target line is reached during initialization.
        // Place reachability marker.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchemaFreeParserCtxt(ctxt);
    }

    xmlCleanupParser();
    return 0;
}