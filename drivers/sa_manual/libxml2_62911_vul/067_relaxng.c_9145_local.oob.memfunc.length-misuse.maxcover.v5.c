#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGValidCtxtPtr ctxt;
    xmlRelaxNGDefinePtr define;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&define, sizeof(define), "define");
    
    if (ctxt != NULL && define != NULL && define->data != NULL) {
        xmlRelaxNGPartitionPtr partitions = (xmlRelaxNGPartitionPtr) define->data;
        int nbgroups = partitions->nbgroups;
        
        if (nbgroups > 0) {
            xmlNodePtr *lasts = (xmlNodePtr *) xmlMalloc(nbgroups * sizeof(xmlNodePtr));
            if (lasts != NULL) {
                klee_assert(nbgroups >= 0);
                memset(lasts, 0, nbgroups * sizeof(xmlNodePtr));
            }
        }
    }
    
    xmlRelaxNGValidateInterleave(ctxt, define);
    return 0;
}