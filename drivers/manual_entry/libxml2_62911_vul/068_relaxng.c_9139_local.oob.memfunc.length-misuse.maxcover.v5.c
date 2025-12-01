#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGDefinePtr define;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    
    if (ctxt != NULL) {
        klee_make_symbolic(&ctxt->errNr, sizeof(ctxt->errNr), "ctxt_errNr");
        klee_make_symbolic(&ctxt->flags, sizeof(ctxt->flags), "ctxt_flags");
        
        if (ctxt->state != NULL) {
            klee_make_symbolic(&ctxt->state->seq, sizeof(ctxt->state->seq), "state_seq");
        }
    }
    
    if (define != NULL) {
        klee_make_symbolic(&define->data, sizeof(define->data), "define_data");
        klee_make_symbolic(&define->dflags, sizeof(define->dflags), "define_dflags");
    }
    
    xmlRelaxNGValidateInterleave(ctxt, define);
    
    return 0;
}