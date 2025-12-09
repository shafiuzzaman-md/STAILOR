#include <libxml/xmlwriter.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlTextWriterPtr writer;

    writer = xmlNewTextWriter(NULL);
    if (writer == NULL) {
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeTextWriter(writer);
    return 0;
}