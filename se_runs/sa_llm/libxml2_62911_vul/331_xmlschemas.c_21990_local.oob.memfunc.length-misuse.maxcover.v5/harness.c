#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaIDCNodeTablePtr nodeTable;
    xmlSchemaIDCNodeTableItemPtr item;
    xmlSchemaIDCNodeTableItemPtr binding;
    xmlSchemaIDCNodeTableItemPtr *items;
    int i, n;

    klee_make_symbolic(&nodeTable, sizeof(nodeTable), "nodeTable");
    klee_make_symbolic(&item, sizeof(item), "item");
    klee_make_symbolic(&binding, sizeof(binding), "binding");
    klee_make_symbolic(&items, sizeof(items), "items");
    klee_make_symbolic(&i, sizeof(i), "i");
    klee_make_symbolic(&n, sizeof(n), "n");

    if (nodeTable == NULL) {
        return 0;
    }

    nodeTable->items = items;
    nodeTable->n = n;
    nodeTable->size = n;

    if (items == NULL) {
        return 0;
    }

    for (i = 0; i < n; i++) {
        items[i] = item;
    }

    binding = xmlSchemaNewIDCBinding(NULL);
    if (binding == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}