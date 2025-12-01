#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    htmlParserCtxtPtr ctxt = (htmlParserCtxtPtr)malloc(sizeof(htmlParserCtxt));
    if (ctxt == NULL) return -1;
    
    klee_make_symbolic(ctxt, sizeof(htmlParserCtxt), "ctxt");
    
    int result = htmlInitParserCtxt(ctxt, NULL, NULL);
    
    klee_assert(result != -1 || ctxt != NULL);
    
    free(ctxt);
    return 0;
}