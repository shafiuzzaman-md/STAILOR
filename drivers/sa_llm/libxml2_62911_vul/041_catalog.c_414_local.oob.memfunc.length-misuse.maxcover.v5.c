#include <klee/klee.h>
#include "catalog.c"

int main() {
    xmlCatalogType type;
    xmlCatalogPrefer prefer;
    
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&prefer, sizeof(prefer), "prefer");
    
    xmlCatalogPtr catalog = xmlCreateNewCatalog(type, prefer);
    
    if (catalog != NULL) {
        klee_assert(catalog->catalMax == XML_MAX_SGML_CATA_DEPTH);
        xmlFreeCatalog(catalog);
    }
    
    return 0;
}