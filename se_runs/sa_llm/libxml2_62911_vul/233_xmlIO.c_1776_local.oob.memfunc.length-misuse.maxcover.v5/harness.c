#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef unsigned char xmlChar;
typedef struct _xmlIOHTTPWriteCtxt xmlIOHTTPWriteCtxt;

/* Stub for xmlStrdup */
static char* xmlStrdup(const xmlChar* str) {
    if (str == NULL) return NULL;
    size_t len = strlen((const char*)str) + 1;
    char* copy = (char*)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Stub for xmlIOErrMemory */
static void xmlIOErrMemory(const char* msg) {
    /* Do nothing */
}

/* Stub for xmlFreeHTTPWriteCtxt */
static void xmlFreeHTTPWriteCtxt(xmlIOHTTPWriteCtxt* ctxt) {
    if (ctxt) {
        free(ctxt->uri);
        free(ctxt);
    }
}

/* Minimal struct definition */
struct _xmlIOHTTPWriteCtxt {
    char* uri;
    /* Other fields omitted for brevity */
};

/* Simulated function that leads to the target line */
static xmlIOHTTPWriteCtxt* xmlCreateHTTPWriteCtxt(const char* post_uri) {
    xmlIOHTTPWriteCtxt* ctxt = (xmlIOHTTPWriteCtxt*)malloc(sizeof(xmlIOHTTPWriteCtxt));
    if (ctxt == NULL) {
        xmlIOErrMemory("creating HTTP output context");
        return NULL;
    }

    /* TARGET LINE 1776: memset(ctxt, 0, sizeof(xmlIOHTTPWriteCtxt)) */
    (void) memset(ctxt, 0, sizeof(xmlIOHTTPWriteCtxt));

    ctxt->uri = (char*)xmlStrdup((const xmlChar*)post_uri);
    if (ctxt->uri == NULL) {
        xmlIOErrMemory("copying URI");
        xmlFreeHTTPWriteCtxt(ctxt);
        return NULL;
    }
    return ctxt;
}

/* Entrypoint function mentioned in SA spec */
static void* xmlFileOpen(const char* filename, const char* mode) {
    /* For this harness, we'll just call xmlCreateHTTPWriteCtxt with filename as URI */
    return xmlCreateHTTPWriteCtxt(filename);
}

int main(void) {
    /* Symbolic input for the URI string */
    char post_uri[256];
    klee_make_symbolic(post_uri, sizeof(post_uri), "post_uri");
    /* Assume it's a valid null-terminated string */
    klee_assume(post_uri[255] == '\0');

    /* Call the entrypoint */
    xmlIOHTTPWriteCtxt* ctxt = (xmlIOHTTPWriteCtxt*)xmlFileOpen(post_uri, "w");

    /* If we reach here, the memset at line 1776 was executed */
    if (ctxt != NULL) {
        /* Vulnerability assertion: For memset length-misuse, ensure the size 
           doesn't exceed allocated bounds. Since ctxt was allocated with 
           malloc(sizeof(xmlIOHTTPWriteCtxt)), the memset size should match.
           The vulnerability condition is that the size could be larger than 
           allocated memory. We assert the opposite for safety. */
        SAILR_ASSERT(sizeof(xmlIOHTTPWriteCtxt) <= malloc_usable_size(ctxt));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        xmlFreeHTTPWriteCtxt(ctxt);
    }

    return 0;
}