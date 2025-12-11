#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdlib.h>
#include "klee/klee.h"

#define XML_NANO_HTTP_CHUNK 4096

typedef struct _xmlNanoHTTPCtxt {
    int fd;
    char *in;
    char *inptr;
    char *content;
    char *inrptr;
    int last;
} xmlNanoHTTPCtxt;

ssize_t recv(int sockfd, void *buf, size_t len, int flags) {
    if (buf == NULL) return -1;
    
    klee_make_symbolic(&len, sizeof(len), "recv_len");
    klee_assume(len <= XML_NANO_HTTP_CHUNK);
    
    ssize_t result;
    klee_make_symbolic(&result, sizeof(result), "recv_result");
    klee_assume(result >= -1 && result <= (ssize_t)len);
    
    if (result > 0) {
        char *cbuf = (char *)buf;
        for (ssize_t i = 0; i < result; i++) {
            cbuf[i] = klee_range(0, 256, "recv_byte");
        }
    }
    
    return result;
}

int xmlNanoHTTPMethodRedir(void) {
    xmlNanoHTTPCtxt *ctxt = malloc(sizeof(xmlNanoHTTPCtxt));
    if (!ctxt) return -1;
    
    ctxt->in = malloc(XML_NANO_HTTP_CHUNK);
    if (!ctxt->in) {
        free(ctxt);
        return -1;
    }
    
    int d_inptr, d_content, d_inrptr;
    klee_make_symbolic(&d_inptr, sizeof(d_inptr), "d_inptr");
    klee_make_symbolic(&d_content, sizeof(d_content), "d_content");
    klee_make_symbolic(&d_inrptr, sizeof(d_inrptr), "d_inrptr");
    
    klee_assume(d_inptr >= 0 && d_inptr < XML_NANO_HTTP_CHUNK);
    klee_assume(d_content >= 0 && d_content < XML_NANO_HTTP_CHUNK);
    klee_assume(d_inrptr >= 0 && d_inrptr < XML_NANO_HTTP_CHUNK);
    
    ctxt->inptr = ctxt->in + d_inptr;
    ctxt->content = ctxt->in + d_content;
    ctxt->inrptr = ctxt->in + d_inrptr;
    
    ctxt->fd = 0;
    
    ctxt->last = recv(ctxt->fd, ctxt->inptr, XML_NANO_HTTP_CHUNK, 0);
    
    if (ctxt->last > 0) {
        ctxt->inptr += ctxt->last;
        
        int remaining_space = XML_NANO_HTTP_CHUNK - d_inptr;
        
        SAILR_ASSERT(ctxt->last <= remaining_space);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        return ctxt->last;
    }
    
    if (ctxt->last == 0) {
        free(ctxt->in);
        free(ctxt);
        return 0;
    }
    
    free(ctxt->in);
    free(ctxt);
    return -1;
}

int main(void) {
    return xmlNanoHTTPMethodRedir();
}