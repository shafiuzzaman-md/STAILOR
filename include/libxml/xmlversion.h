#ifndef __XML_VERSION_H__
#define __XML_VERSION_H__
#include <libxml/xmlexports.h>
#ifdef __cplusplus
extern "C" {
#endif
#define LIBXML_DOTTED_VERSION "2.9.14"
#define LIBXML_VERSION 20914
#define LIBXML_VERSION_STRING "20914"
#define LIBXML_VERSION_EXTRA "-GITv2.9.14"
#define LIBXML_MODULE_EXTENSION ".so"
#define LIBXML_THREAD_ENABLED
#define LIBXML_PUSH_ENABLED
XMLPUBFUN void XMLCALL xmlCheckVersion(int version);
#ifdef __cplusplus
}
#endif
#endif
