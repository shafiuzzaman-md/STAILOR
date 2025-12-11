#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

char *xmlCatalogAddLocal(const char *filename, const char *URL);

int main(void) {
    char filename[256];
    char URL[256];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(URL, sizeof(URL), "URL");
    
    filename[255] = '\0';
    URL[255] = '\0';
    
    klee_assume(filename[0] != '\0');
    klee_assume(URL[0] != '\0');
    
    char *result = xmlCatalogAddLocal(filename, URL);
    
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}

char *xmlCatalogAddLocal(const char *filename, const char *URL) {
    char line_read[500];
    char *ret = NULL;
    int len;
    
    FILE *f = fopen(filename, "r");
    if (f == NULL) {
        return NULL;
    }
    
    if (fgets(line_read, sizeof(line_read), f) == NULL) {
        fclose(f);
        return NULL;
    }
    fclose(f);
    
    line_read[499] = '\0';
    len = strlen(line_read);
    
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        SAILR_ASSERT(len + 1 <= 500);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(ret, line_read, len + 1);
    }
    
    return ret;
}