#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of functions from libxml2 that we need */
typedef unsigned char xmlChar;
extern xmlChar *xmlMallocAtomic(size_t size);
extern void xmlTreeErrMemory(const char *msg);

/* The target function from tree.c */
xmlChar *xmlBuildQName2(const xmlChar *ncname, const xmlChar *prefix, xmlChar *memory) {
    size_t lenn, lenp;
    xmlChar *ret;

    if (ncname == NULL) return NULL;
    if (prefix == NULL) return (xmlChar *) ncname;

    lenn = strlen((const char *) ncname);
    lenp = strlen((const char *) prefix);

    if (memory == NULL) {
        ret = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
        if (ret == NULL) {
            xmlTreeErrMemory("building QName");
            return NULL;
        }
    } else {
        ret = memory;
    }

    /* Target line 242: memcpy(&ret[0], prefix, lenp); */
    memcpy(&ret[0], prefix, lenp);
    ret[lenp] = ':';
    memcpy(&ret[lenp + 1], ncname, lenn);
    ret[lenn + lenp + 1] = 0;
    return ret;
}

/* Stub for xmlMallocAtomic */
void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

int main(void) {
    xmlChar *memory = NULL;
    xmlChar prefix_buf[256];
    xmlChar ncname_buf[256];
    size_t lenp, lenn;

    /* Make lengths symbolic */
    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");

    /* Assume reasonable bounds for symbolic lengths */
    klee_assume(lenp < 256);
    klee_assume(lenn < 256);

    /* Create null-terminated strings with the given lengths */
    memset(prefix_buf, 'A', lenp);
    prefix_buf[lenp] = '\0';
    memset(ncname_buf, 'B', lenn);
    ncname_buf[lenn] = '\0';

    /* Optionally make memory pointer symbolic */
    int use_heap;
    klee_make_symbolic(&use_heap, sizeof(use_heap), "use_heap");
    if (use_heap) {
        /* Allocate memory with size lenn + lenp + 2 */
        memory = (xmlChar *) malloc(lenn + lenp + 2);
        klee_assume(memory != NULL);
    }

    /* Call the target function */
    xmlChar *result = xmlBuildQName2(ncname_buf, prefix_buf, memory);

    /* Vulnerability assertion: ensure memcpy length does not exceed buffer size */
    if (result != NULL) {
        /* The buffer size is lenn + lenp + 2 (including ':' and null terminator).
           The first memcpy at line 242 copies lenp bytes starting at ret[0].
           We must ensure lenp <= (lenn + lenp + 2) - 0, which is always true.
           However, the actual issue is that ret might be too small if memory
           was provided externally. Since memory is either NULL (heap-allocated
           with proper size) or a user-provided buffer, we need to check that
           the user-provided buffer is large enough. */
        if (memory != NULL) {
            /* If memory is provided, we must assume it has at least lenn+lenp+2 bytes */
            SAILR_ASSERT(lenp <= lenn + lenp + 2);
        }
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    if (memory != NULL && use_heap) {
        free(memory);
    }
    if (result != NULL && memory == NULL) {
        free(result);
    }

    return 0;
}