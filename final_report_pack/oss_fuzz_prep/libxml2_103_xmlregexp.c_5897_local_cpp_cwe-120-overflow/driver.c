#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define TOKEN_BUF_SIZE 1024
#define TOKEN2_BUF_SIZE 1024

/* --- Stub Functions --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* Stub xmlRegNewAtom */
void* stub_xmlRegNewAtom(void* am, int type) {
    static char dummy_atom[256];
    return (void*)&dummy_atom;
}
#define xmlRegNewAtom stub_xmlRegNewAtom

/* Stub xmlRegGetCounter */
int stub_xmlRegGetCounter(void* am) {
    return 0;
}
#define xmlRegGetCounter stub_xmlRegGetCounter

/* Stub xmlRegStatePush */
void* stub_xmlRegStatePush(void* am) {
    static char dummy_state[256];
    return (void*)&dummy_state;
}
#define xmlRegStatePush stub_xmlRegStatePush

/* Stub xmlRegAtomPush */
int stub_xmlRegAtomPush(void* am, void* atom) {
    return 0;
}
#define xmlRegAtomPush stub_xmlRegAtomPush

/* Stub xmlFAGenerateEpsilonTransition */
void stub_xmlFAGenerateEpsilonTransition(void* am, void* from, void* to) {
    return;
}
#define xmlFAGenerateEpsilonTransition stub_xmlFAGenerateEpsilonTransition

/* Stub xmlRegFreeAtom */
void stub_xmlRegFreeAtom(void* atom) {
    return;
}
#define xmlRegFreeAtom stub_xmlRegFreeAtom

/* Stub xmlStrdup */
char* stub_xmlStrdup(const char* str) {
    static char dummy[256];
    return dummy;
}
#define xmlStrdup stub_xmlStrdup

/* Stub xmlMalloc */
void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_xmlMalloc

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <string.h>
#include <stdlib.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
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

int main(int argc, char **argv) {
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
    
    klee_make_symbolic(token_str, sizeof(token_str), "token_str");
    klee_make_symbolic(token2_str, sizeof(token2_str), "token2_str");
    
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