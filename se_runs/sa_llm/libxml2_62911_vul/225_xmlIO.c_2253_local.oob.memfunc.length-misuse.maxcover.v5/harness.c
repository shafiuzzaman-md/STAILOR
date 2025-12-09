#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <klee/klee.h>

int main(void) {
    xmlCharEncoding enc;
    klee_make_symbolic(&enc, sizeof(enc), "enc");

    xmlParserInputBufferPtr ret = xmlAllocParserInputBuffer(enc);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeParserInputBuffer(ret);
    }
    return 0;
}