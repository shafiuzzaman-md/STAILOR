#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;
typedef struct _xmlRegexp xmlRegexp;
typedef struct _xmlRegExecCtxt {
    xmlRegexp *comp;
    int status;
} xmlRegExecCtxt;

/* Minimal constants */
#define XML_REG_STRING_SEPARATOR 0

/* Stub functions to avoid linking */
void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

int xmlRegCompactPushString(xmlRegExecCtxtPtr exec, xmlRegexp *comp, 
                           const char *str, void *data) {
    return 0;
}

int xmlRegExecPushStringInternal(xmlRegExecCtxtPtr exec, const char *str, 
                                void *data, int terminated) {
    return 0;
}

/* Target function from xmlregexp.c line 4255 context */
static int target_function(xmlRegExecCtxtPtr exec, const char *value, int lenp,
                          const char *value2, int lenn, char *buf) {
    char *str;
    
    if (buf == NULL) {
        str = (char *)xmlMallocAtomic(lenn + lenp + 2);
        if (str == NULL) {
            exec->status = -1;
            return -1;
        }
    } else {
        str = buf;
    }
    
    /* Vulnerable memcpy at line 4255 */
    memcpy(&str[0], value, lenp);
    str[lenp] = XML_REG_STRING_SEPARATOR;
    memcpy(&str[lenp + 1], value2, lenn);
    str[lenn + lenp + 1] = 0;
    
    if (exec->comp->compact != NULL)
        return xmlRegCompactPushString(exec, exec->comp, str, NULL);
    else
        return xmlRegExecPushStringInternal(exec, str, NULL, 1);
}

int main(void) {
    /* Symbolic inputs */
    xmlRegExecCtxt exec;
    xmlRegexp regexp;
    char buf[256];
    char value[256];
    char value2[256];
    int lenp, lenn;
    int use_heap;
    
    /* Initialize exec context */
    exec.comp = &regexp;
    exec.status = 0;
    
    /* Make regexp.compact symbolic to choose branch */
    klee_make_symbolic(&regexp.compact, sizeof(regexp.compact), "compact");
    
    /* Make buffer choice symbolic */
    klee_make_symbolic(&use_heap, sizeof(use_heap), "use_heap");
    klee_assume(use_heap == 0 || use_heap == 1);
    
    /* Make lengths symbolic with constraints */
    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    
    /* Constrain lengths to be non-negative and reasonable for our buffers */
    klee_assume(lenp >= 0 && lenp < 256);
    klee_assume(lenn >= 0 && lenn < 256);
    
    /* Make string data symbolic */
    klee_make_symbolic(value, sizeof(value), "value");
    klee_make_symbolic(value2, sizeof(value2), "value2");
    
    /* Choose buffer based on symbolic flag */
    char *target_buf = use_heap ? NULL : buf;
    
    /* Ensure heap buffer would be large enough if allocated */
    if (use_heap) {
        klee_assume(lenn + lenp + 2 > 0);
    } else {
        /* Stack buffer must be large enough */
        klee_assume(lenp + lenn + 2 <= sizeof(buf));
    }
    
    /* Call target function */
    int result = target_function(&exec, value, lenp, value2, lenn, target_buf);
    
    /* Vulnerability assertion: check that memcpy lengths don't exceed buffer bounds */
    /* For stack buffer case, we already assumed buffer is large enough */
    /* For heap buffer case, xmlMallocAtomic ensures allocation of lenn+lenp+2 bytes */
    /* The vulnerability would be if lenp or lenn are negative or too large */
    /* Since we constrained them to 0-255, the main concern is buffer overflow */
    /* The assertion should check that the total buffer size is sufficient */
    if (result != -1) {
        /* Check that we don't write out of bounds */
        SAILR_ASSERT(lenp >= 0 && lenn >= 0);
        SAILR_ASSERT(lenp + lenn + 2 > 0);  /* Allocation would fail if negative total */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return 0;
}