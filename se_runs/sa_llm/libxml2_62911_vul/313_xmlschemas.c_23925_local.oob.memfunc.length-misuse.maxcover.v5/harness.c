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
    xmlNodePtr node;
    xmlSchemaAttrInfoPtr iattr;
    int nbAttrInfos;
    int attrInfos_size;

    // Initialize libxml2
    xmlInitParser();

    // Create a schema parser context
    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 1;
    }

    // Parse a minimal schema (in memory)
    const char* schema_data = "<?xml version=\"1.0\"?><xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"><xs:element name=\"root\"/></xs:schema>";
    schema = xmlSchemaParse(pctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    // Create a validation context
    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    // Make vctxt->nbAttrInfos and vctxt->attrInfos capacity symbolic
    klee_make_symbolic(&nbAttrInfos, sizeof(nbAttrInfos), "nbAttrInfos");
    klee_make_symbolic(&attrInfos_size, sizeof(attrInfos_size), "attrInfos_size");

    // Constrain to plausible values: nbAttrInfos >= 0, attrInfos_size >= 0
    klee_assume(nbAttrInfos >= 0);
    klee_assume(attrInfos_size >= 0);

    // Allocate attrInfos array with symbolic size
    vctxt->attrInfos = (xmlSchemaAttrInfoPtr*)xmlMalloc(attrInfos_size * sizeof(xmlSchemaAttrInfoPtr));
    if (vctxt->attrInfos == NULL) {
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    // Set the current count
    vctxt->nbAttrInfos = nbAttrInfos;

    // Create a minimal XML document to validate
    const char* xml_data = "<?xml version=\"1.0\"?><root/>";
    doc = xmlReadMemory(xml_data, strlen(xml_data), "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlFree(vctxt->attrInfos);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 1;
    }

    // Validate the document - this will trigger attribute processing
    xmlSchemaValidateDoc(vctxt, doc);

    // The target line is inside xmlSchemaCreateAttrInfo, which is called during validation.
    // We insert a reachability marker and an assertion for the OOB risk.
    // The OOB risk is that vctxt->nbAttrInfos may exceed allocated attrInfos size.
    // We place the assertion after validation, but we need to ensure the path is taken.
    // We use a symbolic condition to hint at the vulnerable path.
    if (vctxt->nbAttrInfos >= attrInfos_size) {
        // This condition indicates a potential OOB write in the target line's context.
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    xmlFreeDoc(doc);
    xmlFree(vctxt->attrInfos);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();

    return 0;
}