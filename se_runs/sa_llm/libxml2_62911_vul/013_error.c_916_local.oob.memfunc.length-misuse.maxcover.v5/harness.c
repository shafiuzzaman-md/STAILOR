#include "klee/klee.h"
#include <libxml/xmlerror.h>
#include <string.h>

int main(void) {
    xmlErrorPtr err = (xmlErrorPtr)malloc(sizeof(xmlError));
    if (!err) return 1;

    // Make fields symbolic to control branching
    char file_sym[256];
    char str1_sym[256];
    char str2_sym[256];
    char str3_sym[256];
    klee_make_symbolic(file_sym, sizeof(file_sym), "file_sym");
    klee_make_symbolic(str1_sym, sizeof(str1_sym), "str1_sym");
    klee_make_symbolic(str2_sym, sizeof(str2_sym), "str2_sym");
    klee_make_symbolic(str3_sym, sizeof(str3_sym), "str3_sym");

    // Initialize error structure with symbolic pointers
    err->domain = 0;
    err->code = XML_ERR_OK;
    err->message = NULL;
    err->level = XML_ERR_NONE;
    err->file = NULL;
    err->line = 0;
    err->str1 = NULL;
    err->str2 = NULL;
    err->str3 = NULL;
    err->int1 = 0;
    err->int2 = 0;
    err->ctxt = NULL;
    err->node = NULL;

    // Conditionally allocate and assign pointers to reach xmlFree calls
    if (klee_int("file_cond")) {
        err->file = (char*)malloc(256);
        if (err->file) strcpy(err->file, file_sym);
    }
    if (klee_int("str1_cond")) {
        err->str1 = (char*)malloc(256);
        if (err->str1) strcpy(err->str1, str1_sym);
    }
    if (klee_int("str2_cond")) {
        err->str2 = (char*)malloc(256);
        if (err->str2) strcpy(err->str2, str2_sym);
    }
    if (klee_int("str3_cond")) {
        err->str3 = (char*)malloc(256);
        if (err->str3) strcpy(err->str3, str3_sym);
    }

    // Simulate the path leading to the memset at line 916
    // This mimics the cleanup in __xmlRaiseError or similar
    if (err->file != NULL)
        xmlFree(err->file);
    if (err->str1 != NULL)
        xmlFree(err->str1);
    if (err->str2 != NULL)
        xmlFree(err->str2);
    if (err->str3 != NULL)
        xmlFree(err->str3);

    // Reachability marker before the vulnerable memset
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(err, 0, sizeof(xmlError));
    err->code = XML_ERR_OK;

    free(err);
    return 0;
}