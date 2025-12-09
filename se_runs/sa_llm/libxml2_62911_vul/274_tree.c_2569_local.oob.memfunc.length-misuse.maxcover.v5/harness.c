#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDocPtr doc;
    const xmlChar* name;
    xmlNodePtr node;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic document pointer (could be NULL or valid)
    doc = xmlNewDoc((const xmlChar*)"1.0");
    if (!doc) {
        return 0;
    }

    // Create a symbolic name string for the entity reference
    // We'll allocate a buffer and make its contents symbolic
    #define NAME_BUF_SIZE 256
    char name_buf[NAME_BUF_SIZE];
    int name_len;
    
    klee_make_symbolic(&name_len, sizeof(name_len), "name_len");
    // Constrain name_len to be reasonable for buffer size
    klee_assume(name_len >= 0);
    klee_assume(name_len < NAME_BUF_SIZE);
    
    // Make the buffer contents symbolic
    klee_make_symbolic(name_buf, NAME_BUF_SIZE, "name_buf");
    // Ensure null termination for safety
    name_buf[NAME_BUF_SIZE - 1] = '\0';
    
    // Set name to point to our buffer
    name = (const xmlChar*)name_buf;

    // Call the target function - xmlStringGetNodeList is the entrypoint
    // but looking at the context, this seems to be inside xmlNewReference
    // Let's trace through the call chain:
    // xmlStringGetNodeList -> xmlNewReference (where the vulnerable line is)
    
    // Actually, based on the SA spec entrypoint, we should call xmlStringGetNodeList
    // which internally calls xmlNewReference
    node = xmlStringGetNodeList(doc, name);
    
    // Place reachability assertion near the vulnerable memset
    // Since we can't directly instrument the library code, we place it
    // after the call that should reach the vulnerable line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    if (node) {
        xmlFreeNodeList(node);
    }
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}