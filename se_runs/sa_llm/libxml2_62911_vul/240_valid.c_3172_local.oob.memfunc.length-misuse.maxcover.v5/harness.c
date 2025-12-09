#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/valid.h>
#include <libxml/hash.h>
#include <libxml/xmlerror.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlValidCtxtPtr ctxt;
    xmlElementTablePtr table;
    const xmlChar *name;
    const xmlChar *prefix;
    int create = 1;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a validation context */
    ctxt = xmlNewValidCtxt();
    if (ctxt == NULL) {
        return 1;
    }

    /* Create a dummy document */
    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        xmlFreeValidCtxt(ctxt);
        return 1;
    }

    /* Get the element table from the document's DTD; create one if none */
    if (doc->intSubset == NULL) {
        doc->intSubset = xmlCreateIntSubset(doc, NULL, NULL, NULL);
        if (doc->intSubset == NULL) {
            xmlFreeDoc(doc);
            xmlFreeValidCtxt(ctxt);
            return 1;
        }
    }
    table = &(doc->intSubset->elements);

    /* Make name and prefix symbolic */
    char name_buf[100];
    char prefix_buf[100];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix_buf");
    /* Ensure null termination for safety */
    name_buf[sizeof(name_buf)-1] = '\0';
    prefix_buf[sizeof(prefix_buf)-1] = '\0';
    name = (const xmlChar *)name_buf;
    prefix = (const xmlChar *)prefix_buf;

    /* Call the target function */
    xmlElementPtr result = xmlAddElementDecl(ctxt, table, name, prefix, XML_ELEMENT_TYPE_UNDEFINED);

    /* If we reach the target line, the malloc succeeded and memset was called.
       We insert a reachability assertion just before the memset (line 3172).
       Since we cannot insert code directly into the library, we place the assertion
       after the call, but only if the result is non‑NULL (meaning the malloc path was taken). */
    if (result != NULL) {
        /* This indicates that the malloc succeeded and we proceeded to line 3172.
           We cannot place the assertion exactly before memset, but we can mark that
           the vulnerable path was reached. */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    xmlFreeDoc(doc);
    xmlFreeValidCtxt(ctxt);
    xmlCleanupParser();

    return 0;
}