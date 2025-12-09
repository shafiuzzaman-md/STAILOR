#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    char input[1024];
    klee_make_symbolic(input, sizeof(input), "input");
    input[sizeof(input)-1] = '\0';

    xmlDocPtr doc = xmlReadMemory(input, strlen(input), "noname.xml", NULL, 0);
    if (doc == NULL) {
        return 0;
    }

    xmlNodePtr root = xmlDocGetRootElement(doc);
    if (root == NULL) {
        xmlFreeDoc(doc);
        return 0;
    }

    xmlChar *buffer = NULL;
    int buffer_size = 0;
    int curlen = 0;
    int rlen = 0;
    int len = 0;
    int instate = 0;
    char *current = NULL;

    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&instate, sizeof(instate), "instate");

    klee_assume(curlen >= 0);
    klee_assume(rlen >= 0);
    klee_assume(len >= 0);
    klee_assume(instate == 2);

    buffer_size = 256;
    buffer = (xmlChar *)malloc(buffer_size);
    current = (char *)malloc(512);

    if (buffer == NULL || current == NULL) {
        if (buffer) free(buffer);
        if (current) free(current);
        xmlFreeDoc(doc);
        return 0;
    }

    klee_make_symbolic(current, 512, "current");

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

    free(buffer);
    free(current);
    xmlFreeDoc(doc);
    return 0;
}