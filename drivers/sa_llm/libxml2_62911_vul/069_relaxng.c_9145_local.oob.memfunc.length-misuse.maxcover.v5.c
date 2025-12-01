#include "relaxng.c"
#include <klee/klee.h>

int main() {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefine define;
    xmlRelaxNGPartition partitions;
    xmlRelaxNGInterleaveGroup group;
    xmlRelaxNGValidState state;
    xmlNode node;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    klee_make_symbolic(&partitions, sizeof(partitions), "partitions");
    klee_make_symbolic(&group, sizeof(group), "group");
    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&node, sizeof(node), "node");

    ctxt.state = &state;
    state.seq = &node;
    define.data = &partitions;
    partitions.nbgroups = klee_range(0, 100, "nbgroups");
    partitions.groups = &group;

    xmlNodePtr *lasts = (xmlNodePtr *) xmlMalloc(partitions.nbgroups * sizeof(xmlNodePtr));
    if (lasts != NULL) {
        klee_assert(partitions.nbgroups >= 0);
        memset(lasts, 0, partitions.nbgroups * sizeof(xmlNodePtr));
    }

    xmlRelaxNGValidateInterleave(&ctxt, &define);
    
    if (lasts != NULL) {
        xmlFree(lasts);
    }
    
    return 0;
}