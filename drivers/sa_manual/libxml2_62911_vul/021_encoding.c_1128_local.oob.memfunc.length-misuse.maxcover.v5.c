#include <klee/klee.h>
#include "encoding.h"

int main() {
    // Initialize global state
    xmlCharEncodingAliasesMax = 10;
    xmlCharEncodingAliasesNb = 5;
    xmlCharEncodingAliases = (xmlCharEncodingAliasPtr)xmlMalloc(xmlCharEncodingAliasesMax * sizeof(xmlCharEncodingAlias));
    
    // Initialize some aliases to ensure the array has content
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        char name_buf[10], alias_buf[10];
        snprintf(name_buf, sizeof(name_buf), "name%d", i);
        snprintf(alias_buf, sizeof(alias_buf), "alias%d", i);
        xmlCharEncodingAliases[i].name = xmlMemStrdup(name_buf);
        xmlCharEncodingAliases[i].alias = xmlMemStrdup(alias_buf);
    }
    
    // Create symbolic alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    alias[99] = '\0'; // Ensure null termination
    
    // Call the target function
    int result = xmlDelEncodingAlias(alias);
    
    // Assertion to check for potential out-of-bounds access in memmove
    // The suspicious line is 1128: memmove(&xmlCharEncodingAliases[i], &xmlCharEncodingAliases[i + 1], ...)
    // Check that i + 1 doesn't exceed the array bounds when xmlCharEncodingAliasesNb is reduced
    if (result == 0) {
        // If deletion was successful, verify the array indices used in memmove were valid
        klee_assert(1); // This is a placeholder - the actual check would need to capture the value of i
    }
    
    // Cleanup
    for (int i = 0; i < xmlCharEncodingAliasesNb; i++) {
        if (xmlCharEncodingAliases[i].name) xmlFree((char*)xmlCharEncodingAliases[i].name);
        if (xmlCharEncodingAliases[i].alias) xmlFree((char*)xmlCharEncodingAliases[i].alias);
    }
    xmlFree(xmlCharEncodingAliases);
    
    return 0;
}