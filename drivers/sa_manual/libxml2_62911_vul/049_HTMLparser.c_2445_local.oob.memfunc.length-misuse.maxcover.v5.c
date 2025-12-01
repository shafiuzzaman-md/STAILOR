#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    xmlChar* URI;
    xmlChar* ExternalID;
    
    klee_make_symbolic(&URI, sizeof(URI), "URI");
    klee_make_symbolic(&ExternalID, sizeof(ExternalID), "ExternalID");
    
    htmlDocPtr result = htmlNewDocNoDtD(URI, ExternalID);
    
    return 0;
}