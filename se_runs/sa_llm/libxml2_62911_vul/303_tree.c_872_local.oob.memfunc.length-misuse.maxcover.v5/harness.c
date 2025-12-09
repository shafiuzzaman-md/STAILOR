#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc;
    xmlDtdPtr dtd;
    xmlNodePtr root;
    xmlChar* name;
    xmlChar* ExternalID;
    xmlChar* SystemID;
    int name_len, extid_len, sysid_len;

    // Initialize libxml2
    xmlInitParser();

    // Create a minimal XML document
    doc = xmlNewDoc(BAD_CAST "1.0");
    root = xmlNewNode(NULL, BAD_CAST "root");
    xmlDocSetRootElement(doc, root);

    // Make symbolic inputs for DTD parameters
    name_len = 10;
    extid_len = 10;
    sysid_len = 10;
    name = (xmlChar*)malloc(name_len + 1);
    ExternalID = (xmlChar*)malloc(extid_len + 1);
    SystemID = (xmlChar*)malloc(sysid_len + 1);

    klee_make_symbolic(name, name_len + 1, "name");
    klee_make_symbolic(ExternalID, extid_len + 1, "ExternalID");
    klee_make_symbolic(SystemID, sysid_len + 1, "SystemID");
    name[name_len] = '\0';
    ExternalID[extid_len] = '\0';
    SystemID[sysid_len] = '\0';

    // Call xmlCreateIntSubset which internally calls xmlNewDtd
    dtd = xmlCreateIntSubset(doc, (const char*)name, (const char*)ExternalID, (const char*)SystemID);

    // Reachability marker: we want to reach the memset in xmlNewDtd (line 872)
    if (dtd != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    free(name);
    free(ExternalID);
    free(SystemID);
    xmlFreeDoc(doc);
    xmlCleanupParser();

    return 0;
}