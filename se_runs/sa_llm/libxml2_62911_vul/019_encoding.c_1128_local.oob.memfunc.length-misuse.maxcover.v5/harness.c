#include <libxml/encoding.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    // Initialize libxml2
    xmlInitParser();

    // Make alias string symbolic
    char alias[100];
    klee_make_symbolic(alias, sizeof(alias), "alias");
    // Ensure it's null-terminated
    alias[sizeof(alias)-1] = '\0';

    // Call xmlDelEncodingAlias to reach the target line
    int result = xmlDelEncodingAlias(alias);

    // Place reachability marker near the vulnerable memmove
    // The target line is inside xmlDelEncodingAlias when the alias is found
    // We cannot directly instrument inside libxml2, so we mark after the call
    // if the alias was found (result == 0) and the memmove was reached.
    if (result == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    xmlCleanupParser();
    return 0;
}