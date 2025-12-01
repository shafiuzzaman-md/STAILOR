#include <klee/klee.h>
#include "c14n.h"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize stack with default allocation
    stack->nsTab = (xmlNsPtr*) xmlMalloc(XML_NAMESPACES_DEFAULT * sizeof(xmlNsPtr));
    stack->nodeTab = (xmlNodePtr*) xmlMalloc(XML_NAMESPACES_DEFAULT * sizeof(xmlNodePtr));
    
    if ((stack->nsTab == NULL) || (stack->nodeTab == NULL)) {
        if (stack->nsTab) xmlFree(stack->nsTab);
        if (stack->nodeTab) xmlFree(stack->nodeTab);
        xmlFree(stack);
        return 0;
    }

    // Make stack size symbolic to explore different allocation states
    int symbolic_size;
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    klee_assume(symbolic_size >= 0);
    klee_assume(symbolic_size <= 2 * XML_NAMESPACES_DEFAULT);

    stack->nsMax = symbolic_size;
    stack->nsCurEnd = 0;

    // Add elements until we reach the suspicious memset
    for (int i = 0; i < stack->nsMax; i++) {
        xmlNsPtr ns;
        xmlNodePtr node;
        
        klee_make_symbolic(&ns, sizeof(ns), "ns");
        klee_make_symbolic(&node, sizeof(node), "node");
        
        xmlC14NVisibleNsStackAdd(stack, ns, node);
        
        // Assertion near the suspicious line - check buffer bounds
        if (stack->nsTab != NULL) {
            klee_assert(stack->nsCurEnd <= stack->nsMax);
        }
        if (stack->nodeTab != NULL) {
            klee_assert(stack->nsCurEnd <= stack->nsMax);
        }
    }

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}