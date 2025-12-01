#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize stack with some data to trigger potential reallocation
    for (int i = 0; i < XML_NAMESPACES_DEFAULT + 1; i++) {
        xmlC14NVisibleNsStackAdd(stack, NULL, NULL);
    }

    // Make nsMax symbolic to explore different buffer sizes
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");

    // Add assertion near the suspicious line 303
    if (stack->nodeTab != NULL) {
        klee_assert(stack->nsMax >= 0 && stack->nsMax <= 1024); // Reasonable bounds check
    }

    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}