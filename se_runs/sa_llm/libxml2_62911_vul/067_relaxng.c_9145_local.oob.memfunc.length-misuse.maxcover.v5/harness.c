#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema;
    xmlDocPtr doc;
    xmlRelaxNGValidCtxtPtr validCtxt;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a RelaxNG parser context */
    parserCtxt = xmlRelaxNGNewParserCtxt("test.rng");
    if (parserCtxt == NULL) {
        return 0;
    }

    /* Parse the schema - we'll use a symbolic buffer for the schema content */
    char schema_buf[1024];
    klee_make_symbolic(schema_buf, sizeof(schema_buf), "schema_buf");
    /* Ensure null termination for safety */
    schema_buf[sizeof(schema_buf)-1] = 0;
    schema = xmlRelaxNGParse(parserCtxt);
    if (schema == NULL) {
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        return 0;
    }

    /* Create a validation context */
    validCtxt = xmlRelaxNGNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        return 0;
    }

    /* Create a document to validate - use symbolic content */
    char doc_buf[2048];
    klee_make_symbolic(doc_buf, sizeof(doc_buf), "doc_buf");
    doc_buf[sizeof(doc_buf)-1] = 0;
    doc = xmlReadMemory(doc_buf, sizeof(doc_buf)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlRelaxNGFreeValidCtxt(validCtxt);
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        return 0;
    }

    /* Validate the document - this should trigger the path to line 9145 */
    int ret = xmlRelaxNGValidateDoc(validCtxt, doc);

    /* Place reachability marker near the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    xmlRelaxNGFreeValidCtxt(validCtxt);
    xmlRelaxNGFree(schema);
    xmlRelaxNGFreeParserCtxt(parserCtxt);
    xmlCleanupParser();

    return 0;
}