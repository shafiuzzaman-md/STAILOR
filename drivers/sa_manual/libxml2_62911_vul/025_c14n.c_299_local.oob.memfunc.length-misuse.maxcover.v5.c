#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize symbolic fields that could lead to the vulnerability
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    klee_make_symbolic(&stack->nsCurEnd, sizeof(stack->nsCurEnd), "nsCurEnd");
    
    // Allocate nsTab with symbolic size to trigger potential OOB
    unsigned nsTab_size;
    klee_make_symbolic(&nsTab_size, sizeof(nsTab_size), "nsTab_size");
    stack->nsTab = (xmlNsPtr*)xmlMalloc(nsTab_size * sizeof(xmlNsPtr));
    
    // Add assertion to check for potential buffer overflow
    klee_assume(stack->nsTab != NULL);
    klee_assume(stack->nsMax > 0);
    
    // The vulnerable line: memset(cur->nsTab, 0, cur->nsMax * sizeof(xmlNsPtr))
    // Check if nsMax could cause OOB access
    klee_assert(stack->nsMax * sizeof(xmlNsPtr) <= nsTab_size);
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}