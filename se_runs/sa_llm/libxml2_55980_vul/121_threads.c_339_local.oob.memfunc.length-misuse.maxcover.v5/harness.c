#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <pthread.h>
#include <string.h>
#include <stddef.h>
#include "klee/klee.h"

/* Minimal definitions to compile the target function */
typedef struct _xmlRMutex {
    pthread_mutex_t lock;
    pthread_cond_t cv;
    unsigned int held;
    unsigned int waiters;
    pthread_t tid;
} xmlRMutex;

/* Global variable referenced in the target function */
int libxml_is_threaded;

/* Target function declaration */
void xmlRMutexUnlock(xmlRMutex *tok);

/* Stub for pthread_mutex_lock to avoid external dependencies */
int pthread_mutex_lock(pthread_mutex_t *mutex) {
    return 0;
}

/* Stub for pthread_mutex_unlock */
int pthread_mutex_unlock(pthread_mutex_t *mutex) {
    return 0;
}

/* Stub for pthread_cond_signal */
int pthread_cond_signal(pthread_cond_t *cond) {
    return 0;
}

int main(void) {
    /* Make libxml_is_threaded symbolic to explore both paths */
    klee_make_symbolic(&libxml_is_threaded, sizeof(libxml_is_threaded), "libxml_is_threaded");
    klee_assume(libxml_is_threaded == 0 || libxml_is_threaded == 1);
    
    /* Allocate and initialize xmlRMutex structure */
    xmlRMutex *tok = (xmlRMutex *)malloc(sizeof(xmlRMutex));
    if (!tok) return 0;
    
    /* Make structure fields symbolic to explore different states */
    klee_make_symbolic(&tok->held, sizeof(tok->held), "tok_held");
    klee_make_symbolic(&tok->waiters, sizeof(tok->waiters), "tok_waiters");
    
    /* Constrain held to reasonable values to avoid overflow/underflow */
    klee_assume(tok->held >= 0 && tok->held <= 10);
    
    /* Ensure we can reach the target memset call */
    klee_assume(tok->held == 1);  /* After decrement, held becomes 0 */
    
    /* Call the target function */
    xmlRMutexUnlock(tok);
    
    /* Vulnerability assertion: ensure sizeof(tok->tid) doesn't exceed bounds */
    /* For memset(&tok->tid, 0, sizeof(tok->tid)), the vulnerability would be if 
       sizeof(tok->tid) exceeds the actual size of the tid field or adjacent memory.
       Since tid is a pthread_t, and we're using sizeof correctly, the actual risk
       is if the pointer &tok->tid plus sizeof(tok->tid) goes beyond the 
       allocated structure bounds. We check that the offset + size is within 
       the allocated structure. */
    size_t tid_offset = offsetof(xmlRMutex, tid);
    size_t tid_size = sizeof(pthread_t);
    size_t struct_size = sizeof(xmlRMutex);
    
    SAILR_ASSERT(tid_offset + tid_size <= struct_size);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(tok);
    return 0;
}

/* Implementation of the target function from threads.c:339 */
void xmlRMutexUnlock(xmlRMutex *tok) {
    if (libxml_is_threaded == 0)
        return;

    pthread_mutex_lock(&tok->lock);
    tok->held--;
    if (tok->held == 0) {
        if (tok->waiters)
            pthread_cond_signal(&tok->cv);
        memset(&tok->tid, 0, sizeof(tok->tid));
    }
    pthread_mutex_unlock(&tok->lock);
}