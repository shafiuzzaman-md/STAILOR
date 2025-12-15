#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

/* Stub for fatalError() called in the original code */
void fatalError(void) {
    /* Assume fatalError doesn't return */
    klee_assert(0 && "fatalError called");
}

/* Simulate the function containing the target line */
int simulate_runtest_code(FILE* input, FILE* output, char* temp) {
    char expression[4500];
    int len;
    
    if (output == NULL) {
        fprintf(stderr, "failed to open output file %s\n", temp);
        free(temp);
        return(-1);
    }
    
    /* Target line 4595: while (fgets(expression, 4500, input) != NULL) */
    while (fgets(expression, 4500, input) != NULL) {
        len = strlen(expression);
        len--;
        
        /* Vulnerability: len could be -1 if strlen(expression) == 0 */
        /* This would cause expression[-1] access in the while condition check */
        SAILR_ASSERT(len >= 0);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        while ((len >= 0) &&
               ((expression[len] == '\n') || (expression[len] == '\t') ||
                (expression[len] == '\r') || (expression[len] == ' '))) len--;
        expression[len + 1] = 0;
        if (len >= 0) {
            if (expression[0] == '#') {
                /* Continue processing */
                continue;
            }
        }
        break; /* Process only one line for KLEE */
    }
    
    return 0;
}

int main(void) {
    FILE* input;
    FILE* output;
    char* temp;
    
    /* Create symbolic file handles */
    klee_make_symbolic(&input, sizeof(input), "input");
    klee_make_symbolic(&output, sizeof(output), "output");
    
    /* Allocate and make symbolic temp filename */
    temp = malloc(256);
    klee_make_symbolic(temp, 256, "temp");
    temp[255] = '\0'; /* Ensure null termination */
    
    /* Assume input is not NULL to reach the target loop */
    klee_assume(input != NULL);
    
    /* Call the function containing the target code */
    simulate_runtest_code(input, output, temp);
    
    free(temp);
    return 0;
}