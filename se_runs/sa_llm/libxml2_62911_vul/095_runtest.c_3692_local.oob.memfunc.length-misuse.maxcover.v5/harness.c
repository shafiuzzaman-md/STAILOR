#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <glob.h>
#include <libxml/xmlversion.h>
#include <libxml/parser.h>
#include <libxml/relaxng.h>
#include "klee/klee.h"

int main(void) {
    xmlRelaxNGPtr schemas = NULL;
    char base[512];
    char prefix[512];
    char pattern[512];
    glob_t globbuf;
    int i;
    int len;

    klee_make_symbolic(base, sizeof(base), "base");
    base[sizeof(base) - 1] = '\0';

    len = strlen(base);
    if ((len > 499) || (len < 5)) {
        xmlRelaxNGFree(schemas);
        return -1;
    }
    len -= 4;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(prefix, base, len);
    prefix[len] = 0;

    if (snprintf(pattern, 499, "./test/relaxng/%s_?.xml", prefix) >= 499)
        pattern[499] = 0;

    globbuf.gl_offs = 0;
    glob(pattern, GLOB_DOOFFS, NULL, &globbuf);
    for (i = 0; i < globbuf.gl_pathc; i++) {
        const char *filename = globbuf.gl_pathv[i];
        xmlDocPtr doc;
        xmlRelaxNGValidCtxtPtr ctxt;
        int ret;

        doc = xmlReadFile(filename, NULL, 0);
        if (doc == NULL) {
            continue;
        }

        ctxt = xmlRelaxNGNewValidCtxt(schemas);
        if (ctxt == NULL) {
            xmlFreeDoc(doc);
            continue;
        }

        ret = xmlRelaxNGValidateDoc(ctxt, doc);
        xmlRelaxNGFreeValidCtxt(ctxt);
        xmlFreeDoc(doc);
    }

    if (globbuf.gl_pathc > 0) {
        globfree(&globbuf);
    }

    xmlRelaxNGFree(schemas);
    xmlCleanupParser();
    return 0;
}