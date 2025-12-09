#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "klee/klee.h"

extern int runtest(int argc, char **argv);

int main(void) {
    char r1[256];
    char r2[256];
    klee_make_symbolic(r1, sizeof(r1), "r1");
    klee_make_symbolic(r2, sizeof(r2), "r2");
    r1[sizeof(r1)-1] = '\0';
    r2[sizeof(r2)-1] = '\0';

    char *argv[] = { "runtest", r1, r2, NULL };
    int argc = 3;

    int result = runtest(argc, argv);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    return result;
}