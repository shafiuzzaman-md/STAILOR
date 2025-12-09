#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    filename[sizeof(filename) - 1] = '\0';

    struct stat info;
    if (stat(filename, &info) != 0) {
        return -1;
    }

    klee_assume(info.st_size >= 0);
    klee_assume(info.st_size < 1024 * 1024);

    char *base = malloc(info.st_size + 1);
    if (base == NULL) {
        return -1;
    }

    int fd = open(filename, O_RDONLY);
    if (fd < 0) {
        free(base);
        return -1;
    }

    ssize_t siz = 0;
    ssize_t res;
    klee_assert(0 && "SAILR_REACH_ASSERT");
    while ((res = read(fd, &base[siz], info.st_size - siz)) > 0) {
        siz += res;
    }

    close(fd);
    free(base);
    return 0;
}