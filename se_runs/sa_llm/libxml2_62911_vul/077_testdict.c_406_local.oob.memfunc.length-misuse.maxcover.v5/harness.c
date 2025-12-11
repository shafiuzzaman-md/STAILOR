#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define NB_STRINGS_MAX 1000

typedef struct {
    char *str;
    int len;
} xmlChar;

void fill_string_pool(xmlChar *pool, int *seeds) {
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        int len;
        klee_make_symbolic(&len, sizeof(len), "len");
        klee_assume(len >= 0 && len < 100);
        
        pool[i].str = malloc(len + 1);
        pool[i].len = len;
        
        if (pool[i].str) {
            klee_make_symbolic(pool[i].str, len + 1, "string_data");
            pool[i].str[len] = '\0';
        }
    }
}

int main(void) {
    xmlChar *strings1, *strings2, *test1, *test2;
    int seeds1[NB_STRINGS_MAX], seeds2[NB_STRINGS_MAX];
    
    klee_make_symbolic(seeds1, sizeof(seeds1), "seeds1");
    klee_make_symbolic(seeds2, sizeof(seeds2), "seeds2");
    
    strings1 = malloc(NB_STRINGS_MAX * sizeof(xmlChar));
    if (!strings1) return 0;
    
    strings2 = malloc(NB_STRINGS_MAX * sizeof(xmlChar));
    if (!strings2) {
        free(strings1);
        return 0;
    }
    
    test1 = malloc(NB_STRINGS_MAX * sizeof(xmlChar));
    if (!test1) {
        free(strings1);
        free(strings2);
        return 0;
    }
    
    test2 = malloc(NB_STRINGS_MAX * sizeof(xmlChar));
    if (!test2) {
        free(strings1);
        free(strings2);
        free(test1);
        return 0;
    }
    
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(xmlChar));
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(xmlChar));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(xmlChar));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(xmlChar));
    
    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);
    
    SAILR_ASSERT(NB_STRINGS_MAX * sizeof(xmlChar) <= NB_STRINGS_MAX * sizeof(xmlChar));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(strings1);
    free(strings2);
    free(test1);
    free(test2);
    
    return 0;
}