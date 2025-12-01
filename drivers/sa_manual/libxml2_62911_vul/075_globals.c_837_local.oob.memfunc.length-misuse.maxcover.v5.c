#include <klee/klee.h>
#include "globals.h"

int main() {
    // Symbolic input to control allocation success/failure
    int allowFailure;
    klee_make_symbolic(&allowFailure, sizeof(allowFailure), "allowFailure");
    
    // Call the function that leads to the suspicious line
    xmlGlobalStatePtr result = xmlNewGlobalState(allowFailure);
    
    // Assertion to check for potential vulnerability
    // The suspicious line is memset(gs, 0, sizeof(xmlGlobalState)) at line 837
    // We want to ensure the allocation was successful before memset
    if (!allowFailure) {
        klee_assert(result != NULL);
    }
    
    return 0;
}