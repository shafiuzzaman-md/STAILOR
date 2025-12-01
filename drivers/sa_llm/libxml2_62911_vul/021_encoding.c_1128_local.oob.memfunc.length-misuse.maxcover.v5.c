#include <klee/klee.h>
#include "encoding.h"

int main() {
    // Initialize global variables
    xmlCharEncodingAliasesMax = 10;
    xmlCharEncodingAliasesNb = 5;
    xmlCharEncodingAliases = (xmlCharEncodingAliasPtr)xmlMalloc(xmlCharEncodingAliasesMax * sizeof(xmlCharEncodingAlias));
    
    // Initialize some aliases to make the array non-empty
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        xmlCharEncodingAliases[i].name = xmlMemStrdup("test_name");
        xmlCharEncodingAliases[i].alias = xmlMemStrdup("TEST_ALIAS");
    }
    
    // Create symbolic alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    alias[99] = '\0'; // Ensure null termination
    
    // Call the target function
    int result = xmlDelEncodingAlias(alias);
    
    // Assertion for the suspicious memmove line
    // Check that the memmove doesn't access out of bounds
    if (result == 0) {
        // After successful deletion, verify array bounds are maintained
        klee_assert(xmlCharEncodingAliasesNb >= 0 && xmlCharEncodingAliasesNb < xmlCharEncodingAliasesMax);
    }
    
    // Cleanup
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        if (xmlCharEncodingAliases[i].name) xmlFree((char*)xmlCharEncodingAliases[i].name);
        if (xmlCharEncodingAliases[i].alias) xmlFree((char*)xmlCharEncodingAliases[i].alias);
    }
    xmlFree(xmlCharEncodingAliases);
    
    return 0;
}