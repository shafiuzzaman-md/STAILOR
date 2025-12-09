#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/dict.h>

int main(void) {
    xmlDocPtr doc;
    xmlDtdPtr dtd;
    xmlElementPtr elem;
    xmlElementContent content;
    xmlElementContentPtr cur = &content;
    xmlDictPtr dict = NULL;
    char *buffer;
    size_t buffer_size;

    buffer_size = 1024;
    buffer = (char *)malloc(buffer_size);
    if (!buffer) return 1;

    klee_make_symbolic(buffer, buffer_size, "buffer");

    doc = xmlReadMemory(buffer, buffer_size, "noname.xml", NULL, 0);
    if (!doc) {
        free(buffer);
        return 2;
    }

    dtd = xmlNewDtd(doc, (const xmlChar *)"root", NULL, NULL);
    if (!dtd) {
        xmlFreeDoc(doc);
        free(buffer);
        return 3;
    }

    elem = xmlNewDocNode(doc, NULL, (const xmlChar *)"elem", NULL);
    if (!elem) {
        xmlFreeDtd(dtd);
        xmlFreeDoc(doc);
        free(buffer);
        return 4;
    }

    content.type = XML_ELEMENT_CONTENT_PCDATA;
    content.ocur = XML_ELEMENT_CONTENT_ONCE;
    content.name = (const xmlChar *)"name";

    dict = doc->dict;

    xmlElementContentPtr ret = (xmlElementContentPtr) xmlMalloc(sizeof(xmlElementContent));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        xmlFreeNode(elem);
        xmlFreeDtd(dtd);
        xmlFreeDoc(doc);
        free(buffer);
        return 5;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret, 0, sizeof(xmlElementContent));

    ret->type = cur->type;
    ret->ocur = cur->ocur;
    if (cur->name != NULL) {
        if (dict)
            ret->name = xmlDictLookup(dict, cur->name, -1);
        else
            ret->name = xmlStrdup(cur->name);
    }

    xmlFree(ret);
    xmlFreeNode(elem);
    xmlFreeDtd(dtd);
    xmlFreeDoc(doc);
    free(buffer);
    return 0;
}