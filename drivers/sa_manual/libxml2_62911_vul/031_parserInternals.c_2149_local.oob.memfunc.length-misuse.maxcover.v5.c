#include <klee/klee.h>
#include "parserInternals.h"
#include "tree.h"
#include "xmlmemory.h"

int main() {
    xmlParserCtxtPtr ctxt = xmlNewSAXParserCtxt(NULL, NULL);
    
    if (ctxt != NULL) {
        klee_assert(ctxt->node_seq.length <= ctxt->node_seq.maximum);
        xmlFreeParserCtxt(ctxt);
    }
    
    return 0;
}