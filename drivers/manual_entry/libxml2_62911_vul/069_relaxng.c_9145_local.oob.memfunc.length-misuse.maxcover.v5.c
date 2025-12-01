#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefine define;
    xmlRelaxNGPartition partitions;
    xmlRelaxNGInterleaveGroup groups[2];
    xmlRelaxNGDefine rule;
    xmlRelaxNGValidState state;
    xmlNode seq_node;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    klee_make_symbolic(&partitions, sizeof(partitions), "partitions");
    klee_make_symbolic(&groups, sizeof(groups), "groups");
    klee_make_symbolic(&rule, sizeof(rule), "rule");
    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&seq_node, sizeof(seq_node), "seq_node");

    partitions.nbgroups = 2;
    partitions.groups = groups;
    groups[0].rule = &rule;
    groups[1].rule = &rule;
    rule.type = XML_RELAXNG_ELEMENT;
    define.data = &partitions;
    ctxt.state = &state;
    state.seq = &seq_node;
    seq_node.next = NULL;
    seq_node.type = XML_ELEMENT_NODE;

    xmlRelaxNGValidateInterleave(&ctxt, &define);
    
    return 0;
}