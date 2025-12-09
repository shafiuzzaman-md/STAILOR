#include <libxml/xpath.h>
#include <libxml/xpath_internals.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlXPathContextPtr ctx;
    xmlXPathObjectPtr obj;
    xmlNodeSetPtr set;
    const char* xml_data;
    int xml_data_len;

    xml_data_len = 1024;
    xml_data = (char*)malloc(xml_data_len);
    if (!xml_data) return 1;
    klee_make_symbolic((void*)xml_data, xml_data_len, "xml_data");
    xml_data[xml_data_len - 1] = '\0';

    doc = xmlReadMemory(xml_data, xml_data_len, "noname.xml", NULL, 0);
    if (!doc) {
        free((void*)xml_data);
        return 2;
    }

    ctx = xmlXPathNewContext(doc);
    if (!ctx) {
        xmlFreeDoc(doc);
        free((void*)xml_data);
        return 3;
    }

    obj = xmlXPathEvalExpression(BAD_CAST "//node()", ctx);
    if (!obj) {
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free((void*)xml_data);
        return 4;
    }

    if (obj->type != XPATH_NODESET) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free((void*)xml_data);
        return 5;
    }

    set = obj->nodesetval;
    if (!set) {
        xmlXPathFreeObject(obj);
        xmlXPathFreeContext(ctx);
        xmlFreeDoc(doc);
        free((void*)xml_data);
        return 6;
    }

    if (set->nodeMax == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlXPathFreeObject(obj);
    xmlXPathFreeContext(ctx);
    xmlFreeDoc(doc);
    free((void*)xml_data);
    return 0;
}