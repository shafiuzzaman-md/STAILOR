#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        xmlNsPtr ns;
        xmlNodePtr node;
        
        klee_make_symbolic(&ns, sizeof(ns), "ns");
        klee_make_symbolic(&node, sizeof(node), "node");
        
        xmlC14NVisibleNsStackAdd(stack, ns, node);
        
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}