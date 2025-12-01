#include <klee/klee.h>
#include "encoding.c"

int main() {
    // Initialize global state
    xmlCharEncodingAliases = NULL;
    xmlCharEncodingAliasesNb = 0;
    xmlCharEncodingAliasesMax = 0;

    // Create symbolic input for alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    
    // Ensure null termination for string safety
    alias[99] = '\0';
    
    // Call the vulnerable function
    xmlDelEncodingAlias(alias);
    
    return 0;
}