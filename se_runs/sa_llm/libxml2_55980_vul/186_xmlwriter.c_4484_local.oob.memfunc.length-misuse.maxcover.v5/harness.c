#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 functions needed to reach target */
typedef unsigned char xmlChar;
typedef int xmlError;

#define XML_ERR_NO_MEMORY 1000

static void xmlWriterErrMsg(void *ctx, int error, const char *msg) {
    /* stub - do nothing */
    (void)ctx; (void)error; (void)msg;
}

static void *xmlMalloc(size_t size) {
    return malloc(size);
}

static void xmlFree(void *ptr) {
    free(ptr);
}

/* VA_COPY macro simulation */
#ifdef __va_copy
#define VA_COPY(dest, src) __va_copy(dest, src)
#else
#define VA_COPY(dest, src) (dest = src)
#endif

/* Target function signature from xmlwriter.c */
static xmlChar *xmlTextWriterVSprintf(const char *format, va_list argptr) {
    int count;
    size_t size;
    xmlChar *buf;
    va_list locarg;
    
    size = 1024; /* BUFSIZ */
    buf = (xmlChar *)xmlMalloc(size);
    if (buf == NULL) {
        xmlWriterErrMsg(NULL, XML_ERR_NO_MEMORY,
                        "xmlTextWriterVSprintf : out of memory!\n");
        return NULL;
    }
    
    /* TARGET LINE 4484 */
    VA_COPY(locarg, argptr);
    
    /* Vulnerability assertion: vsnprintf may write beyond buffer if count > size */
    SAILR_ASSERT(count <= size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual loop - we'll never execute it due to the assert above */
    while (((count = vsnprintf((char *)buf, size, format, locarg)) < 0)
           || (count == size - 1) || (count == size) || (count > size)) {
        va_end(locarg);
        xmlFree(buf);
        size += 1024; /* BUFSIZ */
        buf = (xmlChar *)xmlMalloc(size);
        if (buf == NULL) {
            xmlWriterErrMsg(NULL, XML_ERR_NO_MEMORY,
                            "xmlTextWriterVSprintf : out of memory!\n");
            return NULL;
        }
        VA_COPY(locarg, argptr);
    }
    
    va_end(locarg);
    return buf;
}

/* Wrapper to call the target function */
static void call_xmlTextWriterVSprintf(const char *format, ...) {
    va_list args;
    xmlChar *result;
    
    va_start(args, format);
    result = xmlTextWriterVSprintf(format, args);
    va_end(args);
    
    if (result) {
        xmlFree(result);
    }
}

int main(void) {
    /* Make format string symbolic to explore different paths */
    char format[32];
    klee_make_symbolic(format, sizeof(format), "format");
    
    /* Ensure format is null-terminated */
    format[sizeof(format)-1] = '\0';
    
    /* Make some symbolic arguments for variadic parameters */
    int arg1, arg2;
    char arg3[16];
    
    klee_make_symbolic(&arg1, sizeof(arg1), "arg1");
    klee_make_symbolic(&arg2, sizeof(arg2), "arg2");
    klee_make_symbolic(arg3, sizeof(arg3), "arg3");
    arg3[sizeof(arg3)-1] = '\0';
    
    /* Call the target function with symbolic inputs */
    call_xmlTextWriterVSprintf(format, arg1, arg2, arg3);
    
    return 0;
}