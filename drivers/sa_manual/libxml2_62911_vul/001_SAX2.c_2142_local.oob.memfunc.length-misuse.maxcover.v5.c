#include <klee/klee.h>
#include "SAX2.h"
#include "parser.h"
#include "tree.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return 1;
    
    // Create a minimal document
    xmlDocPtr doc = xmlNewDoc(BAD_CAST "1.0");
    if (doc == NULL) return 1;
    ctxt->myDoc = doc;
    
    // Initialize freeElems list
    ctxt->freeElemsNr = 1;
    xmlNodePtr node = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    if (node == NULL) return 1;
    ctxt->freeElems = node;
    
    // Make symbolic inputs for xmlSAX2StartElementNs
    const xmlChar *localname;
    const xmlChar *prefix;
    const xmlChar *URI;
    int nb_namespaces;
    const xmlChar **namespaces;
    int nb_attributes;
    int nb_defaulted;
    const xmlChar **attributes;
    
    // Allocate and make symbolic buffers
    #define MAX_LEN 32
    xmlChar localname_buf[MAX_LEN];
    xmlChar prefix_buf[MAX_LEN];
    xmlChar URI_buf[MAX_LEN];
    
    klee_make_symbolic(localname_buf, sizeof(localname_buf), "localname");
    klee_make_symbolic(prefix_buf, sizeof(prefix_buf), "prefix");
    klee_make_symbolic(URI_buf, sizeof(URI_buf), "URI");
    
    localname = localname_buf;
    prefix = prefix_buf;
    URI = URI_buf;
    
    klee_make_symbolic(&nb_namespaces, sizeof(nb_namespaces), "nb_namespaces");
    klee_make_symbolic(&nb_attributes, sizeof(nb_attributes), "nb_attributes");
    klee_make_symbolic(&nb_defaulted, sizeof(nb_defaulted), "nb_defaulted");
    
    // Allocate namespace and attribute arrays
    namespaces = (const xmlChar **)xmlMalloc(2 * nb_namespaces * sizeof(xmlChar*));
    attributes = (const xmlChar **)xmlMalloc(5 * nb_attributes * sizeof(xmlChar*));
    
    if (namespaces != NULL && attributes != NULL) {
        // Initialize namespace array with symbolic data
        for (int i = 0; i < 2 * nb_namespaces; i++) {
            xmlChar *ns_buf = (xmlChar*)xmlMalloc(MAX_LEN);
            if (ns_buf != NULL) {
                klee_make_symbolic(ns_buf, MAX_LEN, "namespace");
                namespaces[i] = ns_buf;
            }
        }
        
        // Initialize attribute array with symbolic data
        for (int i = 0; i < 5 * nb_attributes; i++) {
            xmlChar *attr_buf = (xmlChar*)xmlMalloc(MAX_LEN);
            if (attr_buf != NULL) {
                klee_make_symbolic(attr_buf, MAX_LEN, "attribute");
                attributes[i] = attr_buf;
            }
        }
        
        // Call the target function
        xmlSAX2StartElementNs(ctxt, localname, prefix, URI, 
                             nb_namespaces, namespaces, 
                             nb_attributes, nb_defaulted, attributes);
        
        // Assertion for potential vulnerability at line 2142
        // Check if freeElemsNr went negative after decrement
        klee_assert(ctxt->freeElemsNr >= 0);
        
        // Cleanup
        for (int i = 0; i < 2 * nb_namespaces; i++) {
            if (namespaces[i] != NULL) xmlFree((void*)namespaces[i]);
        }
        for (int i = 0; i < 5 * nb_attributes; i++) {
            if (attributes[i] != NULL) xmlFree((void*)attributes[i]);
        }
    }
    
    if (namespaces != NULL) xmlFree(namespaces);
    if (attributes != NULL) xmlFree(attributes);
    
    xmlFreeParserCtxt(ctxt);
    xmlFreeDoc(doc);
    
    return 0;
}