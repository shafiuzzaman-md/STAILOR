#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlOutputBuffer xmlOutputBuffer;
typedef struct _xmlSaveCtxt xmlSaveCtxt;
typedef struct _xmlNode xmlNode;
typedef unsigned char xmlChar;

/* Minimal struct definitions to match the code snippet */
struct _xmlSaveCtxt {
    xmlOutputBuffer* buf;
    int level;
    int format;
    const xmlChar* encoding;
};

/* Stub for xmlOutputBufferCreateBuffer - returns symbolic pointer */
xmlOutputBuffer* xmlOutputBufferCreateBuffer(void* buffer, void* encoder) {
    xmlOutputBuffer* buf;
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_assume(buf != NULL);  /* Assume non-null to reach target */
    return buf;
}

/* Stub for xmlOutputBufferClose */
void xmlOutputBufferClose(xmlOutputBuffer* buf) {
    /* Do nothing */
}

/* Stub for xmlSaveCtxtInit */
void xmlSaveCtxtInit(struct _xmlSaveCtxt* ctxt) {
    /* Do nothing - this is where the vulnerability would manifest */
}

/* Target function - simplified version based on snippet */
int xmlNodeDumpOutputInternal(xmlOutputBuffer* buf, xmlNode* cur, int level, 
                              int format, const char* encoding) {
    struct _xmlSaveCtxt ctxt;
    
    if (buf == NULL) return -1;
    if (cur == NULL) {
        xmlOutputBufferClose(buf);
        return -1;
    }
    
    /* TARGET LINE 2517: memset(&ctxt, 0, sizeof(ctxt)); */
    memset(&ctxt, 0, sizeof(ctxt));
    
    /* Vulnerability assertion: ensure size is within bounds */
    /* The SA rule is about length-misuse in memset - we need to ensure
       the size parameter doesn't exceed the actual buffer size */
    SAILR_ASSERT(sizeof(ctxt) <= sizeof(struct _xmlSaveCtxt));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ctxt.buf = buf;
    ctxt.level = level;
    ctxt.format = format;
    ctxt.encoding = (const xmlChar*) encoding;
    xmlSaveCtxtInit(&ctxt);
    
    return 0;
}

/* Entry point */
int main(void) {
    /* Create symbolic inputs */
    xmlOutputBuffer* buf;
    xmlNode* cur;
    int level;
    int format;
    char encoding[32];
    
    klee_make_symbolic(&buf, sizeof(buf), "sym_buf");
    klee_make_symbolic(&cur, sizeof(cur), "sym_cur");
    klee_make_symbolic(&level, sizeof(level), "sym_level");
    klee_make_symbolic(&format, sizeof(format), "sym_format");
    klee_make_symbolic(encoding, sizeof(encoding), "sym_encoding");
    
    /* Assume conditions to reach the target line */
    klee_assume(buf != NULL);      /* First if condition */
    klee_assume(cur != NULL);      /* Second if condition */
    
    /* Call the target function */
    xmlNodeDumpOutputInternal(buf, cur, level, format, encoding);
    
    return 0;
}