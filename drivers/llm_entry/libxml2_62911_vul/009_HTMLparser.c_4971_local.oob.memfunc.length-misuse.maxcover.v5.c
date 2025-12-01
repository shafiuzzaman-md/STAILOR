#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    htmlParserCtxtPtr ctxt = (htmlParserCtxtPtr)malloc(sizeof(htmlParserCtxt));
    if (ctxt == NULL) return -1;
    
    klee_make_symbolic(ctxt, sizeof(htmlParserCtxt), "ctxt");
    
    htmlSAXHandler sax;
    klee_make_symbolic(&sax, sizeof(htmlSAXHandler), "sax");
    
    void* userData;
    klee_make_symbolic(&userData, sizeof(void*), "userData");
    
    int result = htmlInitParserCtxt(ctxt, &sax, userData);
    
    free(ctxt);
    return result;
}