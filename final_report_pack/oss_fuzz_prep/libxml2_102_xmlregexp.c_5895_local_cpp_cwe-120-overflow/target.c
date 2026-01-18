// [STAILOR] Auto-converted for OSS-Fuzz Verification (C Mode)
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>

/* --- Safe Macro Shims --- */
#define klee_assert(x) assert(x)
#define BUG_ASSERT(x) assert(x)
#define REACH_ASSERT()
#define klee_assume(x)

/* --- Globals --- */
/* --- Global Constants --- */
typedef unsigned char xmlChar;
typedef struct xmlAutomata xmlAutomata;
typedef struct xmlAutomataState xmlAutomataState;


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
#include <string.h>
#include <stdlib.h>


/* --- Harness Preamble --- */
/* --- Harness --- */
#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
xmlAutomataState* xmlAutomataNewCountTrans2(xmlAutomata *am, xmlAutomataState *from,
                                           xmlAutomataState *to, const xmlChar *token,
                                           const xmlChar *token2,
                                           int min, int max, void *data);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Allocate concrete buffers for token strings */
    char token_buf[256];
    char token2_buf[256];
    
    /* Make buffers symbolic */
    /* mapped token_buf */
    if (Size < _consumed + sizeof(token_buf)) return 0;
    memcpy(token_buf, Data + _consumed, sizeof(token_buf));
    _consumed += sizeof(token_buf);
    /* mapped token2_buf */
    if (Size < _consumed + sizeof(token2_buf)) return 0;
    memcpy(token2_buf, Data + _consumed, sizeof(token2_buf));
    _consumed += sizeof(token2_buf);
    
    /* Null-terminate to prevent OOB reads in strlen */
    token_buf[sizeof(token_buf) - 1] = '\0';
    token2_buf[sizeof(token2_buf) - 1] = '\0';
    
    /* Filter strings for performance and to reach vulnerable path */
    if (strlen(token_buf) <= 64) return 0;
    if (strlen(token_buf) >= 128) return 0;
    if (strlen(token2_buf) <= 64) return 0;
    if (strlen(token2_buf) >= 128) return 0;
    
    /* Ensure token2 is non-empty as required by the bug path */
    if (strlen(token2_buf) <= 0) return 0;
    
    /* Create dummy automata and state objects */
    /* Use simple allocations - don't try to access internal fields */
    xmlAutomata *am = (xmlAutomata*)malloc(1);
    xmlAutomataState *from = (xmlAutomataState*)malloc(1);
    xmlAutomataState *to = NULL;
    
    /* Ensure allocations succeeded */
    if (!am || !from) return 0;
    
    /* Call the target function */
    xmlAutomataState *result = xmlAutomataNewCountTrans2(
        am, from, to, 
        (const xmlChar*)token_buf, 
        (const xmlChar*)token2_buf,
        1, 1, NULL
    );
    
    /* Post-call landing marker - if we reach here without crash, bug didn't happen */
    
    
    
    return 0;

}