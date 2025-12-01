#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    htmlParserCtxtPtr ctxt = (htmlParserCtxtPtr)xmlMalloc(sizeof(htmlParserCtxt));
    if (ctxt == NULL) return -1;
    
    klee_make_symbolic(ctxt, sizeof(htmlParserCtxt), "ctxt");
    
    int result = htmlInitParserCtxt(ctxt, NULL, NULL);
    
    xmlFree(ctxt);
    return result;
}