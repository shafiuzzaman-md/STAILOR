#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

char* baseFilename(const char* filename) {
    if (!filename) return NULL;
    
    static char result[256];
    int len = strlen(filename);
    if (len >= 256) len = 255;
    
    memcpy(result, filename, len);
    result[len] = '\0';
    
    char* slash = strrchr(result, '/');
    if (slash) {
        return slash + 1;
    }
    return result;
}

int main(void) {
    char suffixbuff[500];
    char res[500];
    
    char filename[256];
    char suffix[500];
    char out[256];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(suffix, sizeof(suffix), "suffix");
    klee_make_symbolic(out, sizeof(out), "out");
    
    filename[255] = '\0';
    suffix[499] = '\0';
    out[255] = '\0';
    
    char* base = baseFilename(filename);
    if (!base) {
        return 0;
    }
    
    const char* suffix_ptr = suffix;
    if (suffix_ptr == NULL) {
        suffix_ptr = ".tmp";
    }
    
    const char* out_ptr = out;
    if (out_ptr == NULL) {
        out_ptr = "";
    }
    
    int suffix_len = strlen(suffix_ptr);
    
    SAILR_ASSERT(suffix_len < 500);
    
    strncpy(suffixbuff, suffix_ptr, 499);
    
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}