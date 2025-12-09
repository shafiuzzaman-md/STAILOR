#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <klee/klee.h>

extern int SAILR_ASSERT(int cond);

int main(void) {
    int fd;
    char bytes[4096];
    char *mem;
    int size;
    int idx = 0;
    int res;

    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0 && size <= 4096 * 10);

    mem = (char *)malloc(size + 1);
    if (!mem) return -1;
    klee_make_symbolic(mem, size, "mem");

    char filename[] = "test.xml";
    fd = open(filename, O_RDONLY);
    if (fd < 0) {
        FILE *tmp = fopen(filename, "w");
        if (!tmp) return -1;
        fwrite(mem, 1, size, tmp);
        fclose(tmp);
        fd = open(filename, O_RDONLY);
        if (fd < 0) {
            free(mem);
            return -1;
        }
    }

    while (idx < size) {
        res = read(fd, bytes, 4096);
        if (res <= 0)
            break;
        if (res + idx > size)
            break;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        if (memcmp(bytes, &mem[idx], res) != 0) {
            int ix;
            for (ix = 0; ix < res; ix++)
                if (bytes[ix] != mem[idx + ix])
                    break;
            fprintf(stderr, "Compare error at position %d\n", idx + ix);
            close(fd);
            free(mem);
            return 1;
        }
        idx += res;
    }

    close(fd);
    free(mem);
    return 0;
}