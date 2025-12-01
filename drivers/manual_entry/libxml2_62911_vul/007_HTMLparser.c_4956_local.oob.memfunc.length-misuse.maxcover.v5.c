#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    htmlParserCtxt ctxt;
    htmlSAXHandler sax;
    void* userData = NULL;
    
    klee_make_symbolic(&ctxt, sizeof(htmlParserCtxt), "ctxt");
    klee_make_symbolic(&sax, sizeof(htmlSAXHandler), "sax");
    klee_make_symbolic(&userData, sizeof(void*), "userData");
    
    htmlInitParserCtxt(&ctxt, &sax, userData);
    
    return 0;
}