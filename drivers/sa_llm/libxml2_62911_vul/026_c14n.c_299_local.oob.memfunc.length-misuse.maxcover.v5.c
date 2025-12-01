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
    klee_make_symbolic(&stack->nsPrevStart, sizeof(stack->nsPrevStart), "nsPrevStart");
    klee_make_symbolic(&stack->nsPrevEnd, sizeof(stack->nsPrevEnd), "nsPrevEnd");

    // Allocate nsTab with symbolic size
    unsigned nsTab_size;
    klee_make_symbolic(&nsTab_size, sizeof(nsTab_size), "nsTab_size");
    stack->nsTab = (xmlNsPtr*)xmlMalloc(nsTab_size * sizeof(xmlNsPtr));
    
    // Add assertion for potential out-of-bounds access
    if (stack->nsTab != NULL) {
        klee_assume(stack->nsMax * sizeof(xmlNsPtr) <= nsTab_size);
    }

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}