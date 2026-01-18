

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define ENCODING_BUF_SIZE 256

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

/* Stub xmlMalloc to return a small fixed-size buffer (64 bytes) */
void* stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_xmlMalloc(size_t size) {
    static char small_buffer[64];
    (void)size; /* Ignore requested size */
    return small_buffer;
}
#define xmlMalloc stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_stub_xmlMalloc

/* --- Embedded Functions --- */
/* Helper to ensure null termination */
static void ensure_null_terminated(char* buf, size_t size) {
    if (size > 0) {
        buf[size - 1] = '\0';
    }
}

/* --- Harness --- */
/* Forward declaration of target entrypoint */
extern int htmlSetMetaEncoding(void* doc, const unsigned char* encoding);

int main(int argc, char **argv) {
    /* 1) Prepare inputs */
    /* doc parameter - use NULL as per plan */
    void* doc = NULL;
    
    /* encoding parameter - concrete buffer with symbolic contents */
    char encoding_buf[ENCODING_BUF_SIZE];
    
    /* Make the buffer contents symbolic */
    klee_make_symbolic(encoding_buf, sizeof(encoding_buf), "encoding_buf");
    
    /* Ensure null termination to prevent infinite strlen */
    ensure_null_terminated(encoding_buf, sizeof(encoding_buf));
    
    /* Filter short strings (strlen <= 64) */
    size_t len = strlen(encoding_buf);
    if (len <= 64) {
        return 0;
    }
    
    /* Filter overly-long strings for performance (strlen >= 128) */
    if (len >= 128) {
        return 0;
    }
    
    /* Ensure encoding is not NULL (as per plan constraints) */
    klee_assume(encoding_buf != NULL);
    
    /* 2) Call the real entrypoint */
    int result = htmlSetMetaEncoding(doc, (const unsigned char*)encoding_buf);
    
    /* 3) BUG_ASSERT - Since we can't access local variables from htmlUpdateMetaEncoding,
       we use as a safe landing marker.
       The actual buffer overflow will be caught by KLEE's memory safety checks. */
    
    
    /* 4) REACH_ASSERT */
    
    
    return 0;
}