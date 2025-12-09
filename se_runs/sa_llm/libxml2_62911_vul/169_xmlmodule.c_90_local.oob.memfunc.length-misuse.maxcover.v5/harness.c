#include <libxml/xmlmemory.h>
#include <libxml/xmlerror.h>
#include <libxml/xmlmodule.h>
#include <klee/klee.h>

int main(void) {
    char name[256];
    klee_make_symbolic(name, sizeof(name), "name");
    klee_assume(name[255] == '\0');

    xmlModulePtr module = xmlModuleOpen(name);
    if (module != NULL) {
        xmlModuleClose(module);
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}