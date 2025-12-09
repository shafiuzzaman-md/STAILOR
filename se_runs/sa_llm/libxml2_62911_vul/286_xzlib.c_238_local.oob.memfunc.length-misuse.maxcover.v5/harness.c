#include "klee/klee.h"
#include <libxml/xmlreader.h>
#include <libxml/xmlIO.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

extern int __libxml2_xzread(void *context, char *buffer, int len);

int main(void) {
    char *buffer;
    int len;
    int fd;
    int ret;

    buffer = malloc(1024);
    if (!buffer) return 1;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    fd = open("/dev/zero", O_RDONLY);
    if (fd < 0) return 1;

    void *state = malloc(256);
    if (!state) {
        close(fd);
        free(buffer);
        return 1;
    }
    memset(state, 0, 256);
    int *fd_ptr = (int*)((char*)state + 8);
    *fd_ptr = fd;

    ret = __libxml2_xzread(state, buffer, len);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    close(fd);
    free(state);
    free(buffer);
    return 0;
}