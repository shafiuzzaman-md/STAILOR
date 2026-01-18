#include <klee/klee.h>
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
typedef unsigned char xmlChar;
typedef struct xmlAutomata xmlAutomata;
typedef struct xmlAutomataState xmlAutomataState;

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

/* Stub for xmlMalloc - forward to malloc */
void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_xmlMalloc

/* Stub for xmlStrdup - forward to strdup */
xmlChar* stub_xmlStrdup(const xmlChar* str) {
    return (xmlChar*)strdup((const char*)str);
}
#define xmlStrdup stub_xmlStrdup

/* Stub for xmlRegNewAtom - returns non-NULL */
void* stub_xmlRegNewAtom(void* am, int type) {
    static char dummy_atom[256];
    return (void*)dummy_atom;
}
#define xmlRegNewAtom stub_xmlRegNewAtom

/* Stub for xmlRegGetCounter - returns non-negative */
int stub_xmlRegGetCounter(void* am) {
    return 0;
}
#define xmlRegGetCounter stub_xmlRegGetCounter

/* Stub for xmlRegStatePush - returns non-NULL */
void* stub_xmlRegStatePush(void* am) {
    static char dummy_state[256];
    return (void*)dummy_state;
}
#define xmlRegStatePush stub_xmlRegStatePush

/* Stub for xmlRegAtomPush - returns non-negative */
int stub_xmlRegAtomPush(void* am, void* atom) {
    return 0;
}
#define xmlRegAtomPush stub_xmlRegAtomPush

/* Stub for xmlRegStateAddTrans - ignore side effects */
void stub_xmlRegStateAddTrans(void* am, void* from, void* atom, void* to, int counter, int other) {
    return;
}
#define xmlRegStateAddTrans stub_xmlRegStateAddTrans

/* Stub for xmlFAGenerateEpsilonTransition - ignore side effects */
void stub_xmlFAGenerateEpsilonTransition(void* am, void* from, void* to) {
    return;
}
#define xmlFAGenerateEpsilonTransition stub_xmlFAGenerateEpsilonTransition

/* Stub for xmlRegFreeAtom - ignore side effects */
void stub_xmlRegFreeAtom(void* atom) {
    return;
}
#define xmlRegFreeAtom stub_xmlRegFreeAtom

/* --- Embedded Functions --- */
#include <string.h>
#include <stdlib.h>

/* --- Harness --- */
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declaration of the target function */
xmlAutomataState* xmlAutomataNewCountTrans2(xmlAutomata *am, xmlAutomataState *from,
                                           xmlAutomataState *to, const xmlChar *token,
                                           const xmlChar *token2,
                                           int min, int max, void *data);

int main(int argc, char **argv) {
    /* Allocate concrete buffers for token strings */
    char token_buf[256];
    char token2_buf[256];
    
    /* Make buffers symbolic */
    klee_make_symbolic(token_buf, sizeof(token_buf), "token_buf");
    klee_make_symbolic(token2_buf, sizeof(token2_buf), "token2_buf");
    
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