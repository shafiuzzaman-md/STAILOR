#include <klee/klee.h>
#include "catalog.c"

int main() {
    const char* filename;
    klee_make_symbolic(&filename, sizeof(filename), "filename");
    
    xmlChar* result = xmlLoadFileContent(filename);
    
    return 0;
}