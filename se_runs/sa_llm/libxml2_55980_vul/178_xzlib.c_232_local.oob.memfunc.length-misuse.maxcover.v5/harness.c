#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <klee/klee.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

/* Minimal stub types to match the original code */
typedef struct xz_state {
    int fd;
} xz_state;
typedef xz_state* xz_statep;

/* Stub for xz_error to avoid linking issues */
void xz_error(xz_statep state, int err, const char* msg) {
    (void)state; (void)err; (void)msg;
}

/* Target function from xzlib.c - reproduced with minimal dependencies */
static int xz_load(xz_statep state, unsigned char *buf, unsigned int len,
                   unsigned int *have) {
    int ret;

    *have = 0;
    do {
        ret = read(state->fd, buf + *have, len - *have);
        if (ret <= 0)
            break;
        *have += ret;
    } while (*have < len);
    if (ret < 0) {
        xz_error(state, -1, "read error");
        return -1;
    }
    return 0;
}

int main(void) {
    /* Symbolic inputs for the xz_load call */
    xz_state state;
    unsigned int len;
    unsigned int have;
    unsigned char* buf;
    
    /* Make state.fd symbolic to control read() behavior */
    klee_make_symbolic(&state.fd, sizeof(state.fd), "state_fd");
    
    /* Make len symbolic - this is the critical parameter */
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Allocate buffer with symbolic size, but ensure it's at least len bytes */
    unsigned int buf_size;
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_assume(buf_size >= len && buf_size <= 4096); /* Reasonable bounds */
    buf = (unsigned char*)malloc(buf_size);
    
    /* Constrain len to be positive but not too large */
    klee_assume(len > 0 && len <= 4096);
    
    /* Constrain fd to be a valid file descriptor that won't fail immediately */
    klee_assume(state.fd >= 0);
    
    /* Call the target function */
    int result = xz_load(&state, buf, len, &have);
    
    /* Vulnerability assertion: ensure buffer access is within bounds */
    /* The vulnerable pattern is buf + *have with length len - *have in read() */
    /* We need to assert that *have never exceeds len during the loop */
    /* Since we can't directly observe the loop iterations, we assert the 
       post-condition that should hold if no overflow occurred */
    SAILR_ASSERT(have <= len);
    
    /* Reachability marker - placed after vulnerability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(buf);
    return result;
}