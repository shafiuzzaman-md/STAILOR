#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/c14n.h>

int main(void) {
    xmlC14NVisibleNsStackPtr stack;

    /* Allocate the stack structure symbolically to allow for varied states */
    stack = (xmlC14NVisibleNsStackPtr)xmlMalloc(sizeof(xmlC14NVisibleNsStack));
    if (stack == NULL) {
        return 0;
    }

    /* Make the fields symbolic to explore different paths */
    klee_make_symbolic(&stack->nsTab, sizeof(stack->nsTab), "nsTab");
    klee_make_symbolic(&stack->nodeTab, sizeof(stack->nodeTab), "nodeTab");
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");

    /* Ensure nsMax is non-negative (as per bounds hint) */
    if (stack->nsMax < 0) {
        xmlFree(stack);
        return 0;
    }

    /* Reach the target line: call xmlC14NVisibleNsStackDestroy */
    xmlC14NVisibleNsStackDestroy(stack);

    /* Place reachability marker after the call (since the target line is inside) */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}