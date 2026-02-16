/*
 * ssample stubs_extra.c — Global extra stubs
 *
 * Copy to: se-config/stubs_extra.c
 *
 * These are APPENDED to the auto-generated stubs for ALL specs.
 * Use this for library-wide stubs that the auto-generator misses.
 */

#include <stddef.h>
#include <stdlib.h>
#include <string.h>

/* Example: stub out a logging function that causes KLEE to diverge */
void xmlGenericErrorDefaultFunc(void *ctx, const char *msg, ...) {
    (void)ctx;
    (void)msg;
}

/* Example: provide a deterministic allocator wrapper */
void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Example: stub an I/O function that KLEE can't handle */
int xmlFileRead(void *context, char *buffer, int len) {
    (void)context;
    memset(buffer, 0, len);
    return len;
}
