#include <klee/klee.h>
#include "pattern.c"

int main() {
    xmlPatParserContextPtr ctxt = (xmlPatParserContextPtr)malloc(sizeof(xmlPatParserContext));
    if (ctxt == NULL) return 0;
    
    klee_make_symbolic(ctxt, sizeof(xmlPatParserContext), "ctxt");
    
    xmlFreePatParserContext(ctxt);
    return 0;
}