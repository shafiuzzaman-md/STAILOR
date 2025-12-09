#include <libxml/catalog.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlCatalogType type;
    xmlCatalogPrefer prefer;

    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&prefer, sizeof(prefer), "prefer");

    xmlCatalogPtr catalog = xmlCreateNewCatalog(type, prefer);
    if (catalog != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeCatalog(catalog);
    }

    xmlCleanupParser();
    return 0;
}