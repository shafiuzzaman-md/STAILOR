#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlChar *token;
    xmlChar *token2;
    int token_len, token2_len;

    ctxt = xmlRegNewParserCtxt(NULL);
    if (ctxt == NULL) return 0;

    klee_make_symbolic(&token_len, sizeof(token_len), "token_len");
    klee_make_symbolic(&token2_len, sizeof(token2_len), "token2_len");
    klee_assume(token_len >= 0 && token_len < 1024);
    klee_assume(token2_len >= 0 && token2_len < 1024);

    token = (xmlChar *)xmlMallocAtomic(token_len + 1);
    if (token) {
        klee_make_symbolic(token, token_len + 1, "token");
        token[token_len] = 0;
    }
    token2 = (xmlChar *)xmlMallocAtomic(token2_len + 1);
    if (token2) {
        klee_make_symbolic(token2, token2_len + 1, "token2");
        token2[token2_len] = 0;
    }

    if (token && token2 && ctxt->atom) {
        ctxt->atom->valuep = NULL;
        ctxt->atom->data = NULL;
        ctxt->token = token;
        ctxt->token2 = token2;

        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (token) xmlFree(token);
    if (token2) xmlFree(token2);
    xmlRegFreeParserCtxt(ctxt);
    return 0;
}