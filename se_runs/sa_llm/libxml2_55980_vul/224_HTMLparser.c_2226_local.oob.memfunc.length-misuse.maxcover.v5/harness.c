#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal structures to match the original code */
typedef struct _xmlEntity {
    char *name;
} xmlEntity;

/* Stub for the function containing the target line */
int htmlEncodeEntities(unsigned char *out, int *outlen,
                       const unsigned char *in, int *inlen,
                       int quoteChar, int *next) {
    /* Simplified version focusing on the vulnerable path */
    unsigned char *outstart = out;
    unsigned char *outend = out + *outlen;
    const unsigned char *instart = in;
    const unsigned char *processed = in;
    
    /* Variables from the snippet */
    char *cp;
    int len;
    xmlEntity *ent = NULL;
    
    /* Make ent symbolic to allow non-NULL path */
    klee_make_symbolic(&ent, sizeof(ent), "ent");
    klee_assume(ent != NULL);  /* Avoid null deref */
    
    /* Make ent->name symbolic */
    char ent_name[256];
    klee_make_symbolic(ent_name, sizeof(ent_name), "ent_name");
    ent->name = ent_name;
    
    /* Path selection: choose the 'else' branch where cp = ent->name */
    int branch_choice;
    klee_make_symbolic(&branch_choice, sizeof(branch_choice), "branch_choice");
    klee_assume(branch_choice != 0);  /* Force else branch */
    
    cp = ent->name;
    len = strlen(cp);
    
    /* Ensure we don't break before the memcpy */
    klee_assume(out + 2 + len < outend);
    
    /* Write '&' */
    *out++ = '&';
    
    /* VULNERABILITY ASSERTION: Check that memcpy won't overflow destination */
    /* Condition: len <= (outend - out) */
    SAILR_ASSERT(len <= (outend - out));
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memcpy (unreachable due to klee_assert above) */
    memcpy(out, cp, len);
    
    /* Rest of function (unreachable) */
    out += len;
    *out++ = ';';
    processed = in;
    *outlen = out - outstart;
    *inlen = processed - instart;
    return 0;
}

int main(void) {
    /* Allocate and initialize buffers */
    unsigned char out_buf[1024];
    unsigned char in_buf[1024];
    int outlen = sizeof(out_buf);
    int inlen = sizeof(in_buf);
    int next = 0;
    
    /* Make input symbolic */
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");
    
    /* Call the function with symbolic inputs */
    htmlEncodeEntities(out_buf, &outlen, in_buf, &inlen, 0, &next);
    
    return 0;
}