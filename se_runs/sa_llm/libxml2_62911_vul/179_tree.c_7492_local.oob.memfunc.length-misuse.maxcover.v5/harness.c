#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlBuffer {
    xmlChar *content; 
    unsigned int use;  
    unsigned int size; 
} xmlBuffer;

/* Stub for xmlStringGetNodeList - the entrypoint from SA spec */
int xmlStringGetNodeList(xmlBuffer *buf, const xmlChar *str, int len);

/* Helper to create and initialize xmlBuffer */
static xmlBuffer* create_xmlBuffer(unsigned int size) {
    xmlBuffer *buf = (xmlBuffer*)malloc(sizeof(xmlBuffer));
    if (!buf) return NULL;
    
    buf->content = (xmlChar*)malloc(size);
    if (!buf->content) {
        free(buf);
        return NULL;
    }
    
    buf->size = size;
    buf->use = 0;
    buf->content[0] = 0;
    return buf;
}

int main(void) {
    /* Symbolic inputs for the vulnerable function call */
    int len;
    unsigned int buf_size;
    unsigned int initial_use;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_make_symbolic(&initial_use, sizeof(initial_use), "initial_use");
    
    /* Assume reasonable bounds based on SA hints and typical buffer usage */
    klee_assume(len >= 0);               /* SA hint: len >= 0 */
    klee_assume(buf_size >= 1 && buf_size <= 4096);  /* Reasonable buffer size */
    klee_assume(initial_use >= 0 && initial_use < buf_size); /* Current usage less than size */
    
    /* Create buffer with symbolic size and initial usage */
    xmlBuffer *buf = create_xmlBuffer(buf_size);
    if (!buf) return 1;  /* Memory allocation failure */
    
    buf->use = initial_use;
    if (initial_use > 0) {
        /* Initialize content with some data */
        for (unsigned int i = 0; i < initial_use; i++) {
            buf->content[i] = 'a';
        }
        buf->content[initial_use] = 0;
    }
    
    /* Create symbolic string input */
    xmlChar str[4096];
    klee_make_symbolic(str, sizeof(str), "str");
    
    /* Call the target function - this should reach line 7492 in tree.c */
    int result = xmlStringGetNodeList(buf, str, len);
    
    /* Vulnerability assertion: check if memmove at line 7492 would overflow */
    /* The vulnerable memmove is: memmove(&buf->content[len], &buf->content[0], buf->use); */
    /* Condition: len + buf->use <= buf->size (ensuring destination has enough space) */
    SAILR_ASSERT(len + buf->use <= buf->size);
    
    /* Reachability marker - placed after vulnerability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(buf->content);
    free(buf);
    
    return 0;
}