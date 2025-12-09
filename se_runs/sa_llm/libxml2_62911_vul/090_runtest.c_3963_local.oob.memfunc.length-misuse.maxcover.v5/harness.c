#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    char str[1024];
    FILE *f;
    int i;
    char filename[256];
    int symbolic_size;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    klee_assume(symbolic_size >= 0);
    klee_assume(symbolic_size < sizeof(str));

    filename[sizeof(filename) - 1] = '\0';

    f = fopen(filename, "r");
    if (f == NULL) {
        return 0;
    }

    while (1) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        if (fgets(&str[0], symbolic_size, f) == NULL)
           break;

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