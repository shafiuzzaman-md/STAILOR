#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlEntity {
    char *name;
} xmlEntity;

typedef struct _xmlParserCtxt {
    int inputNr;
} xmlParserCtxt;

typedef struct _xmlParserInput {
    char *cur;
    char *end;
} xmlParserInput;

static void htmlParseComment(xmlParserCtxt *ctxt) {
    char *in, *out, *outend;
    xmlEntity *ent;
    char *cp;
    int len;
    int processed;
    
    in = ctxt->inputNr > 0 ? ((xmlParserInput*)0)->cur : (char*)0;
    out = (char*)malloc(256);
    outend = out + 256;
    ent = (xmlEntity*)malloc(sizeof(xmlEntity));
    
    klee_make_symbolic(&ent->name, sizeof(char*), "ent_name");
    klee_assume(ent->name != NULL);
    
    cp = ent->name;
    len = strlen(cp);
    
    if (outend - out < len + 2) {
        free(out);
        free(ent);
        return;
    }
    
    *out++ = '&';
    
    SAILR_ASSERT(len <= (outend - out));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memcpy(out, cp, len);
    out += len;
    *out++ = ';';
    
    processed = (int)(in - (char*)0);
    
    free(out - len - 2);
    free(ent);
}

int main(void) {
    xmlParserCtxt ctxt;
    
    klee_make_symbolic(&ctxt.inputNr, sizeof(int), "inputNr");
    klee_assume(ctxt.inputNr >= 0);
    
    htmlParseComment(&ctxt);
    
    return 0;
}