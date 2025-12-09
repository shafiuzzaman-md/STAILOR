#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>
#include <libxml/xpath.h>
#include <klee/klee.h>

#ifdef LIBXML_DEBUG_ENABLED
#ifdef LIBXML_XPATH_ENABLED

char *xmlXPathDebugDumpObject(xmlXPathObjectPtr cur, int depth) {
    static char line_read[501];
    char *ret;
    size_t len;
    const char *prompt = "XPATH> ";

    fprintf(stdout, "%s", prompt);
    fflush(stdout);
    if (!fgets(line_read, 500, stdin))
        return(NULL);
    line_read[500] = 0;
    len = strlen(line_read);
    ret = (char *) malloc(len + 1);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy (ret, line_read, len + 1);
    }
    return(ret);
#endif
#endif
}

int main(void) {
    char input_buf[501];
    klee_make_symbolic(input_buf, sizeof(input_buf), "input_buf");
    klee_assume(input_buf[500] == '\0');
    FILE *fake_stdin = fmemopen(input_buf, sizeof(input_buf), "r");
    if (!fake_stdin) return 1;
    stdin = fake_stdin;
    xmlXPathDebugDumpObject(NULL, 0);
    fclose(fake_stdin);
    return 0;
}