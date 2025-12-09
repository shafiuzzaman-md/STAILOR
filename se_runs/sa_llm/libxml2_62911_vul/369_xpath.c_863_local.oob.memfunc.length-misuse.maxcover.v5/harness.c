#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <libxml/xpathInternals.h>
#include <klee/klee.h>

int main(void) {
    int initialSize;
    klee_make_symbolic(&initialSize, sizeof(initialSize), "initialSize");
    klee_assume(initialSize >= 0);

    xmlPointerListPtr list = xmlPointerListCreate(initialSize);
    if (list != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlPointerListFree(list);
    }
    return 0;
}