#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        // Symbolic inputs for potential stack operations
        xmlNsPtr symbolic_ns;
        xmlNodePtr symbolic_node;
        
        klee_make_symbolic(&symbolic_ns, sizeof(xmlNsPtr), "symbolic_ns");
        klee_make_symbolic(&symbolic_node, sizeof(xmlNodePtr), "symbolic_node");
        
        // Add some namespaces to potentially trigger reallocation
        for (int i = 0; i < XML_NAMESPACES_DEFAULT + 1; i++) {
            xmlC14NVisibleNsStackAdd(stack, symbolic_ns, symbolic_node);
        }
        
        // Assertion based on the suspicious memset at line 288
        // Check that stack allocation and initialization is valid
        if (stack != NULL) {
            klee_assert(stack->nsMax >= stack->nsCurEnd);
        }
        
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}