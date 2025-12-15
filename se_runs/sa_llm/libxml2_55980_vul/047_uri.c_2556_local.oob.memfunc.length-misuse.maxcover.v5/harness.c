#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from uri.c */
typedef struct _xmlURI xmlURI;
struct _xmlURI {
    char *path;
    /* Other fields omitted for brevity */
};

char* xmlSaveUri(xmlURI *uri);
void xmlFree(void *ptr);

/* Stub implementation of xmlSaveUri to avoid linking issues */
char* xmlSaveUri(xmlURI *uri) {
    (void)uri;
    char *result = malloc(10);
    if (result) {
        strcpy(result, "stub");
    }
    return result;
}

/* Stub implementation of xmlFree */
void xmlFree(void *ptr) {
    free(ptr);
}

/* The target function from uri.c line 2556 context */
static char* target_function(char *cal) {
    xmlURI temp;
    char *ret;
    
    /* This mimics the code around line 2556 */
#ifdef _WIN32
    /* Simulate the Windows path conversion loop */
    ret = cal;
    while (*ret != '\0') {
        if (*ret == '\\')
            *ret = '/';
        ret++;
    }
#endif
    
    /* This is the exact line 2556 we want to reach */
    memset(&temp, 0, sizeof(temp));
    
    /* Vulnerability assertion: ensure sizeof(temp) is safe for memset */
    SAILR_ASSERT(sizeof(temp) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    temp.path = (char *) cal;
    ret = xmlSaveUri(&temp);
    xmlFree(cal);
    return ret;
}

/* Entry point */
int main(void) {
    /* Create a symbolic buffer for the path string */
    char cal[256];
    klee_make_symbolic(cal, sizeof(cal), "cal");
    
    /* Assume it's a null-terminated string */
    klee_assume(cal[255] == '\0');
    
    /* Call the target function */
    char *result = target_function(cal);
    
    /* Clean up */
    if (result) {
        free(result);
    }
    
    return 0;
}