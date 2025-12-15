#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef unsigned char xmlChar;

/* Stub for xmlAttrNormalizeSpace */
void xmlAttrNormalizeSpace(xmlChar *value, xmlChar *ret) {
    /* Assume it doesn't crash for our purposes */
}

/* Stub for xmlErrMemory */
void xmlErrMemory(xmlParserCtxt *ctxt, const char *extra) {
    /* Assume it doesn't crash */
}

/* The target function from parser.c line 1232 context */
xmlChar* xmlAttrNormalizeSpace2(xmlParserCtxt *ctxt, xmlChar *src, int *len, int remove_head) {
    if (src == NULL) {
        xmlChar *ret = (xmlChar*)malloc(100); /* arbitrary size */
        if (ret == NULL) {
            xmlErrMemory(ctxt, NULL);
            return NULL;
        }
        xmlAttrNormalizeSpace(ret, ret);
        *len = strlen((const char *)ret);
        return ret;
    } else if (remove_head) {
        *len -= remove_head;
        /* TARGET LINE 1232: memmove(src, src + remove_head, 1 + *len); */
        memmove(src, src + remove_head, 1 + *len);
        return src;
    }
    return NULL;
}

int main(void) {
    /* Symbolic inputs to reach the vulnerable path */
    int remove_head;
    int len_val;
    xmlChar *src_buffer;
    int buffer_size;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&remove_head, sizeof(remove_head), "remove_head");
    klee_make_symbolic(&len_val, sizeof(len_val), "len_val");
    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
    
    /* Assume reasonable bounds to avoid trivial non-reachability */
    klee_assume(remove_head > 0);
    klee_assume(len_val > 0);
    klee_assume(buffer_size > 0);
    klee_assume(buffer_size <= 4096); /* Reasonable upper bound */
    
    /* Allocate source buffer */
    src_buffer = (xmlChar*)malloc(buffer_size);
    klee_assume(src_buffer != NULL);
    
    /* Initialize buffer with symbolic data */
    klee_make_symbolic(src_buffer, buffer_size, "src_buffer");
    
    /* Ensure src_buffer is null-terminated within bounds */
    src_buffer[buffer_size - 1] = '\0';
    
    /* The critical condition: after *len -= remove_head, 
       the memmove size (1 + *len) must not exceed available buffer */
    int new_len = len_val - remove_head;
    
    /* Vulnerability assertion: buffer must have enough space for memmove */
    /* We need: (src + remove_head) to be within buffer AND 
                (1 + new_len) <= (buffer_size - (src + remove_head - src_buffer)) 
                AND src_buffer <= src + remove_head */
    /* Simplified: ensure remove_head <= buffer_size AND 
                   (1 + new_len) <= (buffer_size - remove_head) */
    SAILR_ASSERT(remove_head <= buffer_size && (1 + new_len) <= (buffer_size - remove_head));
    
    /* Call the target function */
    int len = len_val;
    xmlChar* result = xmlAttrNormalizeSpace2(NULL, src_buffer, &len, remove_head);
    
    /* Reachability marker - we want to assert we reached the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(src_buffer);
    
    return 0;
}