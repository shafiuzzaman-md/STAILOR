#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/SAX.h>
#include <klee/klee.h>

extern void SAILR_ASSERT(int condition);

char *prompt = NULL;

char *custom_fgets_simulated(void) {
    char line_read[501];
    char *ret;
    int len;

    if (prompt != NULL)
        fprintf(stdout, "%s", prompt);
    fflush(stdout);

    klee_make_symbolic(line_read, sizeof(line_read), "line_read");
    line_read[500] = 0;
    int fgets_success;
    klee_make_symbolic(&fgets_success, sizeof(fgets_success), "fgets_success");
    klee_assume(fgets_success == 0 || fgets_success == 1);
    if (!fgets_success) {
        return(NULL);
    }
    klee_assert(0 && "SAILR_REACH_ASSERT");

    line_read[500] = 0;
    len = strlen(line_read);
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        memcpy (ret, line_read, len + 1);
    }
    return(ret);
}

int main(void) {
    char *input = custom_fgets_simulated();
    if (input != NULL) {
        free(input);
    }
    return 0;
}