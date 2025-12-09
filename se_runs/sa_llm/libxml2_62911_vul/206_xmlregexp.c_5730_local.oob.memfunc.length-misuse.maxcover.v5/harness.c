#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    const xmlChar* pattern;
    size_t pattern_len;
    xmlChar token_buf[256];
    xmlChar token2_buf[256];
    size_t token_len, token2_len;

    klee_make_symbolic(&token_len, sizeof(token_len), "token_len");
    klee_make_symbolic(&token2_len, sizeof(token2_len), "token2_len");
    klee_assume(token_len < 256);
    klee_assume(token2_len < 256);
    klee_make_symbolic(token_buf, sizeof(token_buf), "token_buf");
    klee_make_symbolic(token2_buf, sizeof(token2_buf), "token2_buf");
    token_buf[token_len] = 0;
    token2_buf[token2_len] = 0;

    pattern_len = token_len + token2_len + 2;
    pattern = (xmlChar*) xmlMallocAtomic(pattern_len + 1);
    if (!pattern) return 0;
    memcpy((void*)pattern, token_buf, token_len);
    pattern[token_len] = '|';
    memcpy((void*)&pattern[token_len + 1], token2_buf, token2_len);
    pattern[pattern_len] = 0;

    comp = xmlRegexpCompile(pattern);
    if (comp) xmlRegFreeRegexp(comp);
    xmlFree((void*)pattern);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}