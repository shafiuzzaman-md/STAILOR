#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        klee_assert(stack->nsMax >= 0);
        klee_assert(stack->nsCurEnd >= 0);
        klee_assert(stack->nsPrevStart >= 0);
        klee_assert(stack->nsPrevEnd >= 0);
        
        if (stack->nsTab != NULL) {
            klee_assert(stack->nsMax > 0);
        }
        if (stack->nodeTab != NULL) {
            klee_assert(stack->nsMax > 0);
        }
    }
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}