#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) return 0;

    // Initialize symbolic namespace and node
    xmlNs ns;
    xmlNode node;
    
    klee_make_symbolic(&ns, sizeof(ns), "ns");
    klee_make_symbolic(&node, sizeof(node), "node");
    
    // Add namespace to trigger allocation and memset
    xmlC14NVisibleNsStackAdd(stack, &ns, &node);
    
    // Assertion for potential memset bounds issue
    // Check if nsTab allocation succeeded before memset
    if (stack->nsTab != NULL) {
        klee_assert(stack->nsMax >= XML_NAMESPACES_DEFAULT);
    }
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}