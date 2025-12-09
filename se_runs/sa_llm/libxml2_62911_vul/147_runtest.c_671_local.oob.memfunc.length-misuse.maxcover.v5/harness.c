#include <klee/klee.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>

#define RD_FLAGS O_RDONLY

int main(void) {
    char r1[256];
    char r2[256];
    int fd1, fd2;
    ssize_t res1, res2;
    unsigned char bytes1[4096];
    unsigned char bytes2[4096];

    klee_make_symbolic(r1, sizeof(r1), "r1");
    klee_make_symbolic(r2, sizeof(r2), "r2");
    r1[sizeof(r1)-1] = '\0';
    r2[sizeof(r2)-1] = '\0';

    fd1 = open(r1, RD_FLAGS);
    if (fd1 < 0) {
        return -1;
    }

    fd2 = open(r2, RD_FLAGS);

    while (1) {
        res1 = read(fd1, bytes1, 4096);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        res2 = fd2 >= 0 ? read(fd2, bytes2, 4096) : 0;
        if ((res1 != res2) || (res1 < 0)) {
            close(fd1);
            if (fd2 >= 0) {
                close(fd2);
            }
            return 1;
        }
        if (res1 == 0) {
            break;
        }
    }

    close(fd1);
    if (fd2 >= 0) {
        close(fd2);
    }
    return 0;
}