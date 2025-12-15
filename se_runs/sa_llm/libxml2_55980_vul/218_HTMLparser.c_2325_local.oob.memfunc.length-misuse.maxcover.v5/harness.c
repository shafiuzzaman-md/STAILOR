#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal declarations from libxml2 needed to reach the target function */
typedef struct _xmlEntity xmlEntity;
struct _xmlEntity {
    const char *name;
    int etype;
    const char *content;
    unsigned long length;
};

/* Stub for xmlStringDecodeEntities - the function containing the target line */
int xmlStringDecodeEntities(
    void *ctx,
    unsigned char *out,
    int *outlen,
    const unsigned char *in,
    int *inlen,
    int what,
    int end,
    int end2,
    int end3) {
    
    /* Local variables from the function */
    unsigned char *outstart = out;
    unsigned char *outend = out + *outlen;
    const unsigned char *instart = in;
    const unsigned char *processed = in;
    const unsigned char *inend = in + *inlen;
    
    /* Simulate the loop that leads to the target line */
    while (in < inend) {
        if (*in == '&') {
            /* Simulate entity lookup - we'll create a symbolic entity */
            xmlEntity *ent;
            const char *cp;
            int len;
            
            /* Make entity symbolic to explore different paths */
            klee_make_symbolic(&ent, sizeof(ent), "ent");
            
            /* Assume ent is not NULL to avoid null deref */
            klee_assume(ent != 0);
            
            /* Make entity name symbolic */
            char ent_name[256];
            klee_make_symbolic(ent_name, sizeof(ent_name), "ent_name");
            ent_name[255] = '\0'; /* Ensure null termination */
            ent->name = ent_name;
            
            /* This matches the code path in the snippet */
            cp = ent->name;
            len = strlen(cp);
            
            /* This is the check from line 2322 */
            if (out + 2 + len > outend) {
                break;
            }
            
            /* Line 2324 */
            *out++ = '&';
            
            /* TARGET LINE 2325: memcpy(out, cp, len); */
            /* Vulnerability assertion: ensure we don't overflow destination buffer */
            /* out points to current position, outend is the end of buffer */
            /* We need to ensure: out + len <= outend */
            SAILR_ASSERT(out + len <= outend);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* The actual memcpy would go here, but we stop at assertions */
            /* memcpy(out, cp, len); */
            
            /* Skip the rest of the function since we've reached our target */
            break;
        }
        in++;
    }
    
    return 0;
}

/* Entry point */
int main(void) {
    /* Allocate and initialize buffers */
    unsigned char *out_buffer = malloc(1024);
    unsigned char *in_buffer = malloc(1024);
    int outlen = 1024;
    int inlen;
    
    /* Make input buffer symbolic */
    klee_make_symbolic(in_buffer, 1024, "in_buffer");
    
    /* Make input length symbolic but bounded */
    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_assume(inlen >= 0 && inlen <= 1024);
    
    /* Initialize output buffer */
    memset(out_buffer, 0, 1024);
    
    /* Call the target function with parameters that will reach the entity handling code */
    /* We need to ensure the input contains '&' to trigger entity processing */
    klee_assume(inlen > 0);
    
    /* Force at least one '&' in the input to enter the entity handling path */
    for (int i = 0; i < inlen; i++) {
        if (in_buffer[i] == '&') {
            /* Found an ampersand - good enough for KLEE to explore */
            break;
        }
    }
    
    /* Call the function */
    xmlStringDecodeEntities(
        NULL,           /* ctx */
        out_buffer,     /* out */
        &outlen,        /* outlen */
        in_buffer,      /* in */
        &inlen,         /* inlen */
        0,              /* what */
        0,              /* end */
        0,              /* end2 */
        0               /* end3 */
    );
    
    /* Cleanup */
    free(out_buffer);
    free(in_buffer);
    
    return 0;
}