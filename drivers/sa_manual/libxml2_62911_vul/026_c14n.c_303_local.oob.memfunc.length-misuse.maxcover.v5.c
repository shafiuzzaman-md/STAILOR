#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) return 0;

    // Initialize stack fields to trigger potential vulnerability
    stack->nsMax = klee_int("nsMax");
    stack->nodeTab = (xmlNodePtr*)xmlMalloc(stack->nsMax * sizeof(xmlNodePtr));
    
    // Make symbolic to explore different states
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    
    // Call the function that contains the suspicious line
    xmlC14NVisibleNsStackDestroy(stack);
    
    return 0;
}