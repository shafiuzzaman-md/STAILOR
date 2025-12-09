#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlwriter.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlTextWriterPtr writer;
    xmlChar *buffer = NULL;
    int size;

    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_assume(size < 1024); // Reasonable bound

    doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) {
        return 0;
    }

    writer = xmlNewTextWriterDoc(&doc, 0);
    if (writer == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    // The target line 437 is inside xmlNewTextWriterTree, which is called by xmlNewTextWriterDoc.
    // We need to trigger the path that reaches the memset.
    // The memset is unconditional after the NULL check for doc.
    // Since we passed a non-NULL doc, we will reach it.
    // Place reachability assertion.
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFreeTextWriter(writer);
    xmlFreeDoc(doc);
    return 0;
}