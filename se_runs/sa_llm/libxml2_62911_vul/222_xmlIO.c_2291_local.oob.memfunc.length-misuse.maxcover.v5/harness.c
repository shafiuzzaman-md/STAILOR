#include "klee/klee.h"
#include <libxml/xmlIO.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>

int main(void) {
    xmlCharEncodingHandlerPtr encoder = NULL;
    xmlOutputBufferPtr ret;

    ret = xmlAllocOutputBuffer(encoder);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlOutputBufferClose(ret);
    }

    return 0;
}