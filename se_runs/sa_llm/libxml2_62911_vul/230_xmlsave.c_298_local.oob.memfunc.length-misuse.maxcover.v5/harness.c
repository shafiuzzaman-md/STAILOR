#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define MAX_INDENT 1024

typedef struct _xmlOutputBuffer xmlOutputBuffer;
typedef xmlOutputBuffer *xmlOutputBufferPtr;

typedef struct _xmlSaveCtxt {
    char *encoding;
    char *escape;
    char indent[MAX_INDENT + 1];
    int indent_size;
    int indent_nr;
} xmlSaveCtxt;

typedef unsigned char xmlChar;

extern xmlChar *xmlTreeIndentString;

extern int xmlStrlen(const xmlChar *str);
extern char *xmlEscapeEntities;

void xmlNodeDumpOutputInternal(xmlSaveCtxt *ctxt);

void xmlNodeDumpOutputInternal(xmlSaveCtxt *ctxt) {
    int len;
    int i;
    
    if (ctxt == NULL) return;
    if ((ctxt->encoding == NULL) && (ctxt->escape == NULL))
        ctxt->escape = xmlEscapeEntities;
    len = xmlStrlen((xmlChar *)xmlTreeIndentString);
    if ((xmlTreeIndentString == NULL) || (len == 0)) {
        memset(&ctxt->indent[0], 0, MAX_INDENT + 1);
    } else {
        ctxt->indent_size = len;
        ctxt->indent_nr = MAX_INDENT / ctxt->indent_size;
        for (i = 0; i < ctxt->indent_nr; i++) {
            if (i == ctxt->indent_nr - 1) {
                SAILR_ASSERT(ctxt->indent_size * (i + 1) <= MAX_INDENT);
                klee_assert(0 && "SAILR_REACH_ASSERT");
            }
            memcpy(&ctxt->indent[i * ctxt->indent_size], xmlTreeIndentString, ctxt->indent_size);
        }
    }
}

int main(void) {
    xmlSaveCtxt *ctxt = malloc(sizeof(xmlSaveCtxt));
    if (!ctxt) return 0;
    
    klee_make_symbolic(ctxt, sizeof(xmlSaveCtxt), "ctxt");
    
    klee_assume(ctxt != NULL);
    klee_assume(ctxt->encoding == NULL);
    klee_assume(ctxt->escape == NULL);
    
    xmlTreeIndentString = malloc(256);
    klee_make_symbolic(xmlTreeIndentString, 256, "xmlTreeIndentString");
    
    klee_assume(xmlTreeIndentString != NULL);
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    klee_assume(len <= 256);
    
    xmlNodeDumpOutputInternal(ctxt);
    
    free(xmlTreeIndentString);
    free(ctxt);
    return 0;
}