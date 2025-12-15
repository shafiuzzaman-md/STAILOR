#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <string.h>
#include <stdlib.h>

/* Forward declarations of functions from runtest.c that we need */
char *xmlBuildURI(const char *URI, const char *base);
void xmlFreeURI(void *uri);

/* Stub for xmlNanoHTTPOpen */
void* xmlNanoHTTPOpen(const char *URL, char **contentType) {
    (void)URL;
    if (contentType) *contentType = NULL;
    return (void*)1; /* non-null stub */
}

/* Stub for xmlNanoHTTPRead */
int xmlNanoHTTPRead(void *ctx, void *dest, int destSize) {
    (void)ctx;
    (void)dest;
    (void)destSize;
    return 0;
}

/* Stub for xmlNanoHTTPClose */
void xmlNanoHTTPClose(void *ctx) {
    (void)ctx;
}

/* Stub for xmlParseSchema */
void* xmlParseSchema(const char *schemaURL) {
    (void)schemaURL;
    return (void*)1;
}

/* Stub for xmlSchemaFree */
void xmlSchemaFree(void *schema) {
    (void)schema;
}

/* Stub for xmlSchemaValidateDoc */
int xmlSchemaValidateDoc(void *schema, void *doc) {
    (void)schema;
    (void)doc;
    return 0;
}

/* Stub for xmlReadFile */
void* xmlReadFile(const char *filename, const char *encoding, int options) {
    (void)filename;
    (void)encoding;
    (void)options;
    return (void*)1;
}

/* Stub for xmlFreeDoc */
void xmlFreeDoc(void *doc) {
    (void)doc;
}

/* Target function from runtest.c - simplified to focus on the vulnerable path */
void testSchemasOne(void) {
    char base[256];
    char prefix[256];
    char pattern[500];
    int len;
    
    /* Make base symbolic to explore different string contents */
    klee_make_symbolic(base, sizeof(base), "base");
    
    /* Ensure base is null-terminated */
    base[sizeof(base)-1] = '\0';
    
    /* Initialize len to strlen(base) */
    len = strlen(base);
    
    /* We need to reach the vulnerable memcpy at line 3486 */
    /* The code before line 3486 assumes certain conditions */
    
    /* Assume base ends with ".xsd" to pass the first condition */
    if (len >= 4) {
        klee_assume(base[len-4] == '.');
        klee_assume(base[len-3] == 'x');
        klee_assume(base[len-2] == 's');
        klee_assume(base[len-1] == 'd');
    } else {
        /* If too short, we can't reach the vulnerable code */
        return;
    }
    
    /* len >= 4 is now guaranteed */
    len -= 4; /* remove trailing .xsd */
    
    /* Now we need to handle the conditions at lines 3480 and 3483 */
    /* These check if base[len - 2] == '_' */
    
    /* First condition at line 3480 */
    if (len >= 2 && base[len - 2] == '_') {
        len -= 2; /* remove subtest number */
    }
    
    /* Second condition at line 3483 */
    if (len >= 2 && base[len - 2] == '_') {
        len -= 2; /* remove subtest number */
    }
    
    /* Now we're at line 3486: memcpy(prefix, base, len); */
    /* Vulnerability: len could be negative or too large for prefix */
    
    /* Vulnerability assertion: len must be non-negative and less than sizeof(prefix) */
    SAILR_ASSERT(len >= 0 && len < (int)sizeof(prefix));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memcpy would go here, but we stop at the assertion */
    /* memcpy(prefix, base, len); */
    /* prefix[len] = 0; */
}

int main(void) {
    /* Call the function that contains the vulnerable code */
    testSchemasOne();
    return 0;
}