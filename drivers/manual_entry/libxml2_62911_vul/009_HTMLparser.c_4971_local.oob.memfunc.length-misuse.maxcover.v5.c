#include <klee/klee.h>
#include "HTMLparser.h"
#include "HTMLtree.h"
#include "parserInternals.h"

int main() {
    // Initialize parser context
    htmlParserCtxtPtr ctxt = (htmlParserCtxtPtr)xmlMalloc(sizeof(htmlParserCtxt));
    if (ctxt == NULL) return -1;
    
    // Initialize with NULL sax handler to trigger the vulnerable path
    int result = htmlInitParserCtxt(ctxt, NULL, NULL);
    
    // Cleanup
    if (ctxt != NULL) {
        if (ctxt->dict != NULL) xmlDictFree(ctxt->dict);
        if (ctxt->sax != NULL) xmlFree(ctxt->sax);
        if (ctxt->inputTab != NULL) xmlFree(ctxt->inputTab);
        if (ctxt->nodeTab != NULL) xmlFree(ctxt->nodeTab);
        if (ctxt->nameTab != NULL) xmlFree(ctxt->nameTab);
        xmlFree(ctxt);
    }
    
    return result;
}