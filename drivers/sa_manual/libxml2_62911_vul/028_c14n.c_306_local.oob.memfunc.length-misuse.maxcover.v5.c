#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        klee_assert(stack->nsMax >= 0);
        klee_assert(stack->nsCurEnd >= 0);
        klee_assert(stack->nsCurEnd <= stack->nsMax);
        
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}