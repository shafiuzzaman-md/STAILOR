#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    char bytes1[4096];
    int fd1, fd2;
    ssize_t res1, res2;
    int total = 0;

    char r1[256];
    char r2[256];

    klee_make_symbolic(r1, sizeof(r1), "r1");
    klee_make_symbolic(r2, sizeof(r2), "r2");
    klee_assume(r1[sizeof(r1)-1] == '\0');
    klee_assume(r2[sizeof(r2)-1] == '\0');

    fd1 = open(r1, O_RDONLY);
    if (fd1 < 0) {
        return -1;
    }

    fd2 = open(r2, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd2 < 0) {
        close(fd1);
        return -1;
    }

    do {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        res1 = read(fd1, bytes1, 4096);
        if (res1 <= 0)
            break;
        total += res1;
        res2 = write(fd2, bytes1, res1);
        if (res2 <= 0 || res2 != res1)
            break;
    } while (1);

    close(fd2);
    close(fd1);
    return 0;
}