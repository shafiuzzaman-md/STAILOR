#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/nanohttp.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    const char *line;
    char line_buf[256];
    size_t line_len;

    klee_make_symbolic(&line_len, sizeof(line_len), "line_len");
    klee_assume(line_len < 256);
    klee_make_symbolic(line_buf, sizeof(line_buf), "line_buf");
    line_buf[line_len] = '\0';
    line = line_buf;

    xmlNanoHTTPInit();
    xmlNanoHTTPCtxtPtr ctxt = xmlNanoHTTPNew();
    if (ctxt == NULL) {
        return 1;
    }

    xmlNanoHTTPScanAnswer(ctxt, line);

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlNanoHTTPFreeCtxt(ctxt);
    xmlNanoHTTPCleanup();
    return 0;
}