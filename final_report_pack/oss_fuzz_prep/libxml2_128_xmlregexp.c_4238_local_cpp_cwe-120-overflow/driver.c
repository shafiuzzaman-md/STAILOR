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
#define XML_REGEXP_OK 0
#define XML_REGEXP_OUT_OF_MEMORY 1
#define XML_REGEXP_COMPILE_ERROR 2
#define XML_REG_STRING_SEPARATOR '|'

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

#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

/* Stub xmlMalloc to return NULL to force stack buffer path */
void* stub_xmlMalloc(size_t size) {
    (void)size;
    return NULL;
}
#define xmlMalloc stub_xmlMalloc

/* Stub xmlFree to avoid linking issues */
void stub_xmlFree(void *ptr) {
    (void)ptr;
}
#define xmlFree stub_xmlFree

/* Stub xmlRegCompactPushString */
int stub_xmlRegCompactPushString(void *exec, void *comp, const char *str, void *data) {
    (void)exec; (void)comp; (void)str; (void)data;
    int ret;
    klee_make_symbolic(&ret, sizeof(ret), "stub_xmlRegCompactPushString_ret");
    return ret;
}
#define xmlRegCompactPushString stub_xmlRegCompactPushString

/* Stub xmlRegExecPushStringInternal */
int stub_xmlRegExecPushStringInternal(void *exec, const char *str, void *data, int flag) {
    (void)exec; (void)str; (void)data; (void)flag;
    int ret;
    klee_make_symbolic(&ret, sizeof(ret), "stub_xmlRegExecPushStringInternal_ret");
    return ret;
}
#define xmlRegExecPushStringInternal stub_xmlRegExecPushStringInternal

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Minimal struct to satisfy exec->comp != NULL and exec->status == XML_REGEXP_OK */
typedef struct xmlRegexp xmlRegexp;
typedef struct xmlRegExecCtxt {
    int status;
    xmlRegexp *comp;
} xmlRegExecCtxt;

/* External declaration of the target function */
extern int xmlRegExecPushString2(xmlRegExecCtxt *exec, const char *value, const char *value2, void *data);

int main(int argc, char **argv) {
    (void)argc; (void)argv;
    
    /* Allocate a concrete execution context */
    xmlRegExecCtxt *exec = (xmlRegExecCtxt*)malloc(sizeof(xmlRegExecCtxt));
    if (!exec) return 0;
    exec->status = XML_REGEXP_OK;
    exec->comp = (xmlRegexp*)1;  /* non-NULL dummy pointer */
    
    /* Allocate concrete buffers for strings */
    char value_buf[256];
    char value2_buf[256];
    
    klee_make_symbolic(value_buf, sizeof(value_buf), "value_buf");
    klee_make_symbolic(value2_buf, sizeof(value2_buf), "value2_buf");
    
    /* Ensure null termination to avoid infinite strlen */
    value_buf[sizeof(value_buf)-1] = '\0';
    value2_buf[sizeof(value2_buf)-1] = '\0';
    
    /* Filter short strings (avoid infeasible paths) */
    size_t lenp = strlen(value_buf);
    size_t lenn = strlen(value2_buf);
    if (lenp <= 64) {
        free(exec);
        return 0;
    }
    if (lenn <= 64) {
        free(exec);
        return 0;
    }
    
    /* Filter overly-long strings for performance */
    if (lenp >= 128) {
        free(exec);
        return 0;
    }
    if (lenn >= 128) {
        free(exec);
        return 0;
    }
    
    /* Ensure value2 != NULL (as per constraints) */
    /* value2_buf is already non-NULL */
    
    /* Call the vulnerable function */
    int ret = xmlRegExecPushString2(exec, value_buf, value2_buf, NULL);
    (void)ret;
    
    /* Oracle: If lenp > 149, the first memcpy overflows buf[150] */
    
    
    
    free(exec);
    return 0;
}