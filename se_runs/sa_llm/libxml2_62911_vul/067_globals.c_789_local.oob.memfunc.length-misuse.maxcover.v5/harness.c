#include "klee/klee.h"
#include <libxml/globals.h>
#include <libxml/xmlerror.h>
#include <libxml/threads.h>

extern void xmlInitGlobals(void);
extern void xmlCleanupGlobals(void);
extern xmlGlobalState* xmlNewGlobalState(void);
extern void xmlFreeGlobalState(xmlGlobalState *gs);

int main(void) {
    xmlInitGlobals();

    xmlGlobalState *gs = xmlNewGlobalState();
    if (gs == NULL) {
        return 0;
    }

    klee_make_symbolic(&gs->gs_xmlLastError, sizeof(xmlError), "gs_xmlLastError");

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(&gs->gs_xmlLastError, 0, sizeof(xmlError));

    xmlFreeGlobalState(gs);
    xmlCleanupGlobals();
    return 0;
}