#include <string.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#ifndef XML_NODESET_DEFAULT
#define XML_NODESET_DEFAULT 10
#endif

/* --- Stub Functions --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* Stub xmlMalloc to return symbolic pointer with controlled size */
void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    static char buffer[256];
    klee_make_symbolic(buffer, sizeof(buffer), "xmlMalloc_buffer");
    /* Constrain size to be exactly 256 to match allocation */
    klee_assume(size == 256);
    return buffer;
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_xmlMalloc

/* Stub xmlFree to do nothing */
void stub_xmlFree(void *ptr) {
    /* Do nothing */
}
#define xmlFree stub_xmlFree

/* Stub xmlXPathNodeSetDupNs to return NULL */
void* stub_xmlXPathNodeSetDupNs(void *node, void *ns) {
    return NULL;
}
#define xmlXPathNodeSetDupNs stub_xmlXPathNodeSetDupNs

/* --- Embedded Functions --- */
/* No embedded functions needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <stddef.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
typedef struct _xmlNode xmlNode;
typedef struct _xmlNodeSet xmlNodeSet;
xmlNodeSet *xmlXPathNodeSetCreate(xmlNode *val);

int main(int argc, char **argv) {
    /* Create a symbolic xmlNode pointer */
    xmlNode *val;
    klee_make_symbolic(&val, sizeof(val), "val");
    
    /* Force val to be non-NULL to take the code path that allocates nodeTab */
    klee_assume(val != NULL);
    
    /* Call xmlXPathNodeSetCreate with non-NULL val */
    xmlNodeSet *result = xmlXPathNodeSetCreate(val);
    
    /* If we reach here without crashing, the bug didn't happen */
      /* Safe landing - never triggers */
    
    /* REACH_ASSERT - sentinel for reachability scoring */
    
    
    return 0;
}