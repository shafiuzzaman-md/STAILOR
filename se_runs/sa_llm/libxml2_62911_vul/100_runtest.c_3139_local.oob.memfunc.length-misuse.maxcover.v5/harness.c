#include "klee/klee.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int main(int argc, char **argv);

int main(void) {
    char str[1024];
    FILE *f;
    int i;
    char filename[256];
    char file_contents[4096];
    size_t file_len;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(file_contents, sizeof(file_contents), "file_contents");
    klee_make_symbolic(&file_len, sizeof(file_len), "file_len");

    klee_assume(file_len < sizeof(file_contents));
    file_contents[file_len] = '\0';

    f = fmemopen(file_contents, file_len, "r");
    if (f == NULL) {
        return 0;
    }

    while (1) {
        if (fgets(&str[0], sizeof(str) - 1, f) == NULL)
            break;

        klee_assert(0 && "SAILR_REACH_ASSERT");

        i = strlen(str);
        while ((i > 0) &&
               ((str[i - 1] == '\n') || (str[i - 1] == '\r') ||
                (str[i - 1] == ' ') || (str[i - 1] == '\t'))) {
            i--;
        }
        str[i] = 0;
    }

    fclose(f);
    return 0;
}