#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define MAX_INDENT 80

typedef struct _xmlSaveCtxt {
    int escape;
    int indent_size;
    int indent_nr;
    char indent[MAX_INDENT + 1];
    int options;
} xmlSaveCtxt;

extern char *xmlTreeIndentString;

int xmlStrlen(const char *str) {
    if (!str) return 0;
    return strlen(str);
}

void xmlSaveCtxtInit(xmlSaveCtxt *ctxt) {
    int i, len;
    
    ctxt->escape = 0;
    
    len = xmlStrlen((char *)xmlTreeIndentString);
    if ((xmlTreeIndentString == NULL) || (len == 0)) {
        memset(&ctxt->indent[0], 0, MAX_INDENT + 1);
    } else {
        ctxt->indent_size = len;
        ctxt->indent_nr = MAX_INDENT / ctxt->indent_size;
        for (i = 0; i < ctxt->indent_nr; i++) {
            SAILR_ASSERT(i * ctxt->indent_size + ctxt->indent_size <= MAX_INDENT);
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(&ctxt->indent[i * ctxt->indent_size], xmlTreeIndentString,
                   ctxt->indent_size);
        }
        ctxt->indent[ctxt->indent_nr * ctxt->indent_size] = 0;
    }
    
    ctxt->options = 0;
}

int main(void) {
    xmlSaveCtxt ctxt;
    
    xmlTreeIndentString = malloc(MAX_INDENT + 1);
    klee_make_symbolic(xmlTreeIndentString, MAX_INDENT + 1, "xmlTreeIndentString");
    
    int len = xmlStrlen(xmlTreeIndentString);
    klee_assume(len > 0);
    klee_assume(len <= MAX_INDENT);
    
    xmlSaveCtxtInit(&ctxt);
    
    free(xmlTreeIndentString);
    return 0;
}