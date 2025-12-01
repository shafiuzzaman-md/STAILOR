#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGDefinePtr define;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_assume(ctxt != NULL);
    
    klee_make_symbolic(&define, sizeof(define), "define");
    klee_assume(define != NULL);
    klee_assume(define->data != NULL);
    
    xmlRelaxNGPartitionPtr partitions = (xmlRelaxNGPartitionPtr)define->data;
    int nbgroups = partitions->nbgroups;
    
    xmlNodePtr *list = (xmlNodePtr *)xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    klee_assume(list != NULL);
    
    klee_assert(nbgroups >= 0);
    memset(list, 0, nbgroups * sizeof(xmlNodePtr));
    
    xmlNodePtr *lasts = (xmlNodePtr *)xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    klee_assume(lasts != NULL);
    
    klee_assert(nbgroups >= 0);
    memset(lasts, 0, nbgroups * sizeof(xmlNodePtr));
    
    return 0;
}