#include <stddef.h>
#include <stdlib.h>
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
#define BUFFER_SIZE 4096

typedef unsigned char xmlChar;
typedef struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
    int alloc;
} xmlBuffer;

typedef struct _xmlBuf xmlBuf;
typedef enum {
    XML_BUFFER_ALLOC_IO
} xmlBufferAllocationScheme;

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

/* Stub xmlMalloc */
#define xmlMalloc(size) malloc(size)
/* Stub xmlRealloc */
#define xmlRealloc(ptr, size) realloc(ptr, size)
/* Stub xmlFree */
#define xmlFree(ptr) free(ptr)

/* --- Embedded Functions --- */
#include <string.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Helper to filter string length without klee_assume */
static int filter_string_length(const xmlChar *str, int min_len, int max_len) {
    size_t actual_len = strlen((const char*)str);
    if (actual_len <= (size_t)min_len) return 0;
    if (actual_len >= (size_t)max_len) return 0;
    return 1;
}

/* --- Harness --- */
int xmlBufferCreate(void);
int xmlBufferAddHead(xmlBuffer *buf, const xmlChar *str, int len);
void xmlBufferFree(xmlBuffer *buf);

int main(int argc, char **argv) {
    /* Create buffer */
    xmlBuffer *buf = xmlBufferCreate();
    if (buf == NULL) {
        return 0;
    }
    
    /* Allocate concrete buffer for symbolic string */
    xmlChar str_buf[BUFFER_SIZE];
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    
    /* Ensure null termination to prevent OOB reads in strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Make length symbolic */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Apply constraints from plan */
    klee_assume(len >= 0);
    if (len >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Filter strings based on length (as per assumptions) */
    if (!filter_string_length(str_buf, 64, 128)) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Call the vulnerable function */
    int result = xmlBufferAddHead(buf, str_buf, len);
    
    /* The BUG_ASSERT is injected at line 1056 via instrumentation */
    /* If execution reaches here without crashing, the bug didn't trigger */
    
    xmlBufferFree(buf);
    return 0;
}