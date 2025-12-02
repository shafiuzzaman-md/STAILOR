// libxml2_manual_entry.c
//
// Manual project-level harness for libxml2.
// Entry idea: call xmlReadMemory on a symbolic XML buffer.
//
// Assumes libxml2 headers are available under your include path
// (e.g., -I/path/to/libxml2/include) and that you either link against
// libxml2 bitcode or stub the heavy functions.

#include "klee/klee.h"

#include <libxml/parser.h>
#include <libxml/tree.h>

#define MAX_XML_SIZE 1024

int main(void) {
    // Symbolic XML buffer and length
    char buf[MAX_XML_SIZE + 1];   // +1 for '\0'
    int len;

    klee_make_symbolic(&buf, sizeof(buf), "xml_buf");
    klee_make_symbolic(&len, sizeof(len), "xml_len");

    // Initialize libxml2
    xmlInitParser();

    // Call a central entrypoint
    xmlDocPtr doc;
    doc = xmlReadMemory(buf, len, "input.xml", NULL, 0);

    return 0;
}
