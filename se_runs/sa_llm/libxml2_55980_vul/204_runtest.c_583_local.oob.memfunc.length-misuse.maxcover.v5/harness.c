#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from the target file */
char *baseFilename(const char *filename);
char *xmlMemStrdup(const char *str);

/* Stub for baseFilename since we don't have its implementation */
char *baseFilename(const char *filename) {
    static char result[256];
    klee_make_symbolic(result, sizeof(result), "baseFilename_result");
    /* Ensure it's null-terminated */
    klee_assume(result[255] == '\0');
    return result;
}

/* Stub for xmlMemStrdup/strdup */
char *xmlMemStrdup(const char *str) {
    if (str == NULL) return NULL;
    size_t len = strlen(str) + 1;
    char *copy = malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* The function containing the target line - extracted from runtest.c */
static char *testFilename(const char *filename, const char *suffix, const char *out) {
    char suffixbuff[500];
    char res[500];
    char *base;

    base = baseFilename(filename);
    if (suffix == NULL)
        suffix = ".tmp";
    if (out == NULL)
        out = "";

    /* TARGET LINE 583: strncpy(suffixbuff,suffix,499); */
    strncpy(suffixbuff, suffix, 499);
    
    /* Vulnerability assertion: ensure suffix length is <= buffer size */
    SAILR_ASSERT(strlen(suffix) < sizeof(suffixbuff));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

#ifdef VMS
    if(strstr(base,".") && suffixbuff[0]=='.')
      suffixbuff[0]='_';
#endif

    if (snprintf(res, 499, "%s%s%s", out, base, suffixbuff) >= 499)
        res[499] = 0;
    return xmlMemStrdup(res);
}

int main(void) {
    /* Make symbolic inputs to reach the target line */
    char filename[256];
    char suffix[500];  /* Could be longer than suffixbuff */
    char out[256];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(suffix, sizeof(suffix), "suffix");
    klee_make_symbolic(out, sizeof(out), "out");
    
    /* Ensure strings are null-terminated */
    klee_assume(filename[255] == '\0');
    klee_assume(suffix[499] == '\0');
    klee_assume(out[255] == '\0');
    
    /* Call the function with symbolic inputs */
    char *result = testFilename(filename, suffix, out);
    
    /* Clean up */
    if (result) free(result);
    
    return 0;
}