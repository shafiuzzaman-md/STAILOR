#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (buf == NULL) return 0;

    unsigned int newSize;
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    klee_assume(newSize > 0);
    klee_assume(newSize <= 1024);

    unsigned int use;
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_assume(use >= 0);
    klee_assume(use < newSize);

    buf->use = use;
    buf->size = use + 1;
    buf->content = (xmlChar*) xmlMallocAtomic(buf->size);
    if (buf->content == NULL) {
        xmlBufferFree(buf);
        return 0;
    }
    buf->content[use] = 0;

    xmlChar* rebuf = (xmlChar*) xmlMallocAtomic(newSize);
    if (rebuf != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(rebuf, buf->content, buf->use);
        xmlFree(buf->content);
        rebuf[buf->use] = 0;
    }

    if (rebuf == NULL) {
        xmlTreeErrMemory("growing buffer");
    }

    if (rebuf) xmlFree(rebuf);
    xmlBufferFree(buf);
    return 0;
}