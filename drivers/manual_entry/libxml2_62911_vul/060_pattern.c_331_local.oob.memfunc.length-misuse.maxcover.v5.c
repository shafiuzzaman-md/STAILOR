#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlPatParserContextPtr ctxt = (xmlPatParserContextPtr)xmlMalloc(sizeof(xmlPatParserContext));
    if (ctxt == NULL) {
        return -1;
    }
    
    klee_make_symbolic(ctxt, sizeof(xmlPatParserContext), "ctxt");
    
    xmlFreePatParserContext(ctxt);
    return 0;
}