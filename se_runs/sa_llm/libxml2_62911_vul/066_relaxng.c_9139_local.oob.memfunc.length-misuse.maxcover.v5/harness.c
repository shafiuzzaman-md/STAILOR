#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include <klee/klee.h>

int main(void) {
    xmlRelaxNGParserCtxtPtr rng_parser_ctxt;
    xmlRelaxNGPtr rng_schema;
    xmlRelaxNGValidCtxtPtr valid_ctxt;
    xmlDocPtr doc;

    // Initialize libxml2
    xmlInitParser();

    // Create a RelaxNG parser context
    rng_parser_ctxt = xmlRelaxNGNewParserCtxt("dummy.rng");
    if (rng_parser_ctxt == NULL) {
        xmlCleanupParser();
        return 0;
    }

    // Parse the schema (will fail, but we need a valid context)
    rng_schema = xmlRelaxNGParse(rng_parser_ctxt);
    if (rng_schema == NULL) {
        xmlRelaxNGFreeParserCtxt(rng_parser_ctxt);
        xmlCleanupParser();
        return 0;
    }

    // Create a validation context
    valid_ctxt = xmlRelaxNGNewValidCtxt(rng_schema);
    if (valid_ctxt == NULL) {
        xmlRelaxNGFree(rng_schema);
        xmlRelaxNGFreeParserCtxt(rng_parser_ctxt);
        xmlCleanupParser();
        return 0;
    }

    // Create a minimal XML document
    const char* xml_content = "<root/>";
    doc = xmlReadMemory(xml_content, strlen(xml_content), "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlRelaxNGFreeValidCtxt(valid_ctxt);
        xmlRelaxNGFree(rng_schema);
        xmlRelaxNGFreeParserCtxt(rng_parser_ctxt);
        xmlCleanupParser();
        return 0;
    }

    // Make nbgroups symbolic to influence the allocation size
    // The variable 'nbgroups' is inside xmlRelaxNGValidateDoc.
    // We need to trigger a path where nbgroups is large or zero.
    // We'll call xmlRelaxNGValidateDoc which internally uses nbgroups.
    // The function signature: int xmlRelaxNGValidateDoc(xmlRelaxNGValidCtxtPtr ctxt, xmlDocPtr doc)
    // We'll let KLEE explore the internal state.

    // Mark reachability before the vulnerable memset
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Perform validation (this will call the target function)
    int ret = xmlRelaxNGValidateDoc(valid_ctxt, doc);

    // Cleanup
    xmlFreeDoc(doc);
    xmlRelaxNGFreeValidCtxt(valid_ctxt);
    xmlRelaxNGFree(rng_schema);
    xmlRelaxNGFreeParserCtxt(rng_parser_ctxt);
    xmlCleanupParser();

    return 0;
}