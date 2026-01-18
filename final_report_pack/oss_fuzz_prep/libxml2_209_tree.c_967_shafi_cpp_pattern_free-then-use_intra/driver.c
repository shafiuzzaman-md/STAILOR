#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#ifndef NULL
#define NULL ((void*)0)
#endif

/* --- Stub Functions --- */
#ifdef __KLEE__
#include <klee/klee.h>
#else
/* Stub KLEE functions for replay mode */
void stub_klee_make_symbolic(void *addr, size_t nbytes, const char *name) {
    (void)addr;
    (void)nbytes;
    (void)name;
}
void stub_klee_assume(unsigned int condition) {
    (void)condition;
}
void stub_klee_assert(int condition) {
    if (!condition) abort();
}
#define klee_make_symbolic stub_klee_make_symbolic
#define klee_assume stub_klee_assume
#define klee_assert stub_klee_assert
#include <stdlib.h>
#include <string.h>
#endif

/* Stub xmlDeregisterNodeDefaultValue to avoid external dependencies */
void stub_xmlDeregisterNodeDefaultValue(void *node) {
    (void)node;
}
#define xmlDeregisterNodeDefaultValue stub_xmlDeregisterNodeDefaultValue

/* Stub xmlFreeIDTable */
void stub_xmlFreeIDTable(void *table) {
    (void)table;
}
#define xmlFreeIDTable stub_xmlFreeIDTable

/* Stub xmlFreeRefTable */
void stub_xmlFreeRefTable(void *table) {
    (void)table;
}
#define xmlFreeRefTable stub_xmlFreeRefTable

/* Stub xmlUnlinkNodeInternal */
void stub_xmlUnlinkNodeInternal(void *node) {
    (void)node;
}
#define xmlUnlinkNodeInternal stub_xmlUnlinkNodeInternal

/* Stub xmlFreeDtd */
void stub_xmlFreeDtd(void *dtd) {
    (void)dtd;
}
#define xmlFreeDtd stub_xmlFreeDtd

/* Stub xmlFreeNodeList */
void stub_xmlFreeNodeList(void *list) {
    (void)list;
}
#define xmlFreeNodeList stub_xmlFreeNodeList

/* Stub xmlFreeNsList */
void stub_xmlFreeNsList(void *list) {
    (void)list;
}
#define xmlFreeNsList stub_xmlFreeNsList

/* Stub xmlDictFree */
void stub_xmlDictFree(void *dict) {
    (void)dict;
}
#define xmlDictFree stub_xmlDictFree

/* Stub xmlNewDoc - returns a concrete allocated xmlDoc */
void* stub_xmlNewDoc(void *version) {
    (void)version;
    static char doc_buf[256];
    return (void*)doc_buf;
}
#define xmlNewDoc stub_xmlNewDoc

/* Stub xmlDocSetURL - sets URL field to given pointer */
void stub_xmlDocSetURL(void *doc, char *url) {
    if (doc) {
        /* Cast to xmlDoc* and set URL field */
        struct _xmlDoc {
            void *URL;
        } *d = (struct _xmlDoc*)doc;
        d->URL = url;
    }
}
#define xmlDocSetURL stub_xmlDocSetURL

/* --- Embedded Functions --- */
/* Define xmlDoc type */
typedef struct _xmlDoc xmlDoc;

/* --- Harness --- */
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

int main(int argc, char **argv) {
    (void)argc;
    (void)argv;
    
    /* Create a document using stubbed library function */
    xmlDoc *doc = xmlNewDoc(NULL);
    /* Force solver to find a non-NULL document */
    klee_assume(doc != NULL);
    
    /* Allocate URL buffer */
    char url_buf[64];
    klee_make_symbolic(url_buf, sizeof(url_buf), "url_buf");
    /* Ensure null termination to prevent OOB reads */
    url_buf[sizeof(url_buf) - 1] = '\0';
    
    /* Set URL field using stubbed function */
    xmlDocSetURL(doc, url_buf);
    /* Force solver to find a path where URL is set successfully */
    struct _xmlDoc {
        void *URL;
    } *d = (struct _xmlDoc*)doc;
    klee_assume(d->URL != NULL);
    
    /* Call xmlFreeDoc to trigger UAF */
    xmlFreeDoc(doc);
    
    /* If execution reaches here, the UAF crash did NOT happen */
    /* is already inserted at line 967 via instrumentation */
    /* is inserted at line 968 via instrumentation */
    
    return 0;
}