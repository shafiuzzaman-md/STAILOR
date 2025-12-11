#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

int main(void) {
    char suffixbuff[500];
    char* suffix;
    char* out;
    char* base;
    
    suffix = (char*)malloc(500 * sizeof(char));
    base = (char*)malloc(500 * sizeof(char));
    
    klee_make_symbolic(suffix, 500, "suffix");
    klee_make_symbolic(base, 500, "base");
    
    klee_assume(suffix[499] == '\0');
    klee_assume(base[499] == '\0');
    
    out = NULL;
    
    if (suffix == NULL)
        suffix = ".tmp";
    if (out == NULL)
        out = "";
    
    SAILR_ASSERT(strlen(suffix) < 500);
    
    strncpy(suffixbuff, suffix, 499);
#ifdef VMS
    if(strstr(base, ".") && suffixbuff[0]=='.')
      suffixbuff[0]='_';
#endif
    
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    free(suffix);
    free(base);
    return 0;
}