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
#define MAX_INDENT 60

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

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
extern int xmlSaveSetIndentString(void *ctxt, const char *indent);

int main(int argc, char **argv) {
    /* Allocate a concrete buffer for indent string */
    char indent_buf[256];
    
    /* Make the buffer contents symbolic */
    klee_make_symbolic(indent_buf, sizeof(indent_buf), "indent_buf");
    
    /* Ensure null termination to prevent OOB reads in strlen */
    indent_buf[sizeof(indent_buf) - 1] = '\0';
    
    /* Filter short strings (len <= 0) - this matches the function's check */
    size_t len = strlen(indent_buf);
    if (len <= 0) {
        return 0;
    }
    
    /* Filter overly-long strings (len > MAX_INDENT) - this matches the function's check */
    if (len > MAX_INDENT) {
        return 0;
    }
    
    /* Create a concrete ctxt pointer - allocate a minimal xmlSaveCtxt structure */
    /* We need to allocate enough space for the struct, especially the 'indent' array */
    struct _xmlSaveCtxt {
        const char *encoding;
        void *handler;
        void *buf;
        int options;
        int level;
        int format;
        char indent[MAX_INDENT + 1];
        int indent_nr;
        int indent_size;
        void *escape;
    } *ctxt;
    
    /* Allocate the context */
    ctxt = (struct _xmlSaveCtxt *)malloc(sizeof(struct _xmlSaveCtxt));
    if (ctxt == NULL) {
        return 0;
    }
    
    /* Initialize the context fields */
    memset(ctxt, 0, sizeof(struct _xmlSaveCtxt));
    
    /* Call the target function */
    int result = xmlSaveSetIndentString(ctxt, indent_buf);
    
    /* The bug oracle is placed via instrumentation after the vulnerable memcpy.
     * If we reach here, the crash did NOT happen, so we assert a safe landing.
     */
    
    /* Clean up */
    free(ctxt);
    
    return 0;
}