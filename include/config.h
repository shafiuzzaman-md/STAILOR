#ifndef __CONFIG_H__
#define __CONFIG_H__
#ifdef __GNUC__
  #define LIBXML_ATTR_FORMAT(fmt,args) __attribute__((__format__(__printf__, fmt, args)))
  #define XML_DEPRECATED __attribute__((deprecated))
  #define LIBXML_ATTR_ALLOC_SIZE(x) __attribute__((alloc_size(x)))
#else
  #define LIBXML_ATTR_FORMAT(fmt,args)
  #define XML_DEPRECATED
  #define LIBXML_ATTR_ALLOC_SIZE(x)
#endif
#define LIBXML_STATIC
#define LIBXML_THREAD_ENABLED
#define LIBXML_PUSH_ENABLED
#define LIBXML_OUTPUT_ENABLED
#define HAVE_STDLIB_H 1
#define HAVE_STDARG_H 1
#define HAVE_MALLOC_H 1
#define HAVE_ERRNO_H 1
#endif
