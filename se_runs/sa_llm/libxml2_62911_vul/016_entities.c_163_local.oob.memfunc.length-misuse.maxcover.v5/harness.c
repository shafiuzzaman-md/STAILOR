#include <libxml/parser.h>
#include <libxml/entities.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr root;
    xmlEntityPtr entity;
    xmlChar *content;
    size_t content_len;

    // Initialize libxml2
    xmlInitParser();

    // Create a document and a root node
    doc = xmlNewDoc(BAD_CAST "1.0");
    root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    // Make content symbolic
    content_len = 100; // arbitrary size for symbolic content
    content = (xmlChar *)malloc(content_len + 1);
    klee_make_symbolic(content, content_len + 1, "content");
    content[content_len] = 0; // null-terminate

    // Create an internal entity with symbolic content
    // This will call xmlCreateEntity eventually
    entity = xmlAddDocEntity(doc, BAD_CAST "ent1", XML_INTERNAL_GENERAL_ENTITY,
                             NULL, NULL, content);
    if (entity) {
        // If entity creation succeeded, we likely reached the target line
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    free(content);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}