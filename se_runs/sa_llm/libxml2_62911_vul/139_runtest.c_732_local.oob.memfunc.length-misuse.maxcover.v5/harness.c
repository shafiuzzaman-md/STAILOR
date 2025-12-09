#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <klee/klee.h>

extern int SAILR_ASSERT(int cond);

int main(void) {
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[sizeof(filename) - 1] = '\0';

    int fd = open(filename, O_RDONLY);
    if (fd < 0) {
        return 0;
    }

    unsigned char mem[8192];
    unsigned char bytes[4096];
    int size = 8192;
    int idx = 0;
    int res;

    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0 && size <= 8192);

    klee_make_symbolic(mem, sizeof(mem), "mem");

    while (idx < size) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        res = read(fd, bytes, 4096);
        if (res <= 0)
            break;
        if (res + idx > size)
            break;
        if (memcmp(bytes, &mem[idx], res) != 0) {
            int ix;
            for (ix = 0; ix < res; ix++)
                if (bytes[ix] != mem[idx + ix])
                    break;
        }
        idx += res;
    }

    close(fd);
    return 0;
}