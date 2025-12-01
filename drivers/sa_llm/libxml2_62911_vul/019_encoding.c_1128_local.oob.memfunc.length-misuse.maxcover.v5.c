#include <klee/klee.h>
#include "encoding.c"

int main() {
    // Initialize global variables
    xmlCharEncodingAliases = (xmlCharEncodingAliasPtr) malloc(10 * sizeof(xmlCharEncodingAlias));
    xmlCharEncodingAliasesMax = 10;
    xmlCharEncodingAliasesNb = 5;
    
    // Initialize some aliases to ensure the array has content
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        xmlCharEncodingAliases[i].name = "test_name";
        xmlCharEncodingAliases[i].alias = "test_alias";
    }
    
    // Create symbolic alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    alias[99] = '\0'; // Ensure null termination
    
    // Call the target function
    int result = xmlDelEncodingAlias(alias);
    
    // Assertion to check for potential out-of-bounds access
    // The suspicious line uses memmove with index i and i+1
    // Check that we don't access beyond array bounds
    if (result == 0) {
        // If deletion was successful, ensure we didn't access invalid indices
        klee_assert(xmlCharEncodingAliasesNb >= 0 && xmlCharEncodingAliasesNb < xmlCharEncodingAliasesMax);
    }
    
    // Cleanup
    free(xmlCharEncodingAliases);
    
    return 0;
}