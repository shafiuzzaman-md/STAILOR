#include "relaxng.c"
#include <klee/klee.h>

int main() {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefine define;
    xmlRelaxNGPartition partitions;
    xmlRelaxNGValidState state;
    xmlNode seq;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    klee_make_symbolic(&partitions, sizeof(partitions), "partitions");
    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&seq, sizeof(seq), "seq");

    ctxt.state = &state;
    state.seq = &seq;
    define.data = &partitions;
    partitions.nbgroups = klee_int("nbgroups");

    int result = xmlRelaxNGValidateInterleave(&ctxt, &define);
    
    return result;
}