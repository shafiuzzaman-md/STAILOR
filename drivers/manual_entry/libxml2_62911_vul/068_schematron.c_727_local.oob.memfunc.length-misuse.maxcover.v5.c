#include <klee/klee.h>
#include "schematron.h"

int main() {
    xmlDocPtr doc;
    
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    
    xmlSchematronNewDocParserCtxt(doc);
    
    return 0;
}