#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

char *xmlShellReadline(const char *prompt) {
    char line_read[501];
    char *ret;
    size_t len;
    
    fprintf(stdout, "%s", prompt);
    fflush(stdout);
    
    klee_make_symbolic(line_read, sizeof(line_read), "line_read");
    klee_assume(line_read[499] == '\0');
    
    if (!fgets(line_read, 500, stdin)) {
        return NULL;
    }
    
    line_read[500] = 0;
    len = strlen(line_read);
    
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        SAILR_ASSERT(len + 1 <= 501);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ret, line_read, len + 1);
    }
    return ret;
}

int main(void) {
    char prompt[10];
    klee_make_symbolic(prompt, sizeof(prompt), "prompt");
    prompt[9] = '\0';
    
    char *result = xmlShellReadline(prompt);
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}