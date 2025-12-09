#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr parserCtxt;
    xmlRelaxNGPtr schema;
    xmlDocPtr doc;
    xmlRelaxNGValidCtxtPtr validCtxt;
    int ret;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic buffer for the RelaxNG schema
    char schema_buf[4096];
    klee_make_symbolic(schema_buf, sizeof(schema_buf), "schema_buf");
    // Ensure null-termination for safety
    schema_buf[sizeof(schema_buf)-1] = 0;

    // Parse the schema from memory
    parserCtxt = xmlRelaxNGNewMemParserCtxt(schema_buf, sizeof(schema_buf)-1);
    if (parserCtxt == NULL) {
        xmlCleanupParser();
        return 1;
    }

    schema = xmlRelaxNGParse(parserCtxt);
    if (schema == NULL) {
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a symbolic buffer for an XML document
    char doc_buf[4096];
    klee_make_symbolic(doc_buf, sizeof(doc_buf), "doc_buf");
    doc_buf[sizeof(doc_buf)-1] = 0;

    // Parse the XML document from memory
    doc = xmlReadMemory(doc_buf, sizeof(doc_buf)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Create a validation context
    validCtxt = xmlRelaxNGNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlFreeDoc(doc);
        xmlRelaxNGFree(schema);
        xmlRelaxNGFreeParserCtxt(parserCtxt);
        xmlCleanupParser();
        return 1;
    }

    // Validate the document against the schema
    // This will trigger the code path in xmlRelaxNGValidateDoc
    // which eventually calls the function containing the target line.
    ret = xmlRelaxNGValidateDoc(validCtxt, doc);

    // Place reachability marker near the vulnerable memcpy
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlRelaxNGFreeValidCtxt(validCtxt);
    xmlFreeDoc(doc);
    xmlRelaxNGFree(schema);
    xmlRelaxNGFreeParserCtxt(parserCtxt);
    xmlCleanupParser();

    return 0;
}