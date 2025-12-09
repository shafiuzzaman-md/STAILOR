#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/uri.h>
#include "klee/klee.h"

int main(void) {
    const char *uri_string;
    char buf[1024];
    size_t len;
    xmlURIPtr uri;

    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");

    if (len > sizeof(buf) - 1) {
        len = sizeof(buf) - 1;
    }
    buf[len] = '\0';
    uri_string = buf;

    uri = xmlParseURI(uri_string);
    if (uri == NULL) {
        return 0;
    }

    char *uri_reconstructed = xmlSaveUri(uri);
    if (uri_reconstructed != NULL) {
        free(uri_reconstructed);
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlFreeURI(uri);
    return 0;
}