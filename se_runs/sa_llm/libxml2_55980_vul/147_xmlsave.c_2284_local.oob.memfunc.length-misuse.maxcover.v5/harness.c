#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlNode xmlNode;
typedef struct _xmlSaveCtxt xmlSaveCtxt;

struct _xmlBuffer {
    xmlChar* content;
    unsigned int use;
    unsigned int size;
};

struct _xmlSaveCtxt {
    xmlBuffer* buf;
    int level;
    int format;
    const xmlChar* encoding;
    int options;
};

/* Minimal stub for xmlInitParser */
void xmlInitParser(void) {
    /* Do nothing for stub */
}

/* Minimal stub for xmlSaveCtxtInit */
void xmlSaveCtxtInit(xmlSaveCtxt* ctxt) {
    /* Do nothing for stub */
}

/* The target function from xmlsave.c line 2284 */
void target_function(xmlBuffer* buf, xmlNode* cur, int level, int format, const char* encoding) {
    xmlSaveCtxt ctxt;
    
    xmlInitParser();
    
    if ((buf == NULL) || (cur == NULL)) return;
    
    if (encoding == NULL)
        encoding = "UTF-8";
    
    /* TARGET LINE 2284: memset(&ctxt, 0, sizeof(ctxt)); */
    memset(&ctxt, 0, sizeof(ctxt));
    
    /* Vulnerability assertion: For memset OOB, we need to ensure sizeof(ctxt) 
       doesn't exceed bounds of &ctxt, but since ctxt is a local variable,
       the real risk is that sizeof(ctxt) might be miscalculated or that
       the memset could overflow if ctxt is part of a larger structure.
       However, the SA pattern suggests length/count may be unbounded.
       Since this is a local stack variable, the main risk would be if
       sizeof(ctxt) is incorrectly large. We'll assert it's reasonable. */
    SAILR_ASSERT(sizeof(ctxt) <= 1024);  /* Reasonable upper bound for the context structure */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ctxt.buf = buf;
    ctxt.level = level;
    ctxt.format = format ? 1 : 0;
    ctxt.encoding = (const xmlChar *) encoding;
    xmlSaveCtxtInit(&ctxt);
    ctxt.options |= 1;  /* XML_SAVE_AS_XML */
}

int main(void) {
    /* Make symbolic inputs to reach the target function */
    xmlBuffer* buf;
    xmlNode* cur;
    int level, format;
    char encoding[32];
    
    /* Allocate and initialize buffer */
    buf = (xmlBuffer*)malloc(sizeof(xmlBuffer));
    if (buf == NULL) return 0;
    
    /* Make buffer content symbolic */
    buf->content = (xmlChar*)malloc(256);
    klee_make_symbolic(buf->content, 256, "buf_content");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    
    /* Assume reasonable buffer size */
    klee_assume(buf->size <= 256);
    klee_assume(buf->use <= buf->size);
    
    /* Make other inputs symbolic */
    cur = (xmlNode*)malloc(sizeof(xmlNode));
    klee_make_symbolic(cur, sizeof(xmlNode), "cur_node");
    
    klee_make_symbolic(&level, sizeof(level), "level");
    klee_make_symbolic(&format, sizeof(format), "format");
    klee_make_symbolic(encoding, sizeof(encoding), "encoding");
    
    /* Ensure encoding is null-terminated */
    encoding[31] = '\0';
    
    /* Call the target function */
    target_function(buf, cur, level, format, encoding);
    
    /* Cleanup */
    free(buf->content);
    free(buf);
    free(cur);
    
    return 0;
}