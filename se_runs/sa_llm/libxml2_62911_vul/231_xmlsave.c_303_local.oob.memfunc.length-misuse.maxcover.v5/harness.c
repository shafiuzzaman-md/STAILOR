#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define MAX_INDENT 80

typedef struct _xmlSaveCtxt {
    char indent[MAX_INDENT + 1];
    int indent_size;
    int indent_nr;
} xmlSaveCtxt;

extern char xmlTreeIndentString[];

void xmlNodeDumpOutputInternal(xmlSaveCtxt* ctxt, int len) {
    int i;
    
    if (len <= 0) {
        memset(&ctxt->indent[0], 0, MAX_INDENT + 1);
    } else {
        ctxt->indent_size = len;
        ctxt->indent_nr = MAX_INDENT / ctxt->indent_size;
        for (i = 0; i < ctxt->indent_nr; i++) {
            memcpy(&ctxt->indent[i * ctxt->indent_size], xmlTreeIndentString,
                   ctxt->indent_size);
        }
        ctxt->indent[ctxt->indent_nr * ctxt->indent_size] = 0;
    }
}

int main(void) {
    xmlSaveCtxt* ctxt = (xmlSaveCtxt*)malloc(sizeof(xmlSaveCtxt));
    if (!ctxt) return 0;
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(len > 0);
    klee_assume(len <= MAX_INDENT);
    
    xmlNodeDumpOutputInternal(ctxt, len);
    
    SAILR_ASSERT(ctxt->indent_nr * ctxt->indent_size <= MAX_INDENT);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(ctxt);
    return 0;
}