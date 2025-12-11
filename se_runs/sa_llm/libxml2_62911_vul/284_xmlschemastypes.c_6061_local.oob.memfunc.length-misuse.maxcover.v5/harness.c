#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlSchemaValDecimal {
    int total;
    char *offs;
} xmlSchemaValDecimal;

/* Stub for xmlSchemaInitTypes - we only need the path to the vulnerable code */
void xmlSchemaInitTypes(void) {
    /* This function would normally initialize types, but we just need to 
       reach the vulnerable code path in xmlSchemaValDecimalNormalize */
}

/* Function containing the vulnerable code - reconstructed from snippet */
void xmlSchemaValDecimalNormalize(xmlSchemaValDecimal *dec) {
    if (dec && dec->offs) {
        int i = 0;
        /* Find null terminator */
        while (*(dec->offs + i) != 0)
            i++;
        
        if (i < dec->total) {
            /* VULNERABLE LINE: memmove(offs + (dec.total - i), offs, i +1); */
            /* TARGET: line 6061 in xmlschemastypes.c */
            
            /* Vulnerability assertion: ensure memmove doesn't go OOB */
            /* dec->total - i is the destination offset, i+1 is the length */
            /* We need to ensure: (dec->total - i) + (i + 1) <= buffer_size */
            /* Since we don't know buffer_size, we assume dec->total represents 
               the allocated size and check that we don't exceed it */
            SAILR_ASSERT((dec->total - i) + (i + 1) <= dec->total);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* Actual vulnerable operations (would execute if not for klee_assert) */
            memmove(dec->offs + (dec->total - i), dec->offs, i + 1);
            memset(dec->offs, '0', dec->total - i);
        }
    }
}

/* Entry point */
int main(void) {
    /* Symbolic decimal structure */
    xmlSchemaValDecimal dec;
    
    /* Symbolic total field - represents buffer size */
    klee_make_symbolic(&dec.total, sizeof(dec.total), "dec.total");
    /* Assume reasonable bounds for total */
    klee_assume(dec.total >= 0 && dec.total <= 1024);
    
    /* Allocate buffer based on total */
    dec.offs = (char*)malloc(dec.total + 1); /* +1 for null terminator */
    if (!dec.offs) return 0;
    
    /* Make buffer contents symbolic */
    klee_make_symbolic(dec.offs, dec.total + 1, "dec.offs");
    
    /* Ensure null termination somewhere within buffer */
    int null_pos;
    klee_make_symbolic(&null_pos, sizeof(null_pos), "null_pos");
    klee_assume(null_pos >= 0 && null_pos < dec.total);
    dec.offs[null_pos] = 0;
    
    /* Call the vulnerable function */
    xmlSchemaValDecimalNormalize(&dec);
    
    /* Cleanup */
    free(dec.offs);
    
    return 0;
}