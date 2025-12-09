#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xmlmemory.h>

int main(void) {
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlAttrPtr attr;
    xmlChar* name;
    xmlChar* value;

    // Initialize libxml2
    xmlInitParser();

    // Create a document
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) return 1;

    // Create a root node
    node = xmlNewNode(NULL, (const xmlChar*)"root");
    if (!node) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Make name symbolic
    char name_buf[100];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[sizeof(name_buf)-1] = '\0';
    name = (xmlChar*)name_buf;

    // Make value symbolic (can be NULL)
    char value_buf[200];
    int value_is_null;
    klee_make_symbolic(&value_is_null, sizeof(value_is_null), "value_is_null");
    if (value_is_null) {
        value = NULL;
    } else {
        klee_make_symbolic(value_buf, sizeof(value_buf), "value_buf");
        value_buf[sizeof(value_buf)-1] = '\0';
        value = (xmlChar*)value_buf;
    }

    // Call xmlNewProp, which internally calls the target function
    attr = xmlNewProp(node, name, value);
    
    // Reachability marker - placed after the call that reaches line 2012
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    if (attr) xmlFreeProp(attr);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}