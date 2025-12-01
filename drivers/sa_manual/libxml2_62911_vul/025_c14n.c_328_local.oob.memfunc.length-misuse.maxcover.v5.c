#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize stack with symbolic data
    xmlNsPtr ns;
    xmlNodePtr node;
    
    klee_make_symbolic(&ns, sizeof(ns), "ns");
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Call the function that leads to the suspicious line
    xmlC14NVisibleNsStackAdd(stack, ns, node);
    
    // Check bounds for the memset operation at line 328
    if (stack->nodeTab != NULL) {
        klee_assert(stack->nsMax >= XML_NAMESPACES_DEFAULT);
    }
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}