#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    
    if (stack != NULL) {
        // Initialize symbolic fields that might affect the vulnerable memset
        klee_make_symbolic(&stack->nsMax, sizeof(int), "nsMax");
        klee_make_symbolic(&stack->nsCurEnd, sizeof(int), "nsCurEnd");
        klee_make_symbolic(&stack->nsPrevStart, sizeof(int), "nsPrevStart");
        klee_make_symbolic(&stack->nsPrevEnd, sizeof(int), "nsPrevEnd");
        
        // Check for potential buffer overflow in xmlC14NVisibleNsStackDestroy
        // The suspicious memset at line 288 should be safe, but let's check related operations
        if (stack->nsTab != NULL) {
            // Assert that nsMax is reasonable to prevent overflow in memset at line 299
            klee_assume(stack->nsMax >= 0);
            klee_assume(stack->nsMax < 10000); // Reasonable upper bound
        }
        
        if (stack->nodeTab != NULL) {
            // Similar check for nodeTab
            klee_assume(stack->nsMax >= 0);
            klee_assume(stack->nsMax < 10000);
        }
        
        // Call destroy function which contains the suspicious memset operations
        xmlC14NVisibleNsStackDestroy(stack);
    }
    
    return 0;
}