#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlCharEncodingHandlerPtr encoder = NULL;
    xmlOutputBufferPtr ret;

    ret = xmlAllocOutputBufferInternal(encoder);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlOutputBufferClose(ret);
    }

    return 0;
}