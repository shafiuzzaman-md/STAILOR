#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlModule xmlModule;
typedef void* xmlModulePtr;

/* Stub for xmlModulePlatformOpen */
void* xmlModulePlatformOpen(const char* name) {
    /* Return symbolic pointer that could be NULL or non-NULL */
    void* handle;
    klee_make_symbolic(&handle, sizeof(handle), "handle");
    klee_assume(handle == NULL || handle != NULL);
    return handle;
}

/* Stub for xmlModuleErrMemory */
void xmlModuleErrMemory(void* context, const char* msg) {
    /* Do nothing */
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    /* Do nothing */
}

/* Target function: xmlModuleOpen */
xmlModulePtr xmlModuleOpen(const char* name) {
    xmlModulePtr module;
    
    /* Allocate module */
    module = (xmlModulePtr)malloc(sizeof(xmlModule));
    if (module == NULL) {
        xmlModuleErrMemory(NULL, "creating module");
        return (NULL);
    }

    /* TARGET LINE 90: memset(module, 0, sizeof(xmlModule)); */
    /* Vulnerability assertion: ensure we don't write beyond allocated bounds */
    /* The SA rule is about length-misuse in memset - we need to ensure */
    /* that sizeof(xmlModule) doesn't exceed the actual allocated size */
    SAILR_ASSERT(sizeof(xmlModule) <= malloc_usable_size(module));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(module, 0, sizeof(xmlModule));

    module->handle = xmlModulePlatformOpen(name);

    if (module->handle == NULL) {
        xmlFree(module);
        return NULL;
    }

    return module;
}

/* Main harness */
int main(void) {
    /* Make symbolic input for xmlModuleOpen parameter */
    char name[256];
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Call the target function */
    xmlModulePtr result = xmlModuleOpen(name);
    
    /* Clean up if needed */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}