#include <klee/klee.h>
#include "encoding.h"

int main() {
    // Initialize global state
    xmlCharEncodingAliasesMax = 10;
    xmlCharEncodingAliasesNb = 5;
    xmlCharEncodingAliases = (xmlCharEncodingAliasPtr)xmlMalloc(xmlCharEncodingAliasesMax * sizeof(xmlCharEncodingAlias));
    
    // Initialize some aliases to ensure the array has content
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        xmlCharEncodingAliases[i].name = xmlMemStrdup("test_name");
        xmlCharEncodingAliases[i].alias = xmlMemStrdup("TEST_ALIAS");
    }
    
    // Make alias parameter symbolic
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    klee_assume(alias[0] != '\0'); // Ensure non-empty string
    klee_assume(alias[99] == '\0'); // Ensure null-terminated
    
    // Call the target function
    int result = xmlDelEncodingAlias(alias);
    
    // Assertion to check for potential out-of-bounds access in memmove
    // The suspicious line is 1128: memmove(&xmlCharEncodingAliases[i], &xmlCharEncodingAliases[i + 1],
    //                     sizeof(xmlCharEncodingAlias) * (xmlCharEncodingAliasesNb - i));
    // Check that i + 1 doesn't exceed array bounds when xmlCharEncodingAliasesNb > 0
    if (xmlCharEncodingAliasesNb > 0) {
        for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
            if (!strcmp(xmlCharEncodingAliases[i].alias, alias)) {
                klee_assert(i + 1 < xmlCharEncodingAliasesMax);
                break;
            }
        }
    }
    
    // Cleanup
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        xmlFree((char*)xmlCharEncodingAliases[i].name);
        xmlFree((char*)xmlCharEncodingAliases[i].alias);
    }
    xmlFree(xmlCharEncodingAliases);
    
    return 0;
}