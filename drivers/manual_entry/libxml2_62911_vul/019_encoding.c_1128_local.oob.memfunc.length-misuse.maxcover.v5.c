#include <klee/klee.h>
#include "encoding.h"

int main() {
    // Initialize global state
    xmlCharEncodingAliases = NULL;
    xmlCharEncodingAliasesNb = 0;
    xmlCharEncodingAliasesMax = 0;

    // Add some initial encoding aliases to populate the array
    xmlAddEncodingAlias("UTF-8", "TEST1");
    xmlAddEncodingAlias("UTF-16", "TEST2");
    xmlAddEncodingAlias("ISO-8859-1", "TEST3");

    // Create symbolic input for alias parameter
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    klee_assume(alias[99] == '\0'); // Ensure null termination

    // Call the vulnerable function
    xmlDelEncodingAlias(alias);

    return 0;
}