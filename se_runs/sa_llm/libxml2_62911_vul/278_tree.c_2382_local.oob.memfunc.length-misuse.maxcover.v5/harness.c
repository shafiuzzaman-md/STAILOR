#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr frag;

    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 0;
    }

    frag = xmlNewDocFragment(doc);
    if (frag == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeNode(frag);
    xmlFreeDoc(doc);
    return 0;
}