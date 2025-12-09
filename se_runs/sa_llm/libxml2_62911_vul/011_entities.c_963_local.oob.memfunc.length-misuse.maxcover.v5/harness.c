#include "klee/klee.h"
#include <libxml/entities.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr root;
    xmlEntityPtr ent;
    xmlEntityPtr copy;

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) return 1;

    root = xmlNewNode(NULL, BAD_CAST "root");
    if (root == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, root);

    ent = xmlNewEntity(NULL, BAD_CAST "ent", XML_INTERNAL_GENERAL_ENTITY,
                       NULL, NULL, BAD_CAST "content");
    if (ent == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }

    char name_buf[32];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[sizeof(name_buf)-1] = '\0';
    if (ent->name) xmlFree((xmlChar*)ent->name);
    ent->name = xmlStrdup(BAD_CAST name_buf);

    copy = xmlCopyEntity(NULL, ent);
    if (copy != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeEntity(copy);
    }

    xmlFreeEntity(ent);
    xmlFreeDoc(doc);
    return 0;
}