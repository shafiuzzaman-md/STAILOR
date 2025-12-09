#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaValidCtxtPtr vctxt;
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaPtr schema;
    xmlDocPtr doc;
    char *xml_data;
    int xml_size;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a schema parser context */
    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 1;
    }

    /* Parse a dummy schema */
    schema = xmlSchemaParse(pctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    /* Create a validation context */
    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    /* Make symbolic XML data */
    xml_size = 100;
    xml_data = (char *)malloc(xml_size);
    klee_make_symbolic(xml_data, xml_size, "xml_data");

    /* Create a document from the symbolic data */
    doc = xmlReadMemory(xml_data, xml_size, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free(xml_data);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    /* Force the validation context to have a NULL elemInfos to trigger the allocation path */
    if (vctxt->elemInfos != NULL) {
        xmlFree(vctxt->elemInfos);
        vctxt->elemInfos = NULL;
        vctxt->sizeElemInfos = 0;
    }

    /* Set depth to a symbolic value that will not trigger the realloc path */
    vctxt->depth = 0;
    klee_assume(vctxt->depth < 10);

    /* Call a function that uses the validation context and will reach the target line.
       xmlSchemaValidateStream is a good candidate because it internally uses the validation
       context and will likely trigger the allocation and memset. */
    xmlSchemaValidateStream(vctxt, doc, 0, NULL, NULL);

    /* Place reachability marker near the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    free(xml_data);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();

    return 0;
}