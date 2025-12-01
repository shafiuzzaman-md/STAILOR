#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefine define;
    xmlRelaxNGPartition partitions;
    xmlRelaxNGInterleaveGroup group;
    xmlRelaxNGValidState state;
    xmlNode seq_node;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    klee_make_symbolic(&partitions, sizeof(partitions), "partitions");
    klee_make_symbolic(&group, sizeof(group), "group");
    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&seq_node, sizeof(seq_node), "seq_node");
    
    ctxt.state = &state;
    state.seq = &seq_node;
    define.data = &partitions;
    partitions.nbgroups = 2;
    partitions.groups = &group;
    
    xmlRelaxNGValidateInterleave(&ctxt, &define);
    
    return 0;
}