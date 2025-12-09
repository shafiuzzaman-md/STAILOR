#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include "klee/klee.h"

int main(void) {
    const char* xml_data;
    int xml_size;
    xmlTextReaderPtr reader;
    int ret;
    char buffer[1024];
    int instate;
    int curlen;
    int len;
    int rlen;
    char* current;

    xml_data = "<root>test</root>";
    xml_size = strlen(xml_data);

    reader = xmlReaderForMemory(xml_data, xml_size, NULL, NULL, 0);
    if (reader == NULL) {
        return 1;
    }

    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&current, sizeof(current), "current");

    klee_assume(instate == 2);
    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curlen >= 0);
    klee_assume(len >= rlen);

    if (instate == 2) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            instate = 3;
            curlen = 0;
        } else {
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    }

    xmlFreeTextReader(reader);
    xmlCleanupParser();
    return 0;
}