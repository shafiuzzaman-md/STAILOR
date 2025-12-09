#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc = NULL;
    xmlNodePtr node = NULL;
    xmlAttrPtr attr = NULL;
    xmlChar* name = NULL;
    xmlNsPtr ns = NULL;
    int eatname;

    // Initialize libxml2
    xmlInitParser();

    // Make symbolic inputs to explore paths
    klee_make_symbolic(&eatname, sizeof(eatname), "eatname");
    klee_make_symbolic(&name, sizeof(name), "name");

    // Create a document and node to avoid NULL dereferences in the path
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (doc == NULL) {
        return 1;
    }
    node = xmlNewNode(NULL, (const xmlChar*)"root");
    if (node == NULL) {
        xmlFreeDoc(doc);
        return 1;
    }
    xmlDocSetRootElement(doc, node);

    // Ensure node->doc->dict exists (needed for xmlDictOwns check)
    // The dictionary is created automatically with the doc.

    // Symbolic choice for whether xmlDictOwns returns true or false
    int dict_owns;
    klee_make_symbolic(&dict_owns, sizeof(dict_owns), "dict_owns");
    // We cannot directly control xmlDictOwns, but we can influence the condition
    // by making name point to memory that may or may not be in the dict.
    // For simplicity, we assume the condition can go either way.

    // Call xmlNewProp (which internally calls xmlNewDocProp) to reach the target line.
    // xmlNewProp signature: xmlAttrPtr xmlNewProp(xmlNodePtr node, const xmlChar *name, const xmlChar *value)
    // The target line is inside xmlNewDocProp, which is called by xmlNewProp.
    // We need to cause a memory allocation failure in xmlStrdup(name) inside xmlNewDocProp
    // to take the error path that leads to the memset at line 1861.
    // In xmlNewDocProp, if xmlStrdup fails, it goes to:
    //     if ((eatname == 1) && ...) xmlFree((xmlChar *) name);
    //     xmlTreeErrMemory("building attribute");
    //     return (NULL);
    // But wait: the memset at line 1861 is NOT on the error path; it's on the success path.
    // Looking at the snippet: the error path is before line 1861. The memset is after the error check.
    // So we need to reach the memset with a valid 'cur' pointer.
    // 'cur' is allocated via xmlMalloc(sizeof(xmlAttr)). If that allocation fails, we go to error.
    // So we need to make xmlMalloc succeed, but then we must also have valid 'name' and 'value' duplicates.
    // Actually, the target line is memset(cur, 0, sizeof(xmlAttr)); which is after xmlMalloc succeeded.
    // So we need to ensure xmlMalloc succeeds and xmlStrdup for name and value succeed.
    // Let's create a symbolic name and value.

    xmlChar* value = NULL;
    size_t name_len = 10;
    size_t value_len = 10;
    char name_buf[11];
    char value_buf[11];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    klee_make_symbolic(value_buf, sizeof(value_buf), "value_buf");
    name_buf[10] = '\0';
    value_buf[10] = '\0';
    name = (xmlChar*)name_buf;
    value = (xmlChar*)value_buf;

    // Now call xmlNewProp.
    attr = xmlNewProp(node, name, value);

    // If attr is NULL, we didn't reach the memset.
    // We want to reach the memset, so we assume allocation succeeds.
    // However, KLEE will explore both paths.
    // We place the reachability assertion after the call, but we need to be on the path where memset is executed.
    // Since we cannot directly check if we are at line 1861, we rely on KLEE to explore.
    // We'll add a marker that we hope to reach.
    if (attr != NULL) {
        // We are on the path where xmlNewProp succeeded, which includes the memset.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Also, we might want to assert something about the memset? The SA spec suggests no assertion expression.
        // So we just have the reachability assertion.
        xmlFreeProp(attr);
    }

    // Cleanup
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}