#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/xmlwriter.h>
#include <string.h>

int main(void) {
    xmlDocPtr doc = NULL;
    int compression;
    
    klee_make_symbolic(&compression, sizeof(compression), "compression");
    
    xmlTextWriterPtr writer = xmlNewTextWriterDoc(&doc, compression);
    
    if (writer != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeTextWriter(writer);
    }
    
    if (doc != NULL) {
        xmlFreeDoc(doc);
    }
    
    xmlCleanupParser();
    return 0;
}