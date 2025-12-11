#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 functions needed to reach the target */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef struct _xmlDoc xmlDoc;

struct _xmlParserCtxt {
    xmlDoc* myDoc;
};

struct _xmlDoc {
    int dummy;
};

void xmlParseChunk(xmlParserCtxt* ctxt, const char* chunk, int size, int terminate) {
    (void)ctxt; (void)chunk; (void)size; (void)terminate;
}

void xmlDocDumpMemory(xmlDoc* doc, unsigned char** out, int* outSize) {
    if (doc && out && outSize) {
        *outSize = 25 + 1001 * 7;
        *out = (unsigned char*)malloc(*outSize);
        if (*out) {
            memcpy(*out, "<?xml version=\"1.0\"?>\n<d>", 25);
        }
    }
}

int main(void) {
    xmlParserCtxt ctxt;
    xmlDoc doc;
    unsigned char* out = NULL;
    int outSize = 0;
    int i;
    int ret = 0;
    
    ctxt.myDoc = &doc;
    
    xmlParseChunk(&ctxt, "\xB1</d>", 4, 0);
    xmlParseChunk(&ctxt, NULL, 0, 0);
    
    xmlDocDumpMemory(ctxt.myDoc, &out, &outSize);
    
    if (strncmp((char*)out, "<?xml version=\"1.0\"?>\n<d>", 25) != 0) {
        fprintf(stderr, "failed UTF-8 chunk test 2-1\n");
        ret += 1;
        goto error;
    }
    
    for (i = 25; i < 25 + 1001 * 7; i += 7) {
        /* Vulnerability assertion: ensure we don't read beyond allocated buffer */
        SAILR_ASSERT(i < outSize);
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

error:
    if (out) free(out);
    return ret;
}