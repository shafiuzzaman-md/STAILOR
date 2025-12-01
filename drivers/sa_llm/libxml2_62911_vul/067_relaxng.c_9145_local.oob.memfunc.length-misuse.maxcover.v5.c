#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefine define;
    xmlRelaxNGPartition partitions;
    xmlRelaxNGInterleaveGroup groups[2];
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
    partitions.nbgroups = 2;
    partitions.groups = groups;
    
    int nbgroups = partitions.nbgroups;
    xmlNodePtr *lasts = (xmlNodePtr *) xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    
    if (lasts != NULL) {
        klee_assert(nbgroups >= 0 && "nbgroups should be non-negative");
        memset(lasts, 0, nbgroups * sizeof(xmlNodePtr));
    }
    
    xmlRelaxNGValidateInterleave(&ctxt, &define);
    
    if (lasts != NULL) {
        xmlFree(lasts);
    }
    
    return 0;
}