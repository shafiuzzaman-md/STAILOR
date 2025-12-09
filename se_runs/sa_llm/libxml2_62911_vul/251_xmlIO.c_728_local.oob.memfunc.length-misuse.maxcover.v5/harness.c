#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int main(void) {
    int fd;
    char buffer[1024];
    int len;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= 1024);

    fd = open("/dev/zero", O_RDONLY);
    if (fd < 0) {
        return 1;
    }

    xmlRegisterInputCallbacks(xmlFdRead, NULL, NULL, NULL, (void *)(ptrdiff_t)fd);

    xmlParserInputBufferPtr input = xmlAllocParserInputBuffer(XML_CHAR_ENCODING_NONE);
    if (input == NULL) {
        close(fd);
        return 1;
    }

    input->context = (void *)(ptrdiff_t)fd;
    input->readcallback = xmlFdRead;

    int ret = xmlFdRead((void *)(ptrdiff_t)fd, buffer, len);
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlFreeParserInputBuffer(input);
    close(fd);
    return 0;
}