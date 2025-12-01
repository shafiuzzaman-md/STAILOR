#include <klee/klee.h>
#include "c14n.h"

int main() {
    // Initialize a xmlC14NVisibleNsStack structure
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Create symbolic inputs for namespace and node
    xmlNs ns;
    xmlNode node;
    
    klee_make_symbolic(&ns, sizeof(ns), "ns");
    klee_make_symbolic(&node, sizeof(node), "node");

    // Call the target function multiple times to potentially trigger the vulnerability
    for (int i = 0; i < XML_NAMESPACES_DEFAULT + 1; i++) {
        xmlC14NVisibleNsStackAdd(stack, &ns, &node);
        
        // Add assertion to check for potential buffer overflow
        if (stack->nsTab != NULL && stack->nodeTab != NULL) {
            // Check if we're accessing beyond allocated bounds
            klee_assert(stack->nsCurEnd < stack->nsMax);
        }
    }

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}