// drivers/sa_manual/libxml2_sa_manual_entry.c
//
// SA-driven manual project-level harness for libxml2.
// This is a *project* entry harness; SA decides where to insert assertions
// within libxml2 source files, but the harness stays the same.

#include "klee/klee.h"

#include <libxml/parser.h>
#include <libxml/tree.h>

#define MAX_XML_SIZE 1024

int main(void) {
    char buf[MAX_XML_SIZE + 1];   // +1 for '\0'
    int len;

    klee_make_symbolic(buf, sizeof(buf), "xml_buf");
    klee_make_symbolic(&len, sizeof(len), "xml_len");

    klee_assume(len >= 0);
    klee_assume(len <= MAX_XML_SIZE);

    buf[len] = '\0';

    xmlInitParser();

    // Central project entrypoint: parsing XML from memory.
    xmlDocPtr doc = xmlReadMemory(buf, len, "input.xml", NULL, 0);

    if (doc != NULL) {
        xmlFreeDoc(doc);
    }

    xmlCleanupParser();
    return 0;
}
