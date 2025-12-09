#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaValidCtxtPtr vctxt;
    xmlSchemaPtr schema;
    xmlDocPtr doc;
    char *xml_data;
    int xml_size;

    xml_data = (char *)klee_make_symbolic(&xml_size, sizeof(xML_size), "xml_data");
    xml_size = klee_int("xml_size");
    klee_assume(xml_size >= 0);
    klee_assume(xml_size < 1024);

    xmlInitParser();
    LIBXML_TEST_VERSION

    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        xmlCleanupParser();
        return 0;
    }

    schema = xmlSchemaParse(pctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 0;
    }

    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 0;
    }

    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 0;
    }

    int ret = xmlSchemaValidateDoc(vctxt, doc);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeDoc(doc);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();
    return 0;
}