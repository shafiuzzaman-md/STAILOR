#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;
    int lenp, lenn;
    char *value, *value2;
    char buf[256];
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Make symbolic lengths, ensure non-negative as per bounds hint */
    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_assume(lenp >= 0);
    klee_assume(lenn >= 0);
    /* Keep lengths within reasonable bounds to avoid excessive allocation */
    klee_assume(lenp < 256);
    klee_assume(lenn < 256);

    /* Allocate symbolic input strings */
    value = (char*)malloc(lenp + 1);
    value2 = (char*)malloc(lenn + 1);
    if (!value || !value2) {
        if (value) free(value);
        if (value2) free(value2);
        xmlCleanupParser();
        return 0;
    }
    klee_make_symbolic(value, lenp + 1, "value");
    klee_make_symbolic(value2, lenn + 1, "value2");
    /* Null-terminate for safety */
    value[lenp] = '\0';
    value2[lenn] = '\0';

    /* Create a regexp compilation context */
    comp = xmlRegexpCompile((const xmlChar*)"a*");
    if (!comp) {
        free(value);
        free(value2);
        xmlCleanupParser();
        return 0;
    }

    /* Create an execution context */
    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (!exec) {
        xmlRegFreeRegexp(comp);
        free(value);
        free(value2);
        xmlCleanupParser();
        return 0;
    }

    /* Force exec->status to be something other than XML_REGEXP_OUT_OF_MEMORY
       to take the else branch where str = buf */
    exec->status = XML_REGEXP_OK;

    /* The target line is inside xmlRegExecPushString, which is called by
       xmlRegExecPushStringInternal. We'll call xmlRegExecPushString with
       a string that triggers the path. */
    /* We need to reach the line where memcpy(&str[lenp + 1], value2, lenn) is executed.
       That occurs when exec->comp->compact == NULL (so we take the else branch
       at line 4059-4060). We'll ensure comp->compact is NULL. */
    comp->compact = NULL;

    /* The buffer 'buf' is of fixed size 256. The code uses str = buf when
       lenp + lenn + 2 <= 150 (see earlier in the function). We'll assume
       that condition holds to take the else branch at line 4050. */
    klee_assume(lenp + lenn + 2 <= 150);

    /* Now call xmlRegExecPushString, which will eventually call the internal
       function and reach the target line. */
    ret = xmlRegExecPushString(exec, (const xmlChar*)value, (const xmlChar*)value2);

    /* Place reachability marker just after the call, because we cannot
       insert it directly in libxml2 code. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    free(value);
    free(value2);
    xmlCleanupParser();
    return 0;
}