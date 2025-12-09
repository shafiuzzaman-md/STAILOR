#include "klee/klee.h"
#include <libxml/globals.h>
#include <libxml/parser.h>
#include <libxml/threads.h>

int main(void) {
    // Initialize libxml2 library
    xmlInitParser();

    // Make the allowFailure parameter symbolic to explore both paths
    int allowFailure;
    klee_make_symbolic(&allowFailure, sizeof(allowFailure), "allowFailure");
    klee_assume(allowFailure == 0 || allowFailure == 1);

    // Call xmlCheckThreadLocalStorage which internally calls xmlGetThreadLocalStorage
    // This should trigger the allocation and memset path
    xmlCheckThreadLocalStorage();

    // Place reachability marker - the target line is inside xmlGetGlobalState
    // which is called by xmlCheckThreadLocalStorage when storage needs initialization
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlCleanupParser();
    return 0;
}