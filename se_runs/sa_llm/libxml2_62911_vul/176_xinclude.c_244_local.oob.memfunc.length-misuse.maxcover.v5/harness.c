#include <libxml/parser.h>
#include <libxml/xinclude.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlParserCtxtPtr ctxt;
    int res;
    char *xml_data;
    size_t xml_size;

    xml_data = (char *)klee_make_symbolic(&xml_size, sizeof(xml_size), "xml_size");
    xml_size = klee_int("xml_size");
    klee_assume(xml_size >= 0);
    klee_assume(xml_size < 1024);
    xml_data = (char *)malloc(xml_size + 1);
    klee_make_symbolic(xml_data, xml_size + 1, "xml_data");
    xml_data[xml_size] = '\0';

    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        free(xml_data);
        return 1;
    }

    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlFreeParserCtxt(ctxt);
        free(xml_data);
        return 1;
    }

    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlFreeParserCtxt(ctxt);
        free(xml_data);
        return 1;
    }

    res = xmlXIncludeProcessNode(doc, node);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeDoc(doc);
    xmlFreeParserCtxt(ctxt);
    free(xml_data);
    return 0;
}