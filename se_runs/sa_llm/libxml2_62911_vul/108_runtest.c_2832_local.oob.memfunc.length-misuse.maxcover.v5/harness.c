#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include "klee/klee.h"

int main(void) {
    const char* filename = "test.xml";
    FILE* input = fopen(filename, "rb");
    if (input == NULL) {
        return -1;
    }

    char expression[4500];
    int len;

    klee_make_symbolic(expression, sizeof(expression), "expression");

    while (fgets(expression, 4500, input) != NULL) {
        len = strlen(expression);
        len--;
        while ((len >= 0) &&
               ((expression[len] == '\n') || (expression[len] == '\t') ||
                (expression[len] == '\r') || (expression[len] == ' '))) len--;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        expression[len + 1] = 0;
        if (len >= 0) {
            break;
        }
    }

    fclose(input);
    return 0;
}