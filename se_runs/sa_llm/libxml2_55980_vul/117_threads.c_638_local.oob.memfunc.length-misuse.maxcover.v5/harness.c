#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include <pthread.h>
#include "klee/klee.h"

/* Forward declarations of functions we need from libxml2 */
extern int libxml_is_threaded;

/* Stub for pthread_self() that returns symbolic data */
pthread_t pthread_self(void) {
    pthread_t id;
    klee_make_symbolic(&id, sizeof(id), "pthread_t_id");
    return id;
}

/* The target function from threads.c */
int xmlGetThreadId(void) {
#ifdef HAVE_POSIX_THREADS
    pthread_t id;
    int ret;

    if (libxml_is_threaded == 0)
        return (0);
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

int main(void) {
    /* Make libxml_is_threaded symbolic to control execution path */
    klee_make_symbolic(&libxml_is_threaded, sizeof(libxml_is_threaded), "libxml_is_threaded");
    
    /* Assume we take the POSIX threads path */
    klee_assume(libxml_is_threaded != 0);
    
    /* Call the target function */
    int result = xmlGetThreadId();
    
    /* Vulnerability assertion: memcpy copies sizeof(ret) bytes from &id to &ret.
       Since ret is int (typically 4 bytes) and id is pthread_t (size varies by platform),
       we need to ensure sizeof(pthread_t) >= sizeof(int) to avoid reading beyond id.
       However, the actual OOB risk is that we're copying sizeof(ret) bytes from id,
       which might be smaller than sizeof(ret). So the condition is: */
    SAILR_ASSERT(sizeof(pthread_t) >= sizeof(int));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return result;
}