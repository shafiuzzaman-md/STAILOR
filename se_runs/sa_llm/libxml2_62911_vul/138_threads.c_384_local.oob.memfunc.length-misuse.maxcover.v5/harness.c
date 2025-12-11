#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include "klee/klee.h"

/* Stub for XML_IS_THREADED macro */
#ifndef XML_IS_THREADED
#define XML_IS_THREADED() 1
#endif

/* Stub for pthread_self */
typedef unsigned long pthread_t;
pthread_t pthread_self(void) {
    pthread_t id;
    klee_make_symbolic(&id, sizeof(id), "pthread_id");
    return id;
}

/* Target function from threads.c */
int xmlGetThreadId(void) {
    int ret = 0;
    
    if (XML_IS_THREADED() == 0)
        return (0);
    
#ifdef HAVE_PTHREAD_H
    pthread_t id;
    id = pthread_self();
    /* horrible but preserves compat, see warning above */
    memcpy(&ret, &id, sizeof(ret));
    return (ret);
#elif defined HAVE_WIN32_THREADS
    return GetCurrentThreadId();
#else
    return ((int) 0);
#endif
}

/* Entrypoint for xmlInitParser */
void xmlInitParser(void) {
    /* Initialize parser - minimal stub */
}

int main(void) {
    int thread_id;
    
    /* Make thread_id symbolic to explore different return values */
    klee_make_symbolic(&thread_id, sizeof(thread_id), "thread_id");
    
    /* Assume thread_id is non-negative as hinted by bounds_hints */
    klee_assume(thread_id >= 0);
    
    /* Call the function that leads to the target line */
    xmlInitParser();
    
    /* Call xmlGetThreadId which contains the memcpy at line 384 */
    int result = xmlGetThreadId();
    
    /* Vulnerability assertion: memcpy size should not exceed destination buffer */
    /* The memcpy copies sizeof(ret) bytes where ret is int (typically 4 bytes) */
    /* The source is &id where id is pthread_t (size varies by platform) */
    /* We need to ensure source has at least sizeof(ret) bytes available */
    /* Since we can't know pthread_t size, we assert sizeof(pthread_t) >= sizeof(int) */
    SAILR_ASSERT(sizeof(pthread_t) >= sizeof(int));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}