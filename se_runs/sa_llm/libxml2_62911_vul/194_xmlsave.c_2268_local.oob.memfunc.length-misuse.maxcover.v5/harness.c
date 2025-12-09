#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlBufferPtr buf;
    xmlNodePtr cur;
    int level;
    int format;
    const char* encoding;
    xmlSaveCtxt ctxt;

    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    klee_make_symbolic(&level, sizeof(level), "level");
    klee_make_symbolic(&format, sizeof(format), "format");
    klee_make_symbolic(&encoding, sizeof(encoding), "encoding");

    xmlInitParser();

    if ((buf == NULL) || (cur == NULL)) return 0;

    if (encoding == NULL)
        encoding = "UTF-8";

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(&ctxt, 0, sizeof(ctxt));
    ctxt.buf = buf;
    ctxt.level = level;
    ctxt.format = format ? 1 : 0;
    ctxt.encoding = (const xmlChar *) encoding;
    xmlSaveCtxtInit(&ctxt);
    ctxt.options |= XML_SAVE_AS_XML;

    return 0;
}