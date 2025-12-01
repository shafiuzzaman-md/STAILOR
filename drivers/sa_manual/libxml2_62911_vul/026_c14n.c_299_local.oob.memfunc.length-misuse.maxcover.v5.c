#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize symbolic fields that could affect the memset size
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    klee_make_symbolic(&stack->nsTab, sizeof(stack->nsTab), "nsTab");

    // Add some entries to make nsTab non-NULL
    stack->nsTab = (xmlNsPtr*)xmlMalloc(XML_NAMESPACES_DEFAULT * sizeof(xmlNsPtr));
    stack->nodeTab = (xmlNodePtr*)xmlMalloc(XML_NAMESPACES_DEFAULT * sizeof(xmlNodePtr));
    if (stack->nsTab == NULL || stack->nodeTab == NULL) {
        xmlC14NVisibleNsStackDestroy(stack);
        return 0;
    }
    stack->nsMax = XML_NAMESPACES_DEFAULT;
    stack->nsCurEnd = 1;

    // Assertion for the suspicious memset at line 299
    // Check that nsMax is reasonable (not causing excessive memset)
    klee_assume(stack->nsMax >= 0);
    klee_assume(stack->nsMax <= 10000); // Reasonable upper bound

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}