#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGDefinePtr define;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    
    if (ctxt != NULL && define != NULL) {
        xmlRelaxNGValidateInterleave(ctxt, define);
    }
    
    return 0;
}