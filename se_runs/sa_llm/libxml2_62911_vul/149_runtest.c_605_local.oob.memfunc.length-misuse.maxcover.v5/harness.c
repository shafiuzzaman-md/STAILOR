#include "klee/klee.h"
#include <libxml/parser.h>
#include <string.h>
#include <stdlib.h>

extern char *baseFilename(const char *filename);

int main(void) {
    char suffixbuff[500];
    char res[500];
    char *suffix;
    char *out;
    char *base;
    char filename[100];

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&suffix, sizeof(suffix), "suffix");
    klee_make_symbolic(&out, sizeof(out), "out");

    filename[sizeof(filename)-1] = '\0';

    base = baseFilename(filename);
    if (suffix == NULL)
        suffix = ".tmp";
    if (out == NULL)
        out = "";

    klee_assert(0 && "SAILR_REACH_ASSERT");
    strncpy(suffixbuff,suffix,499);

    if (snprintf(res, 499, "%s%s%s", out, base, suffixbuff) >= 499)
        res[499] = 0;
    free(strdup(res));

    return 0;
}