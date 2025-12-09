#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/stat.h>

#define BUFFER_SIZE 4096

int main(void) {
    char bytes1[BUFFER_SIZE];
    char bytes2[BUFFER_SIZE];
    int fd1, fd2;
    int res1, res2;

    klee_make_symbolic(&res1, sizeof(res1), "res1");
    klee_make_symbolic(&res2, sizeof(res2), "res2");

    if ((res1 != res2) || (res1 < 0)) {
        return 1;
    }
    if (res1 == 0) {
        return 0;
    }

    klee_assume(res1 > 0 && res1 <= BUFFER_SIZE);

    klee_make_symbolic(bytes1, sizeof(bytes1), "bytes1");
    klee_make_symbolic(bytes2, sizeof(bytes2), "bytes2");

    klee_assert(0 && "SAILR_REACH_ASSERT");
    if (memcmp(bytes1, bytes2, res1) != 0) {
        return 1;
    }

    return 0;
}