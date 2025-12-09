#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlNsPtr ns;
    char buffer[1024];
    int size;

    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0 && size < sizeof(buffer));
    buffer[size] = '\0';

    doc = xmlReadMemory(buffer, size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 0;
    }

    node = xmlNewNode(NULL, (const xmlChar *)"root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }
    xmlDocSetRootElement(doc, node);

    ns = xmlNewNs(node, (const xmlChar *)"http://www.w3.org/XML/1998/namespace", (const xmlChar *)"xml");
    if (ns == NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeNode(node);
    xmlFreeDoc(doc);
    return 0;
}