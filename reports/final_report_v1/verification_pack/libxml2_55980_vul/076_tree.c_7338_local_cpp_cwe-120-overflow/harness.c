#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define XML_BUFFER_ALLOC_IO 1

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

/* Stub xmlRealloc to avoid complex memory logic */
void* stub_xmlRealloc(void *ptr, size_t size) {
    (void)ptr;
    (void)size;
    return NULL; /* Force failure to avoid reallocation */
}
#define xmlRealloc stub_xmlRealloc

/* Stub xmlTreeErrMemory (macro redirect) */
void stub_xmlTreeErrMemory(const char *extra) {
    (void)extra;
    return;
}
#define xmlTreeErrMemory stub_xmlTreeErrMemory

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

typedef struct _xmlBuffer xmlBuffer;
typedef xmlBuffer *xmlBufferPtr;
struct _xmlBuffer {
    unsigned int alloc;       /* The realloc method */
    unsigned int use;         /* The size used */
    unsigned int size;        /* The size available */
    char *content;            /* The content pointer */
    char *contentIO;          /* The IO content pointer */
};

extern int xmlBufferShrink(xmlBufferPtr buf, unsigned int len);

int main(int argc, char **argv) {
    (void)argc; (void)argv;
    
    /* Allocate concrete buffer struct */
    xmlBufferPtr buf = (xmlBufferPtr)malloc(sizeof(xmlBuffer));
    if (!buf) return 0;
    
    /* Total allocation for contentIO (fixed size) */
    const size_t total_size = 4096;
    char *contentIO = (char*)malloc(total_size);
    if (!contentIO) { free(buf); return 0; }
    
    /* Symbolic variables for internal state */
    unsigned int len, use, size, start_buf;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    
    /* Constraints from plan */
    klee_assume(buf != NULL);
    klee_assume(len > 0);
    klee_assume(use >= len);
    klee_assume(size > 0);
    klee_assume(start_buf >= size); /* content - contentIO >= size */
    /* Ensure start_buf + use fits within total allocation */
    klee_assume(start_buf + use < total_size);
    klee_assume(start_buf < total_size);
    
    /* Initialize buffer fields */
    buf->alloc = XML_BUFFER_ALLOC_IO;
    buf->contentIO = contentIO;
    buf->size = size;
    buf->use = use;
    buf->content = contentIO + start_buf;
    
    /* Fill content with concrete data (non-symbolic to avoid path explosion) */
    for (unsigned int i = 0; i < use && i < total_size - start_buf; i++) {
        buf->content[i] = 'A' + (i % 26);
    }
    
    /* Call the target function */
    int result = xmlBufferShrink(buf, len);
    (void)result;
    
    /* Safe landing: if we reach here without crash, bug didn't trigger */
    
    
    
    /* Cleanup */
    free(contentIO);
    free(buf);
    return 0;
}