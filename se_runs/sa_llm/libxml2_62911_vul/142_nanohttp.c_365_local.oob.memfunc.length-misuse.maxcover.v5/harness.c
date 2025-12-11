#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlNanoHTTPCtxt xmlNanoHTTPCtxt;
struct _xmlNanoHTTPCtxt {
    int port;
    int returnValue;
    int fd;
    long ContentLength;
    /* Other fields omitted for brevity */
};

#define INVALID_SOCKET (-1)

void xmlHTTPErrMemory(const char *msg) {
    /* Stub implementation */
}

xmlNanoHTTPCtxt* xmlNanoHTTPMethodRedir(const char *URL, const char *method,
                                        const char *input, char **contentType,
                                        const char *headers, int ilen,
                                        char **redir) {
    xmlNanoHTTPCtxt *ret;
    
    /* Symbolic variables for the function parameters */
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    
    /* Model the allocation failure path */
    if (ret == NULL) {
        xmlHTTPErrMemory("allocating context");
        return NULL;
    }
    
    /* Symbolic ContentLength field */
    klee_make_symbolic(&ret->ContentLength, sizeof(ret->ContentLength), "ContentLength");
    
    /* The target line: memset(ret, 0, sizeof(xmlNanoHTTPCtxt)); */
    /* Vulnerability assertion: ContentLength must be non-negative for safe usage */
    SAILR_ASSERT(ret->ContentLength >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Initialize other fields */
    ret->port = 80;
    ret->returnValue = 0;
    ret->fd = INVALID_SOCKET;
    ret->ContentLength = -1;
    
    return ret;
}

int main(void) {
    char *contentType = NULL;
    char *redir = NULL;
    const char *URL;
    const char *method;
    const char *input;
    const char *headers;
    int ilen;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    klee_make_symbolic(&method, sizeof(method), "method");
    klee_make_symbolic(&input, sizeof(input), "input");
    klee_make_symbolic(&headers, sizeof(headers), "headers");
    klee_make_symbolic(&ilen, sizeof(ilen), "ilen");
    
    /* Call the entrypoint function */
    xmlNanoHTTPCtxt *ctxt = xmlNanoHTTPMethodRedir(URL, method, input, &contentType, headers, ilen, &redir);
    
    /* Avoid unused variable warnings */
    if (ctxt) {
        /* Do nothing - just to use the variable */
    }
    
    return 0;
}