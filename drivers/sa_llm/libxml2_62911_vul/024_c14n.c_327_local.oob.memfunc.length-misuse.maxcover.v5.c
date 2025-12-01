#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    xmlNs ns;
    xmlNode node;
    
    klee_make_symbolic(&ns, sizeof(xmlNs), "ns");
    klee_make_symbolic(&node, sizeof(xmlNode), "node");
    
    xmlC14NVisibleNsStackAdd(stack, &ns, &node);
    
    klee_assert(stack->nsCurEnd <= stack->nsMax);
    
    xmlC14NVisibleNsStackDestroy(stack);
    return 0;
}