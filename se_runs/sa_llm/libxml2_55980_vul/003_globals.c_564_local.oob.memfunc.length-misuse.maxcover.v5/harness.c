#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed for the target function */
typedef struct _xmlMutex xmlMutex;
typedef struct _xmlError xmlError;
typedef struct _xmlGlobalState xmlGlobalState;

/* Stub for xmlMutexLock */
void xmlMutexLock(xmlMutex* mutex) {
    /* Assume lock succeeds */
}

/* Stub for xmlMutexUnlock */
void xmlMutexUnlock(xmlMutex* mutex) {
    /* Assume unlock succeeds */
}

/* Global variables referenced in the target function */
xmlMutex* xmlThrDefMutex;
void* xmlRegisterNodeDefaultValueThrDef;
void* xmlDeregisterNodeDefaultValueThrDef;
void* xmlParserInputBufferCreateFilenameValueThrDef;
void* xmlOutputBufferCreateFilenameValueThrDef;
void* xmlStructuredErrorThrDef;
void* xmlGenericErrorContextThrDef;
void* xmlStructuredErrorContextThrDef;

/* Target function from globals.c - simplified version */
void xmlInitializeGlobalState(xmlGlobalState* gs) {
    xmlMutexLock(xmlThrDefMutex);
    
    gs->xmlRegisterNodeDefaultValue = xmlRegisterNodeDefaultValueThrDef;
    gs->xmlDeregisterNodeDefaultValue = xmlDeregisterNodeDefaultValueThrDef;
    gs->xmlParserInputBufferCreateFilenameValue = xmlParserInputBufferCreateFilenameValueThrDef;
    gs->xmlOutputBufferCreateFilenameValue = xmlOutputBufferCreateFilenameValueThrDef;
    gs->xmlStructuredError = xmlStructuredErrorThrDef;
    gs->xmlGenericErrorContext = xmlGenericErrorContextThrDef;
    gs->xmlStructuredErrorContext = xmlStructuredErrorContextThrDef;
    
    /* Target line 564: memset(&gs->xmlLastError, 0, sizeof(xmlError)); */
    /* Vulnerability assertion: ensure gs pointer is valid and xmlLastError field exists */
    SAILR_ASSERT(gs != NULL && sizeof(gs->xmlLastError) >= sizeof(xmlError));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    xmlMutexUnlock(xmlThrDefMutex);
}

/* Main harness entry point */
int main(void) {
    /* Initialize global variables */
    xmlThrDefMutex = (xmlMutex*)malloc(sizeof(xmlMutex));
    
    /* Make the global state pointer symbolic */
    xmlGlobalState* gs;
    klee_make_symbolic(&gs, sizeof(gs), "gs");
    
    /* Assume gs is a valid pointer for the function call */
    klee_assume(gs != NULL);
    
    /* Call the target function */
    xmlInitializeGlobalState(gs);
    
    /* Cleanup */
    free(xmlThrDefMutex);
    
    return 0;
}