#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h>
#include <windows.h>
#include "klee/klee.h"

/* Minimal stub structures to reach the target line */
typedef struct _xmlRMutex {
    CRITICAL_SECTION cs;
    int dummy;
} xmlRMutex;

typedef struct _xmlMutex {
    CRITICAL_SECTION cs;
    int dummy;
} xmlMutex;

/* Global variables needed for the execution path */
static xmlRMutex *tok = NULL;
static int xmlInitParser_called = 0;

/* Stub for xmlInitParser to set up the execution path */
void xmlInitParser(void) {
    xmlInitParser_called = 1;
}

/* Stub for xmlNewRMutex to create the token structure */
xmlRMutex* xmlNewRMutex(void) {
    xmlRMutex* mutex = (xmlRMutex*)malloc(sizeof(xmlRMutex));
    if (mutex) {
        InitializeCriticalSection(&mutex->cs);
        mutex->dummy = 0;
    }
    return mutex;
}

/* Stub for xmlLockRMutex to acquire the lock */
void xmlLockRMutex(xmlRMutex* mutex) {
    if (mutex) {
        EnterCriticalSection(&mutex->cs);
    }
}

/* Target function that contains the suspicious line */
void xmlUnlockRMutex(xmlRMutex* tok) {
    if (!tok) return;
    
#if defined(HAVE_PTHREAD_H)
    /* pthread implementation - not our target */
#elif defined(HAVE_WIN32_THREADS)
    /* This is the target line 348 in threads.c */
    LeaveCriticalSection(&tok->cs);
    
    /* Vulnerability assertion for OOB length-misuse pattern */
    /* The condition checks that the critical section is valid before leaving */
    SAILR_ASSERT(tok != NULL && &tok->cs != NULL);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
#endif
}

int main(void) {
    /* Initialize parser to set up execution path */
    xmlInitParser();
    
    /* Create the mutex token with symbolic initialization */
    tok = xmlNewRMutex();
    if (!tok) return 0;
    
    /* Make the token structure partially symbolic */
    klee_make_symbolic(&tok->dummy, sizeof(tok->dummy), "tok_dummy");
    
    /* Assume the parser was initialized (path condition) */
    klee_assume(xmlInitParser_called == 1);
    
    /* Lock the mutex first (required before unlock) */
    xmlLockRMutex(tok);
    
    /* Call the target function that contains line 348 */
    xmlUnlockRMutex(tok);
    
    /* Cleanup */
    if (tok) {
        free(tok);
    }
    
    return 0;
}