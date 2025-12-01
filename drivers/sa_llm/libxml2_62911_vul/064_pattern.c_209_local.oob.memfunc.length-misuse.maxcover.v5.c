#include <klee/klee.h>
#include "pattern.c"

int main() {
    // Initialize symbolic variables that might affect the vulnerable code path
    // The vulnerability is at line 209 in xmlNewPattern where memset is called
    // We need to ensure the allocation and initialization are safe
    
    // Call the entry function - xmlNewPattern is static so we need to test through a public API
    // Since xmlNewPattern is static, we'll create a minimal test that exercises pattern creation
    // We'll use xmlPatternCompile which internally calls xmlNewPattern
    
    // Create symbolic input for pattern compilation
    char pattern_buf[100];
    klee_make_symbolic(pattern_buf, sizeof(pattern_buf), "pattern_buf");
    
    // Ensure null termination
    pattern_buf[99] = '\0';
    
    // Call pattern compilation which internally uses xmlNewPattern
    xmlPatternPtr result = xmlPatternCompile((const xmlChar*)pattern_buf, NULL, 0, NULL);
    
    // The vulnerability check: ensure the memset at line 209 doesn't overflow
    // We can't directly check the memset, but we can verify the structure was properly allocated
    if (result != NULL) {
        // Check that the steps array was properly allocated (line 211)
        klee_assert(result->steps != NULL);
        // Check that we can access within bounds of the allocated steps
        if (result->nbStep > 0 && result->nbStep <= result->maxStep) {
            // Safe access to verify allocation
            volatile xmlStepOp dummy = result->steps[0];
            (void)dummy; // suppress unused warning
        }
    }
    
    // Clean up
    if (result != NULL) {
        xmlFreePattern(result);
    }
    
    return 0;
}