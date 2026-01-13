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
#define XML_NANO_HTTP_CHUNK 4096

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
/* Helper to create a minimal HTTP context */
typedef struct xmlNanoHTTPCtxt {
    char *protocol;
    char *hostname;
    int port;
    char *path;
    char *query;
    int fd;
    int state;
    char *out;
    char *outptr;
    char *in;
    char *content;
    char *inptr;
    char *inrptr;
    int inlen;
    int last;
    int returnValue;
    int version;
    int ContentLength;
    char *contentType;
    char *location;
    char *authHeader;
    char *encoding;
    char *mimeType;
} xmlNanoHTTPCtxt;

static void* create_minimal_http_context(void) {
    xmlNanoHTTPCtxt *ctxt = (xmlNanoHTTPCtxt*)malloc(sizeof(xmlNanoHTTPCtxt));
    if (!ctxt) return NULL;
    
    memset(ctxt, 0, sizeof(xmlNanoHTTPCtxt));
    
    /* Setup buffer pointers to simulate data in the input buffer */
    ctxt->in = (char*)malloc(4096);
    if (!ctxt->in) {
        free(ctxt);
        return NULL;
    }
    
    /* Fill with some data */
    for (int i = 0; i < 4096; i++) {
        ctxt->in[i] = 'A' + (i % 26);
    }
    
    ctxt->inlen = 4096;
    ctxt->inptr = ctxt->in + 4096;  /* All data has been "received" */
    ctxt->inrptr = ctxt->in;        /* Start reading from beginning */
    ctxt->content = ctxt->in;
    
    /* Set state to READ so xmlNanoHTTPRead will proceed */
    ctxt->state = 2;  /* XML_NANO_HTTP_READ */
    
    return (void*)ctxt;
}

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

/* Declare the real function */
extern int xmlNanoHTTPRead(void *ctx, void *dest, int len);

int main(int argc, char **argv) {
    /* 1. Create a concrete HTTP context */
    void *ctx = create_minimal_http_context();
    if (!ctx) return 1;
    
    /* 2. Allocate destination buffer (small to cause overflow) */
    char dest[256];  /* Fixed small buffer */
    
    /* 3. Make len symbolic and constrain it to be > buffer size */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 256);      /* Must overflow */
    if (len >= 4096) return 0; /* Auto-fixed unsafe assume */     /* Keep reasonable for performance */
    
    /* 4. Call the vulnerable function */
    int result = xmlNanoHTTPRead(ctx, dest, len);
    
    /* 5. Oracle: If we reach here without crashing, the bug didn't trigger */
      /* Never triggers - crash happens in memcpy */
    
    
    /* Cleanup */
    xmlNanoHTTPCtxt *ctxt = (xmlNanoHTTPCtxt*)ctx;
    free(ctxt->in);
    free(ctxt);
    return 0;
}