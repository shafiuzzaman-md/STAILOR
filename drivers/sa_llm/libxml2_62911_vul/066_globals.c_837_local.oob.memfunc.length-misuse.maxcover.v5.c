#include <klee/klee.h>
#include "globals.h"

int main() {
    // Initialize libxml2 if needed
    xmlInitParser();
    
    // Create symbolic input for allowFailure parameter
    int allowFailure;
    klee_make_symbolic(&allowFailure, sizeof(allowFailure), "allowFailure");
    
    // Call xmlNewGlobalState which contains the suspicious memset at line 837
    xmlGlobalStatePtr gs = xmlNewGlobalState(allowFailure);
    
    // Assertion to check for potential memory issues
    // The suspicious line is memset(gs, 0, sizeof(xmlGlobalState)) at line 837
    // Check that gs is properly allocated and initialized
    if (gs != NULL) {
        // Basic sanity check - ensure the structure was properly zero-initialized
        // We can check a field that should be zero after memset
        klee_assert(gs->initialized == 0 || gs->initialized == 1);
    }
    
    // Cleanup
    if (gs != NULL) {
        free(gs);
    }
    xmlCleanupParser();
    
    return 0;
}