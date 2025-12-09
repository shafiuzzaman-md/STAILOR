#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;

    ctxt = xmlSchemaNewParserCtxt(NULL);
    if (ctxt == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}