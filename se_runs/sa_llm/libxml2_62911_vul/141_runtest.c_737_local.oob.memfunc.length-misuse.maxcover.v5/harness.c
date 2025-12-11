#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <klee/klee.h>

/* Stub for memcmp to allow symbolic analysis */
int memcmp(const void *s1, const void *s2, size_t n) {
    klee_make_symbolic(&n, sizeof(n), "memcmp_n");
    /* Vulnerability assertion: ensure n does not exceed bounds of either buffer */
    SAILR_ASSERT(n <= 4096 && n <= 4096); /* Both buffers are 4096 bytes */
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}

/* Stub for read to allow symbolic analysis */
ssize_t read(int fd, void *buf, size_t count) {
    ssize_t res;
    klee_make_symbolic(&res, sizeof(res), "read_res");
    klee_assume(res >= -1 && res <= 4096);
    return res;
}

/* Stub for fprintf to avoid side effects */
int fprintf(FILE *stream, const char *format, ...) {
    return 0;
}

int main(void) {
    int fd;
    char bytes[4096];
    char mem[4096];
    int idx = 0;
    int size = 4096;
    ssize_t res;

    /* Make symbolic inputs */
    klee_make_symbolic(&fd, sizeof(fd), "fd");
    klee_make_symbolic(bytes, sizeof(bytes), "bytes");
    klee_make_symbolic(mem, sizeof(mem), "mem");
    klee_make_symbolic(&idx, sizeof(idx), "idx");
    klee_make_symbolic(&size, sizeof(size), "size");

    /* Assume constraints from the code snippet */
    klee_assume(idx >= 0);
    klee_assume(size >= 0 && size <= 4096);
    klee_assume(idx <= size);

    /* Simulate the loop that leads to the memcmp call */
    while (1) {
        res = read(fd, bytes, 4096);
        if (res <= 0) {
            break;
        }
        if (res + idx > size) {
            break;
        }
        /* This memcmp call is the target line (line 737) */
        if (memcmp(bytes, &mem[idx], res) != 0) {
            int ix;
            for (ix = 0; ix < res; ix++) {
                if (bytes[ix] != mem[idx + ix]) {
                    break;
                }
            }
            fprintf(stderr, "Compare error at position %d\n", idx + ix);
        }
        idx += res;
        if (idx >= size) {
            break;
        }
    }

    return 0;
}