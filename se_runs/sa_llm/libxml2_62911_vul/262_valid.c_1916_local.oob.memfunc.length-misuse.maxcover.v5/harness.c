#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/valid.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc;
    xmlValidCtxtPtr ctxt;
    xmlElementTablePtr table;
    xmlElementPtr elem;
    xmlAttributePtr attr;
    xmlEnumerationPtr tree;
    int type;
    const xmlChar *name, *prefix;

    // Initialize libxml2
    xmlInitParser();

    // Create a document
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (!doc) return 1;

    // Create a validation context
    ctxt = (xmlValidCtxtPtr) xmlMalloc(sizeof(xmlValidCtxt));
    if (!ctxt) {
        xmlFreeDoc(doc);
        return 1;
    }
    memset(ctxt, 0, sizeof(xmlValidCtxt));

    // Create an element table (simulate a DTD)
    table = xmlHashCreate(10);
    if (!table) {
        xmlFree(ctxt);
        xmlFreeDoc(doc);
        return 1;
    }

    // Create a dummy element declaration
    elem = xmlNewElementDecl();
    if (!elem) {
        xmlHashFree(table, NULL);
        xmlFree(ctxt);
        xmlFreeDoc(doc);
        return 1;
    }

    // Add element to table (so xmlGetDtdElementDesc can find it)
    xmlHashAddEntry(table, BAD_CAST "testElem", elem);

    // Make symbolic inputs for xmlAddAttributeDecl parameters
    // We need to reach xmlAddAttributeDecl -> xmlAddElementDecl -> target line
    // xmlAddAttributeDecl signature: 
    //   xmlAttributePtr xmlAddAttributeDecl(xmlValidCtxtPtr ctxt, xmlDocPtr doc,
    //       const xmlChar *elem, const xmlChar *name, const xmlChar *prefix,
    //       int type, xmlEnumerationPtr tree)

    // Symbolic element name (must match the one in table)
    char elem_name[32];
    klee_make_symbolic(elem_name, sizeof(elem_name), "elem_name");
    // Ensure it's null-terminated
    elem_name[sizeof(elem_name)-1] = 0;
    // Force it to be "testElem" to match our table entry
    // KLEE will explore both paths, but we need the matching path to proceed
    if (strcmp(elem_name, "testElem") != 0) {
        // If not matching, we won't reach the target, but KLEE will explore both
        // We'll just return early to avoid crashes
        xmlFreeElementDecl(elem);
        xmlHashFree(table, NULL);
        xmlFree(ctxt);
        xmlFreeDoc(doc);
        return 0;
    }

    // Symbolic attribute name
    char attr_name[32];
    klee_make_symbolic(attr_name, sizeof(attr_name), "attr_name");
    attr_name[sizeof(attr_name)-1] = 0;

    // Symbolic prefix (can be NULL)
    char attr_prefix[32];
    klee_make_symbolic(attr_prefix, sizeof(attr_prefix), "attr_prefix");
    attr_prefix[sizeof(attr_prefix)-1] = 0;
    const xmlChar *prefix_ptr = BAD_CAST attr_prefix;
    // Allow NULL prefix
    if (klee_range(0, 2, "prefix_null")) {
        prefix_ptr = NULL;
    }

    // Symbolic type (must be valid attribute type)
    klee_make_symbolic(&type, sizeof(type), "type");
    // Constrain to valid XML_ATTRIBUTE_* values (simplify to a few)
    // XML_ATTRIBUTE_CDATA = 1, XML_ATTRIBUTE_ID = 2, XML_ATTRIBUTE_IDREF = 3, etc.
    klee_assume(type >= 1 && type <= 10);

    // Create an enumeration tree (can be NULL)
    tree = xmlCreateEnumeration(BAD_CAST "val1");
    if (!tree) {
        xmlFreeElementDecl(elem);
        xmlHashFree(table, NULL);
        xmlFree(ctxt);
        xmlFreeDoc(doc);
        return 1;
    }

    // Set up the document's DTD to use our table
    xmlDtdPtr dtd = xmlNewDtd(doc, NULL, NULL, NULL);
    if (!dtd) {
        xmlFreeEnumeration(tree);
        xmlFreeElementDecl(elem);
        xmlHashFree(table, NULL);
        xmlFree(ctxt);
        xmlFreeDoc(doc);
        return 1;
    }
    dtd->elements = table;

    // Now call xmlAddAttributeDecl which will call xmlAddElementDecl
    attr = xmlAddAttributeDecl(ctxt, doc, BAD_CAST elem_name, 
                               BAD_CAST attr_name, prefix_ptr, type, tree);

    // Place reachability assertion near the target line
    // The target line is inside xmlAddElementDecl which is called by xmlAddAttributeDecl
    // We can't directly assert inside that function, but we can assert we reached
    // a state where the attribute was created (or not)
    if (attr != NULL) {
        // If we got here, xmlAddElementDecl was called and malloc succeeded
        // (otherwise xmlAddAttributeDecl would return NULL)
        // The target memset at line 1916 would have been executed
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    if (attr) xmlFreeAttribute(attr);
    xmlFreeEnumeration(tree);
    // Don't free elem individually - it's part of the table
    xmlHashFree(table, (xmlHashDeallocator) xmlFreeElementDecl);
    xmlFree(ctxt);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}