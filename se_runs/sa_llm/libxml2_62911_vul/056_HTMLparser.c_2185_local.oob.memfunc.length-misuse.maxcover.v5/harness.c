#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlEntity {
    char *name;
} xmlEntity;

typedef struct _htmlParserCtxt {
    int inputNr;
} htmlParserCtxt;

int htmlCurrentChar(htmlParserCtxt *ctxt, int *in, int *out, int *outend) {
    xmlEntity *ent = NULL;
    char *cp = NULL;
    int len = 0;
    int processed = 0;
    
    if (ctxt == NULL || in == NULL || out == NULL || outend == NULL) {
        return -1;
    }
    
    klee_make_symbolic(&ent, sizeof(ent), "ent");
    klee_assume(ent != NULL);
    
    klee_make_symbolic(&ent->name, sizeof(ent->name), "ent_name");
    klee_assume(ent->name != NULL);
    
    cp = ent->name;
    len = strlen(cp);
    
    klee_make_symbolic(in, sizeof(*in), "in");
    klee_make_symbolic(out, sizeof(*out), "out");
    klee_make_symbolic(outend, sizeof(*outend), "outend");
    
    klee_assume(*in >= 0);
    klee_assume(*out >= 0);
    klee_assume(*outend >= 0);
    klee_assume(len >= 0);
    
    if (*out + 2 + len >= *outend) {
        return processed;
    }
    
    *out += 1;
    
    SAILR_ASSERT(len <= (*outend - *out));
    
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memcpy((void*)*out, cp, len);
    *out += len;
    *out += 1;
    
    processed = *in;
    return processed;
}

int main(void) {
    htmlParserCtxt ctxt;
    int in, out, outend;
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&in, sizeof(in), "main_in");
    klee_make_symbolic(&out, sizeof(out), "main_out");
    klee_make_symbolic(&outend, sizeof(outend), "main_outend");
    
    htmlCurrentChar(&ctxt, &in, &out, &outend);
    
    return 0;
}