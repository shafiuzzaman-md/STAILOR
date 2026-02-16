/*
 * ssample types_extra.h — Global extra type definitions
 *
 * Copy to: se-config/types_extra.h
 *
 * This is #include'd in the harness source AFTER auto-extracted types
 * for ALL specs. Use for library-wide typedefs the extractor misses.
 */

#ifndef TYPES_EXTRA_H
#define TYPES_EXTRA_H

/* Example: common typedefs for libxml2 */
typedef unsigned char xmlChar;

/* Example: opaque struct forward declarations */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;

typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

/* Example: macro constants */
#ifndef XML_MAX_TEXT_LENGTH
#define XML_MAX_TEXT_LENGTH 10000000
#endif

#ifndef XML_PARSER_BIG_BUFFER_SIZE
#define XML_PARSER_BIG_BUFFER_SIZE 300
#endif

/* Example: enum that functions depend on */
typedef enum {
    XML_PARSER_EOF = -1,
    XML_PARSER_START = 0,
    XML_PARSER_CONTENT = 7,
    XML_PARSER_CDATA_SECTION = 8
} xmlParserInputState;

#endif /* TYPES_EXTRA_H */
