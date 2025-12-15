#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Minimal stub for PyErr_SetString */
void PyErr_SetString(void* exc, const char* msg) {
    (void)exc;
    (void)msg;
}

/* Minimal stub for PyBytes_AsString */
char* PyBytes_AsString(void* obj) {
    (void)obj;
    static char dummy = 'a';
    return &dummy;
}

/* Minimal stub for PyTuple_GET_ITEM */
void* PyTuple_GET_ITEM(void* tuple, int idx) {
    (void)tuple;
    (void)idx;
    static char dummy;
    return &dummy;
}

/* Minimal stub for PyList_GET_ITEM */
void* PyList_GET_ITEM(void* list, int idx) {
    (void)list;
    (void)idx;
    static char dummy;
    return &dummy;
}

/* Function that contains the vulnerable memset call */
int target_function(int count, int is_tuple, void* py_strings) {
    typedef char xmlChar;
    xmlChar **strings;

    strings = (xmlChar **) xmlMalloc(sizeof(xmlChar *) * count);

    if (strings == NULL) {
        PyErr_SetString(NULL, "");
        return -1;
    }

    /* VULNERABLE LINE: memset with count that could be negative or too large */
    memset(strings, 0 , sizeof(xmlChar *) * count);

    {
        int idx;
        for (idx=0; idx < count; ++idx) {
            char* s = PyBytes_AsString
                (is_tuple
                 ? PyTuple_GET_ITEM(py_strings, idx)
                 : PyList_GET_ITEM(py_strings, idx));
            (void)s;
        }
    }
    
    free(strings);
    return 0;
}

int main(void) {
    int count;
    int is_tuple;
    void* py_strings;

    /* Make inputs symbolic */
    klee_make_symbolic(&count, sizeof(count), "count");
    klee_make_symbolic(&is_tuple, sizeof(is_tuple), "is_tuple");
    klee_make_symbolic(&py_strings, sizeof(py_strings), "py_strings");

    /* Assume plausible values to reach the vulnerable line */
    klee_assume(count > 0);  /* malloc will succeed for positive count */
    klee_assume(is_tuple == 0 || is_tuple == 1);

    /* Call the target function */
    int result = target_function(count, is_tuple, py_strings);

    /* Vulnerability assertion: count must be non-negative and reasonable */
    /* For memset OOB, we need to ensure count doesn't cause overflow */
    SAILR_ASSERT(count >= 0 && count <= 1000000);  /* Reasonable upper bound */

    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return result;
}