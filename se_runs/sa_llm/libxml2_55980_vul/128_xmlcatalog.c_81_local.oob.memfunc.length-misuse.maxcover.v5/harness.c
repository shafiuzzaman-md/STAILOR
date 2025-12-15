#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

char *xmlReadline(const char *prompt) {
#ifdef _WIN32
    /* Windows implementation would go here */
    return NULL;
#else
    char line_read[501];
    char *ret;
    int len;

    if (prompt != NULL)
        fprintf(stdout, "%s", prompt);
    fflush(stdout);
    
    if (!fgets(line_read, 500, stdin))
        return(NULL);
    
    line_read[500] = 0;
    len = strlen(line_read);
    
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        memcpy(ret, line_read, len + 1);
    }
    return(ret);
#endif
}

int main(void) {
    char stdin_buffer[501];
    int prompt_choice;
    
    klee_make_symbolic(&prompt_choice, sizeof(prompt_choice), "prompt_choice");
    klee_make_symbolic(stdin_buffer, sizeof(stdin_buffer), "stdin_buffer");
    
    klee_assume(prompt_choice == 0 || prompt_choice == 1);
    
    FILE *fake_stdin = fmemopen(stdin_buffer, sizeof(stdin_buffer), "r");
    if (!fake_stdin) {
        return 1;
    }
    
    FILE *original_stdin = stdin;
    stdin = fake_stdin;
    
    char *result = xmlReadline(prompt_choice ? "Enter: " : NULL);
    
    stdin = original_stdin;
    fclose(fake_stdin);
    
    if (result != NULL) {
        SAILR_ASSERT(strlen(stdin_buffer) < 500);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        free(result);
    }
    
    return 0;
}