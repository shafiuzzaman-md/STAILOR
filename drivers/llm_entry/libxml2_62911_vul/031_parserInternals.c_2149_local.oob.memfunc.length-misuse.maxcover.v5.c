#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    
    if (ctxt != NULL) {
        xmlFreeParserCtxt(ctxt);
    }
    
    return 0;
}