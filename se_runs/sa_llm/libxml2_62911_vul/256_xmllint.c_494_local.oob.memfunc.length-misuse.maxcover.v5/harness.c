#include <libxml/parser.h>
#include <libxml/HTMLparser.h>
#include <string.h>
#include <klee/klee.h>

extern void xmlHTMLEncodeSend(void);

int main(void) {
    xmlInitParser();

    xmlHTMLEncodeSend();

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlCleanupParser();
    return 0;
}