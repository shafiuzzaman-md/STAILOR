#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <klee/klee.h>

extern char *baseFilename(char *name);
extern int checkTestFile(const char *filename);
extern int update_results;

int main(void) {
    char filename[256];
    char xml[256];
    char result[500];
    int len;

    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_assume(filename[0] != '\0');
    klee_assume(strlen(filename) >= 4);
    klee_assume(strlen(filename) < sizeof(filename) - 1);
    filename[sizeof(filename) - 1] = '\0';

    len = strlen(filename);
    len -= 4;
    memcpy(xml, filename, len);
    xml[len] = 0;
    if (snprintf(result, 499, "result/pattern/%s", baseFilename(xml)) >= 499)
        result[499] = 0;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(xml + len, ".xml", 5);

    if (!checkTestFile(xml) && !update_results) {
        fprintf(stderr, "Missing xml file %s\n", xml);
        return -1;
    }

    FILE *f = fopen(filename, "rb");
    if (f == NULL) {
        fprintf(stderr, "Failed to open %s\n", filename);
        return -1;
    }
    fclose(f);

    return 0;
}