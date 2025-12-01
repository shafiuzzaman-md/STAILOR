#include <klee/klee.h>
#include "c14n.h"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) return 0;

    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    klee_make_symbolic(&stack->nodeTab, sizeof(stack->nodeTab), "nodeTab");

    if (stack->nodeTab != NULL) {
        klee_assert(stack->nsMax >= 0);
        memset(stack->nodeTab, 0, stack->nsMax * sizeof(xmlNodePtr));
        xmlFree(stack->nodeTab);
    }

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}