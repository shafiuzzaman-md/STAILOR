#include <klee/klee.h>
#include "SAX2.h"
#include "parser.h"
#include "tree.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return 1;
    
    // Initialize document
    ctxt->myDoc = xmlNewDoc((const xmlChar*)"1.0");
    if (ctxt->myDoc == NULL) {
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    
    // Set up free elements list
    ctxt->freeElemsNr = 1;
    xmlNodePtr free_node = (xmlNodePtr)malloc(sizeof(xmlNode));
    if (free_node == NULL) {
        xmlFreeDoc(ctxt->myDoc);
        xmlFreeParserCtxt(ctxt);
        return 1;
    }
    ctxt->freeElems = free_node;
    free_node->next = NULL;
    
    // Make symbolic inputs for xmlSAX2StartElementNs
    const xmlChar *localname;
    const xmlChar *prefix;
    const xmlChar *URI;
    int nb_namespaces;
    int nb_attributes;
    int nb_defaulted;
    
    klee_make_symbolic(&localname, sizeof(localname), "localname");
    klee_make_symbolic(&prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(&URI, sizeof(URI), "URI");
    klee_make_symbolic(&nb_namespaces, sizeof(nb_namespaces), "nb_namespaces");
    klee_make_symbolic(&nb_attributes, sizeof(nb_attributes), "nb_attributes");
    klee_make_symbolic(&nb_defaulted, sizeof(nb_defaulted), "nb_defaulted");
    
    // Call the target function
    xmlSAX2StartElementNs(ctxt, localname, prefix, URI, nb_namespaces, NULL, 
                         nb_attributes, nb_defaulted, NULL);
    
    // Assertion for the suspicious memset at line 2142
    // Check that freeElemsNr doesn't go negative after decrement
    if (ctxt->freeElems != NULL) {
        klee_assert(ctxt->freeElemsNr >= 0);
    }
    
    // Cleanup
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    
    return 0;
}