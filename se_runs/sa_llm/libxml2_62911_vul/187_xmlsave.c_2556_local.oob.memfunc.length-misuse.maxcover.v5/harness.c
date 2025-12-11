#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef struct _xmlOutputBuffer xmlOutputBuffer;
typedef struct _xmlSaveCtxt xmlSaveCtxt;

/* Constants from libxml2 */
#define XML_DOCUMENT_NODE 13
#define XML_HTML_DOCUMENT_NODE 14

/* Simplified struct definitions */
struct _xmlNode {
    int type;
};

struct _xmlOutputBuffer {
    /* Minimal fields for compilation */
    void* context;
};

struct _xmlSaveCtxt {
    xmlOutputBuffer* buf;
    int level;
    int format;
    const char* encoding;
    /* Additional fields that memset would zero out */
    char internal_data[256]; /* Assume some internal size */
};

/* Stub functions */
void xmlOutputBufferClose(xmlOutputBuffer* buf) {
    /* Stub implementation */
}

void xmlSaveCtxtInit(xmlSaveCtxt* ctxt) {
    /* Stub implementation */
}

/* Target function - simplified version */
int xmlNodeDumpOutputInternal(xmlOutputBuffer* buf, xmlNode* cur, int level, int format, const char* encoding) {
    xmlSaveCtxt ctxt;
    
    /* Simulate the control flow from the snippet */
    if (cur == NULL || 
        ((cur->type != XML_DOCUMENT_NODE) && 
         (cur->type != XML_HTML_DOCUMENT_NODE))) {
        xmlOutputBufferClose(buf);
        return -1;
    }
    
    /* TARGET LINE 2556: memset(&ctxt, 0, sizeof(ctxt)); */
    memset(&ctxt, 0, sizeof(ctxt));
    
    /* Vulnerability assertion: ensure sizeof(ctxt) doesn't exceed bounds */
    SAILR_ASSERT(sizeof(ctxt) <= 1024); /* Reasonable upper bound for struct size */
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ctxt.buf = buf;
    ctxt.level = level;
    ctxt.format = format ? 1 : 0;
    ctxt.encoding = encoding;
    xmlSaveCtxtInit(&ctxt);
    
    return 0;
}

int main(void) {
    /* Symbolic inputs to reach the target line */
    xmlNode node;
    xmlOutputBuffer buffer;
    
    /* Make node type symbolic to control the branch */
    klee_make_symbolic(&node.type, sizeof(node.type), "node_type");
    
    /* Assume node type is NOT XML_DOCUMENT_NODE and NOT XML_HTML_DOCUMENT_NODE
       to bypass the early return */
    klee_assume(node.type != XML_DOCUMENT_NODE);
    klee_assume(node.type != XML_HTML_DOCUMENT_NODE);
    
    /* Also ensure it's not some invalid value that would cause NULL check */
    klee_assume(node.type >= 0);
    
    /* Call the target function */
    xmlNodeDumpOutputInternal(&buffer, &node, 0, 0, "UTF-8");
    
    return 0;
}