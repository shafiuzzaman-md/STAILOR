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
#define TOKEN_BUF_SIZE 1024
#define TOKEN2_BUF_SIZE 1024


/* --- Embedded Helpers --- */
/* --- Embedded Functions --- */
/* None needed */


/* --- Harness Preamble --- */
/* --- Harness --- */
// #include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

#ifndef BUG_ASSERT
// #define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
// #define klee_assert(0 && "REACH_ASSERT")
#endif

typedef struct xmlAutomata {
    int dummy;
} xmlAutomata;
typedef struct xmlAutomataState {
    int dummy;
} xmlAutomataState;

extern xmlAutomataState *xmlAutomataNewCountTrans2(xmlAutomata *am, xmlAutomataState *from,
                         xmlAutomataState *to, const char *token,
                         const char *token2,
                         int min, int max, void *data);



/* --- Fuzzer Entrypoint --- */
int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    size_t _consumed = 0;

    /* Concrete allocations for am and from */
    xmlAutomata am;
    xmlAutomataState from;
    xmlAutomataState *to = NULL;
    void *data = NULL;
    int min = 1;
    int max = 1;
    
    /* Symbolic token buffers */
    char token_str[TOKEN_BUF_SIZE];
    char token2_str[TOKEN2_BUF_SIZE];
    
    /* mapped token_str */
    if (Size < _consumed + sizeof(token_str)) return 0;
    memcpy(token_str, Data + _consumed, sizeof(token_str));
    _consumed += sizeof(token_str);
    /* mapped token2_str */
    if (Size < _consumed + sizeof(token2_str)) return 0;
    memcpy(token2_str, Data + _consumed, sizeof(token2_str));
    _consumed += sizeof(token2_str);
    
    /* Ensure null termination to avoid infinite strlen */
    token_str[sizeof(token_str) - 1] = '\0';
    token2_str[sizeof(token2_str) - 1] = '\0';
    
    /* Filter short strings to avoid trivial paths */
    size_t len_token = strlen(token_str);
    size_t len_token2 = strlen(token2_str);
    if (len_token <= 64) return 0;
    if (len_token2 <= 64) return 0;
    
    /* Filter overly long strings for performance */
    if (len_token >= 128) return 0;
    if (len_token2 >= 128) return 0;
    
    /* Ensure token2 is non-empty (as per constraints) */
    if (token2_str[0] == '\0') return 0;
    
    /* Call the target function */
    xmlAutomataState *result = xmlAutomataNewCountTrans2(&am, &from, to, token_str, token2_str, min, max, data);
    
    /* as a safe landing marker (oracle is crash) */
    
    
    
    return 0;

}