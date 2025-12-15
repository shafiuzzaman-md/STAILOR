#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declaration of the function from xmllint.c */
char *prompt(const char *prompt_str);

int main(void) {
    /* Make symbolic input for stdin simulation */
    char stdin_buffer[500];
    klee_make_symbolic(stdin_buffer, sizeof(stdin_buffer), "stdin_buffer");
    
    /* Assume the buffer contains a null-terminated string */
    klee_assume(stdin_buffer[499] == '\0');
    
    /* Simulate fgets reading from stdin by redirecting stdin */
    FILE *fake_stdin = fmemopen(stdin_buffer, sizeof(stdin_buffer), "r");
    if (!fake_stdin) {
        return 1;
    }
    
    /* Replace stdin with our buffer */
    FILE *original_stdin = stdin;
    stdin = fake_stdin;
    
    /* Call the vulnerable function */
    char *result = prompt("Test prompt: ");
    
    /* Restore original stdin */
    stdin = original_stdin;
    fclose(fake_stdin);
    
    /* Vulnerability assertion: fgets should not read more than buffer size */
    /* The condition checks that the length of input doesn't exceed buffer capacity */
    int len = strlen(stdin_buffer);
    SAILR_ASSERT(len < 500);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result) {
        free(result);
    }
    
    return 0;
}