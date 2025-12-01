#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize stack fields symbolically
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    klee_make_symbolic(&stack->nsCurEnd, sizeof(stack->nsCurEnd), "nsCurEnd");
    
    // Ensure nsTab is allocated but with potentially invalid size
    stack->nsTab = (xmlNsPtr*)xmlMalloc(stack->nsMax * sizeof(xmlNsPtr));
    if (stack->nsTab == NULL) {
        xmlC14NVisibleNsStackDestroy(stack);
        return 0;
    }

    // Add assertion to check for potential out-of-bounds access
    // This corresponds to line 299: memset(cur->nsTab, 0, cur->nsMax * sizeof(xmlNsPtr))
    klee_assume(stack->nsMax >= 0);
    klee_assert(stack->nsMax <= 1024); // Reasonable upper bound

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}