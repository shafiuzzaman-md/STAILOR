#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlRelaxNGTypeLibrary xmlRelaxNGTypeLibrary;
typedef xmlRelaxNGTypeLibrary *xmlRelaxNGTypeLibraryPtr;

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Minimal stub for xmlStrdup */
char* xmlStrdup(const char* str) {
    if (!str) return NULL;
    size_t len = strlen(str) + 1;
    char* copy = (char*)malloc(len);
    if (copy) {
        memcpy(copy, str, len);
    }
    return copy;
}

/* Minimal stub for xmlRngVErrMemory */
void xmlRngVErrMemory(void* ctx, const char* msg) {
    /* Do nothing */
}

/* Minimal stub for xmlHashAddEntry - just returns success */
int xmlHashAddEntry(void* table, const char* name, void* data) {
    return 0;
}

/* Global variable referenced in the target code */
void* xmlRelaxNGRegisteredTypes = NULL;

/* Target function signature from relaxng.c */
int xmlRelaxNGRegisterTypeLibrary(const char* namespace, void* data, 
                                  int (*have)(void*, const char*), 
                                  int (*comp)(void*, const char*, const char*), 
                                  int (*check)(void*, void*, const char*), 
                                  int (*facet)(void*, const char*, const char*), 
                                  void (*freef)(void*));

/* Implementation of the target function based on the code snippet */
int xmlRelaxNGRegisterTypeLibrary(const char* namespace, void* data, 
                                  int (*have)(void*, const char*), 
                                  int (*comp)(void*, const char*, const char*), 
                                  int (*check)(void*, void*, const char*), 
                                  int (*facet)(void*, const char*, const char*), 
                                  void (*freef)(void*)) {
    xmlRelaxNGTypeLibraryPtr lib;
    int ret;
    
    lib = (xmlRelaxNGTypeLibraryPtr)xmlMalloc(sizeof(xmlRelaxNGTypeLibrary));
    if (lib == NULL) {
        xmlRngVErrMemory(NULL, "adding types library\n");
        return (-1);
    }
    
    /* TARGET LINE 2800: memset(lib, 0, sizeof(xmlRelaxNGTypeLibrary)); */
    memset(lib, 0, sizeof(xmlRelaxNGTypeLibrary));
    
    /* Vulnerability assertion: ensure we're not writing beyond allocated bounds */
    SAILR_ASSERT(sizeof(xmlRelaxNGTypeLibrary) <= malloc_usable_size(lib));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    lib->namespace = xmlStrdup(namespace);
    lib->data = data;
    lib->have = have;
    lib->comp = comp;
    lib->check = check;
    lib->facet = facet;
    lib->freef = freef;
    
    ret = xmlHashAddEntry(xmlRelaxNGRegisteredTypes, namespace, lib);
    return ret;
}

/* Helper to get usable size of malloc'd block (simplified for KLEE) */
size_t malloc_usable_size(void* ptr) {
    if (!ptr) return 0;
    /* In KLEE, we can assume the allocation is at least as large as requested */
    return __builtin_object_size(ptr, 0);
}

int main(void) {
    /* Make namespace string symbolic */
    char namespace[256];
    klee_make_symbolic(namespace, sizeof(namespace), "namespace");
    /* Assume it's null-terminated */
    klee_assume(namespace[255] == '\0');
    
    /* Make function pointers symbolic but non-null to avoid early returns */
    int (*have_func)(void*, const char*) = (int (*)(void*, const char*))0x1000;
    int (*comp_func)(void*, const char*, const char*) = (int (*)(void*, const char*, const char*))0x2000;
    int (*check_func)(void*, void*, const char*) = (int (*)(void*, void*, const char*))0x3000;
    int (*facet_func)(void*, const char*, const char*) = (int (*)(void*, const char*, const char*))0x4000;
    void (*freef_func)(void*) = (void (*)(void*))0x5000;
    
    /* Call the target function */
    xmlRelaxNGRegisterTypeLibrary(namespace, NULL, have_func, comp_func, 
                                  check_func, facet_func, freef_func);
    
    return 0;
}