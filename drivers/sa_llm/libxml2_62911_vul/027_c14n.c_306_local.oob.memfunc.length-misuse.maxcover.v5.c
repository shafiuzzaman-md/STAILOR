#include <klee/klee.h>
#include "c14n.c"

int main() {
    xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
    if (stack == NULL) {
        return 0;
    }

    // Initialize some symbolic state to potentially trigger the vulnerability
    stack->nsMax = 8;
    stack->nsCurEnd = 8;
    
    // Allocate arrays with symbolic sizes to potentially trigger memset issues
    stack->nsTab = (xmlNsPtr*)xmlMalloc(stack->nsMax * sizeof(xmlNsPtr));
    stack->nodeTab = (xmlNodePtr*)xmlMalloc(stack->nsMax * sizeof(xmlNodePtr));
    
    if (stack->nsTab != NULL && stack->nodeTab != NULL) {
        // Add assertion to check for potential out-of-bounds access
        // This checks if the memset at line 306 could write beyond allocated bounds
        klee_assert(stack->nsMax >= 0 && stack->nsMax <= 1024); // Reasonable bounds check
        
        // Call the function that contains the suspicious line
        xmlC14NVisibleNsStackDestroy(stack);
    } else {
        if (stack->nsTab != NULL) xmlFree(stack->nsTab);
        if (stack->nodeTab != NULL) xmlFree(stack->nodeTab);
        xmlFree(stack);
    }

    return 0;
}