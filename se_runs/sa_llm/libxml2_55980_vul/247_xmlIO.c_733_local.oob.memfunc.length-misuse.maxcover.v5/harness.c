#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <unistd.h>
#include <stddef.h>
#include "klee/klee.h"

/* Forward declaration matching the target function */
static int xmlFdRead(void *context, char *buffer, int len);

/* Stub for xmlIOErr to avoid linking issues */
void xmlIOErr(int domain, const char *msg) {
    /* Do nothing - just a stub */
}

int main(void) {
    /* Symbolic variables for the function parameters */
    int fd;
    char buffer[1024];  /* Fixed-size buffer for demonstration */
    int len;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&fd, sizeof(fd), "fd");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume fd is a valid file descriptor (non-negative) */
    klee_assume(fd >= 0);
    
    /* Assume len is within reasonable bounds for symbolic exploration */
    klee_assume(len >= 0);
    klee_assume(len <= 2048);  /* Upper bound for exploration */
    
    /* Cast fd to void* context as done in the actual call */
    void *context = (void*)(ptrdiff_t)fd;
    
    /* Call the target function */
    int ret = xmlFdRead(context, buffer, len);
    
    /* Vulnerability assertion: check if len exceeds buffer size */
    SAILR_ASSERT(len <= (int)sizeof(buffer));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

/* Implementation of the target function */
static int xmlFdRead(void *context, char *buffer, int len) {
    int ret;
    
    /* This is the exact line from the target source (line 733) */
    ret = read((int)(ptrdiff_t)context, &buffer[0], len);
    if (ret < 0) xmlIOErr(0, "read()");
    return(ret);
}