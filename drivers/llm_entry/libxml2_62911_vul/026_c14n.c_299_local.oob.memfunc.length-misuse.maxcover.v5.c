#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
        klee_make_symbolic(&stack->nsCurEnd, sizeof(stack->nsCurEnd), "nsCurEnd");
        
        if (stack->nsTab != NULL) {
            klee_make_symbolic(stack->nsTab, stack->nsMax * sizeof(xmlNsPtr), "nsTab");
        }
        
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}