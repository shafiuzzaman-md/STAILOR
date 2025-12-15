#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNanoHTTPCtxt xmlNanoHTTPCtxt;
typedef xmlNanoHTTPCtxt *xmlNanoHTTPCtxtPtr;

struct _xmlNanoHTTPCtxt {
    char *protocol;
    char *hostname;
    int port;
    char *path;
    char *query;
    char *fragment;
    int returnValue;
    int fd;
    long ContentLength;
    /* Other fields omitted for brevity */
};

/* Stub functions to avoid linking with libxml2 */
void xmlHTTPErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlNanoHTTPScanURL(xmlNanoHTTPCtxtPtr ctxt, const char *URL) {
    /* Minimal implementation to avoid null dereferences */
    if (ctxt && URL) {
        ctxt->protocol = NULL;
        ctxt->hostname = NULL;
        ctxt->path = NULL;
        ctxt->query = NULL;
        ctxt->fragment = NULL;
    }
}

/* The function containing the target line */
xmlNanoHTTPCtxtPtr xmlNanoHTTPNewCtxt(const char *URL) {
    xmlNanoHTTPCtxtPtr ret;

    ret = (xmlNanoHTTPCtxtPtr) xmlMalloc(sizeof(xmlNanoHTTPCtxt));
    if (ret == NULL) {
        xmlHTTPErrMemory("allocating context");
        return(NULL);
    }

    /* TARGET LINE 374: memset(ret, 0, sizeof(xmlNanoHTTPCtxt)); */
    memset(ret, 0, sizeof(xmlNanoHTTPCtxt));
    
    /* Vulnerability assertion: ensure the size argument doesn't exceed allocated bounds */
    SAILR_ASSERT(sizeof(xmlNanoHTTPCtxt) <= malloc_usable_size(ret));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->port = 80;
    ret->returnValue = 0;
    ret->fd = -1; /* INVALID_SOCKET */
    ret->ContentLength = -1;

    xmlNanoHTTPScanURL(ret, URL);

    return(ret);
}

/* Helper to get usable size of allocation (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (!ptr) return 0;
    /* In KLEE, we can make this symbolic to explore different allocation sizes */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlNanoHTTPCtxt)); /* At least enough for the struct */
    return size;
}

int main(void) {
    const char *URL;
    char url_buffer[256];
    
    /* Make URL symbolic to explore different paths */
    klee_make_symbolic(url_buffer, sizeof(url_buffer), "url_buffer");
    url_buffer[255] = '\0'; /* Ensure null termination */
    URL = url_buffer;
    
    /* Call the function that contains the target line */
    xmlNanoHTTPCtxtPtr ctxt = xmlNanoHTTPNewCtxt(URL);
    
    /* Clean up */
    if (ctxt) {
        free(ctxt);
    }
    
    return 0;
}