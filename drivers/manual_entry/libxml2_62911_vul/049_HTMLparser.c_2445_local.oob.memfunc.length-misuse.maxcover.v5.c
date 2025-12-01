#include <klee/klee.h>
#include "HTMLparser.h"
#include "tree.h"
#include "xmlmemory.h"

int main() {
    xmlChar URI_buf[16];
    xmlChar ExternalID_buf[16];
    
    klee_make_symbolic(URI_buf, sizeof(URI_buf), "URI_buf");
    klee_make_symbolic(ExternalID_buf, sizeof(ExternalID_buf), "ExternalID_buf");
    
    xmlChar* URI = NULL;
    xmlChar* ExternalID = NULL;
    
    if (klee_range(0, 2, "URI_choice")) {
        URI = URI_buf;
    }
    
    if (klee_range(0, 2, "ExternalID_choice")) {
        ExternalID = ExternalID_buf;
    }
    
    htmlDocPtr result = htmlNewDocNoDtD(URI, ExternalID);
    
    return 0;
}