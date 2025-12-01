#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    klee_make_symbolic(&stack->nsCurEnd, sizeof(stack->nsCurEnd), "nsCurEnd");
    
    if (stack->nodeTab != NULL) {
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}