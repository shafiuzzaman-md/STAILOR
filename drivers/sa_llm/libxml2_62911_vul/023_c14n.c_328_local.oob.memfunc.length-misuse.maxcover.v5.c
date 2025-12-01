#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize symbolic namespace and node
    xmlNs ns;
    xmlNode node;
    
    klee_make_symbolic(&ns, sizeof(ns), "ns");
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Call the function that leads to the suspicious line
    xmlC14NVisibleNsStackAdd(stack, &ns, &node);
    
    // Add assertion for potential buffer overflow
    if (stack->nsTab != NULL && stack->nodeTab != NULL) {
        klee_assert(stack->nsCurEnd < stack->nsMax);
    }
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}