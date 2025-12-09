#include <libxml/xmlmemory.h>
#include <libxml/xmlstring.h>
#include <klee/klee.h>

int main(void) {
    xmlChar str1_buf[256];
    xmlChar str2_buf[256];
    int size;
    int len;

    klee_make_symbolic(str1_buf, sizeof(str1_buf), "str1_buf");
    klee_make_symbolic(str2_buf, sizeof(str2_buf), "str2_buf");
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&len, sizeof(len), "len");

    str1_buf[255] = 0;
    str2_buf[255] = 0;

    xmlChar* ret = xmlStrncatNew(str1_buf, str2_buf, len);

    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFree(ret);
    }

    return 0;
}