#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

char* baseFilename(const char* filename) {
    static char result[256];
    klee_make_symbolic(result, sizeof(result), "baseFilename_result");
    
    klee_assume(result[0] != '\0');
    
    size_t len = strlen(result);
    klee_assume(len >= 4);
    
    return result;
}

int checkTestFile(const char* buf) {
    return 0;
}

int main(void) {
    char prefix[256];
    char buf[500];
    const char* subdir = "testdir";
    const char* filename = "testfile.xml";
    
    char* base;
    size_t len;
    
    base = baseFilename(filename);
    len = strlen(base);
    
    klee_assume(len >= 4);
    len -= 4;
    
    SAILR_ASSERT(len < sizeof(prefix));
    
    memcpy(prefix, base, len);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    prefix[len] = 0;
    
    if (snprintf(buf, 499, "result/c14n/%s/%s", subdir, prefix) >= 499)
        buf[499] = 0;
    char* result = strdup(buf);
    free(result);
    
    if (snprintf(buf, 499, "test/c14n/%s/%s.xpath", subdir, prefix) >= 499)
        buf[499] = 0;
    if (checkTestFile(buf)) {
    }
    
    return 0;
}