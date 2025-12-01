#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    stack->nsTab = (xmlNsPtr*)xmlMalloc(16 * sizeof(xmlNsPtr));
    stack->nodeTab = (xmlNodePtr*)xmlMalloc(16 * sizeof(xmlNodePtr));
    stack->nsMax = 16;
    stack->nsCurEnd = 8;

    klee_assert(stack->nsCurEnd <= stack->nsMax);
    klee_assert(stack->nsCurEnd >= 0);

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}