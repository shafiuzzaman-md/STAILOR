#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <klee/klee.h>

#include <libxml/xmlstring.h>

int main(void) {
    xmlChar *cur;
    xmlChar *add;
    int len;
    xmlChar *result;

    // Allocate and make cur symbolic
    cur = (xmlChar *)malloc(128 * sizeof(xmlChar));
    klee_make_symbolic(cur, 128 * sizeof(xmlChar), "cur");
    // Ensure it's null-terminated for xmlStrlen
    cur[127] = 0;

    // Allocate and make add symbolic
    add = (xmlChar *)malloc(256 * sizeof(xmlChar));
    klee_make_symbolic(add, 256 * sizeof(xmlChar), "add");

    // Make len symbolic, but constrain to reasonable range
    klee_make_symbolic(&len, sizeof(len), "len");
    // len must be >= 0 and less than some bound to avoid excessive allocation
    klee_assume(len >= 0);
    klee_assume(len < 256);

    // Call xmlStrcat which internally calls xmlStrlen and xmlRealloc
    // xmlStrcat is a likely entrypoint that leads to the target line
    result = xmlStrcat(cur, add);

    // Place reachability marker near the target line
    // The target line is inside xmlStrcat, so we can't directly assert there.
    // Instead, we'll assume we reached the target if result is not NULL and not equal to cur.
    if (result != NULL && result != cur) {
        // This indicates we took the path where xmlRealloc succeeded and memcpy was called.
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    free(add);
    // Only free result if it's different from cur (xmlStrcat may return cur or new allocation)
    if (result != cur) {
        free(result);
    } else {
        free(cur);
    }

    return 0;
}