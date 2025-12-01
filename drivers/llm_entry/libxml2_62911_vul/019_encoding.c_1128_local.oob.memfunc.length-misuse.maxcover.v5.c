#include <klee/klee.h>
#include "encoding.c"

int main() {
    // Initialize global state that might be needed
    if (xmlCharEncodingAliases == NULL) {
        xmlCharEncodingAliasesMax = 20;
        xmlCharEncodingAliases = (xmlCharEncodingAliasPtr)xmlMalloc(xmlCharEncodingAliasesMax * sizeof(xmlCharEncodingAlias));
        xmlCharEncodingAliasesNb = 0;
    }

    // Add some initial aliases to make the deletion meaningful
    xmlAddEncodingAlias("UTF-8", "TEST1");
    xmlAddEncodingAlias("UTF-16", "TEST2");
    xmlAddEncodingAlias("ISO-8859-1", "TEST3");

    // Create symbolic input for alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    // Ensure null termination
    alias[99] = '\0';

    // Call the vulnerable function
    int result = xmlDelEncodingAlias(alias);

    return 0;
}