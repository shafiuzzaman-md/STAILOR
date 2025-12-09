#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr regexp;
    const char *pattern;
    size_t pattern_len;

    klee_make_symbolic(&pattern_len, sizeof(pattern_len), "pattern_len");
    if (pattern_len > 1024) pattern_len = 1024;
    char pattern_buf[1025];
    klee_make_symbolic(pattern_buf, pattern_len, "pattern_buf");
    pattern_buf[pattern_len] = '\0';
    pattern = pattern_buf;

    regexp = xmlRegexpCompile((const xmlChar *)pattern);
    if (regexp) {
        xmlRegFreeRegexp(regexp);
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}