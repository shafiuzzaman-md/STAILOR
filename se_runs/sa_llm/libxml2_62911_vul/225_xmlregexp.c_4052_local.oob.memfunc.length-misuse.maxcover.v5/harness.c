#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegExecCtxtPtr exec;
    xmlChar *value, *value2;
    xmlChar buf[1024];
    int lenp, lenn;
    void *data = NULL;

    exec = xmlRegNewExecCtxt(NULL, NULL, NULL, 0);
    if (exec == NULL) return 0;

    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    klee_assume(lenp >= 0 && lenp < 512);
    klee_assume(lenn >= 0 && lenn < 512);

    value = (xmlChar *) xmlMallocAtomic(lenp + 1);
    if (value == NULL) {
        xmlRegFreeExecCtxt(exec);
        return 0;
    }
    klee_make_symbolic(value, lenp + 1, "value");
    value[lenp] = 0;

    value2 = (xmlChar *) xmlMallocAtomic(lenn + 1);
    if (value2 == NULL) {
        xmlFree(value);
        xmlRegFreeExecCtxt(exec);
        return 0;
    }
    klee_make_symbolic(value2, lenn + 1, "value2");
    value2[lenn] = 0;

    exec->comp = (xmlRegexpPtr) xmlMalloc(sizeof(xmlRegexp));
    if (exec->comp == NULL) {
        xmlFree(value);
        xmlFree(value2);
        xmlRegFreeExecCtxt(exec);
        return 0;
    }
    exec->comp->compact = NULL;

    xmlChar *str;
    if (lenp + lenn + 2 > 1024) {
        str = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
        if (str == NULL) {
            exec->status = XML_REGEXP_OUT_OF_MEMORY;
            xmlFree(value);
            xmlFree(value2);
            xmlFree(exec->comp);
            xmlRegFreeExecCtxt(exec);
            return 0;
        }
    } else {
        str = buf;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(&str[0], value, lenp);
    str[lenp] = XML_REG_STRING_SEPARATOR;
    memcpy(&str[lenp + 1], value2, lenn);
    str[lenn + lenp + 1] = 0;

    xmlFree(value);
    xmlFree(value2);
    if (str != buf) xmlFree(str);
    xmlFree(exec->comp);
    xmlRegFreeExecCtxt(exec);
    return 0;
}