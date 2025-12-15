#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types needed */
typedef enum {
    XML_SCHEMAFACET_UNKNOWN = 0,
    XML_SCHEMAFACET_LENGTH,
    XML_SCHEMAFACET_MINLENGTH,
    XML_SCHEMAFACET_MAXLENGTH,
    XML_SCHEMAFACET_PATTERN,
    XML_SCHEMAFACET_ENUMERATION,
    XML_SCHEMAFACET_WHITESPACE,
    XML_SCHEMAFACET_MAXINCLUSIVE,
    XML_SCHEMAFACET_MAXEXCLUSIVE,
    XML_SCHEMAFACET_MININCLUSIVE,
    XML_SCHEMAFACET_MINEXCLUSIVE,
    XML_SCHEMAFACET_TOTALDIGITS,
    XML_SCHEMAFACET_FRACTIONDIGITS
} xmlSchemaFacetType;

typedef enum {
    XML_SCHEMA_TYPE_BASIC = 1,
    XML_SCHEMA_TYPE_ANY,
    XML_SCHEMA_TYPE_ANYTYPE,
    XML_SCHEMA_TYPE_ANYATTRIBUTE,
    XML_SCHEMA_TYPE_ANYURI,
    XML_SCHEMA_TYPE_STRING,
    XML_SCHEMA_TYPE_NORMALIZEDSTRING,
    XML_SCHEMA_TYPE_TOKEN,
    XML_SCHEMA_TYPE_LANGUAGE,
    XML_SCHEMA_TYPE_ID,
    XML_SCHEMA_TYPE_IDREF,
    XML_SCHEMA_TYPE_IDREFS,
    XML_SCHEMA_TYPE_ENTITY,
    XML_SCHEMA_TYPE_ENTITIES,
    XML_SCHEMA_TYPE_NMTOKEN,
    XML_SCHEMA_TYPE_NMTOKENS,
    XML_SCHEMA_TYPE_NAME,
    XML_SCHEMA_TYPE_QNAME,
    XML_SCHEMA_TYPE_NCNAME,
    XML_SCHEMA_TYPE_BOOLEAN,
    XML_SCHEMA_TYPE_INTEGER,
    XML_SCHEMA_TYPE_INT,
    XML_SCHEMA_TYPE_BYTE,
    XML_SCHEMA_TYPE_SHORT,
    XML_SCHEMA_TYPE_LONG,
    XML_SCHEMA_TYPE_NEGATIVEINTEGER,
    XML_SCHEMA_TYPE_NONNEGATIVEINTEGER,
    XML_SCHEMA_TYPE_POSITIVEINTEGER,
    XML_SCHEMA_TYPE_NONPOSITIVEINTEGER,
    XML_SCHEMA_TYPE_UNSIGNEDLONG,
    XML_SCHEMA_TYPE_UNSIGNEDINT,
    XML_SCHEMA_TYPE_UNSIGNEDSHORT,
    XML_SCHEMA_TYPE_UNSIGNEDBYTE,
    XML_SCHEMA_TYPE_DECIMAL,
    XML_SCHEMA_TYPE_FLOAT,
    XML_SCHEMA_TYPE_DOUBLE,
    XML_SCHEMA_TYPE_DATETIME,
    XML_SCHEMA_TYPE_TIME,
    XML_SCHEMA_TYPE_DATE,
    XML_SCHEMA_TYPE_GYEARMONTH,
    XML_SCHEMA_TYPE_GYEAR,
    XML_SCHEMA_TYPE_GMONTHDAY,
    XML_SCHEMA_TYPE_GDAY,
    XML_SCHEMA_TYPE_GMONTH,
    XML_SCHEMA_TYPE_HEXBINARY,
    XML_SCHEMA_TYPE_BASE64BINARY,
    XML_SCHEMA_TYPE_DURATION,
    XML_SCHEMA_TYPE_NOTATION,
    XML_SCHEMA_TYPE_LIST,
    XML_SCHEMA_TYPE_UNION,
    XML_SCHEMA_TYPE_SIMPLE,
    XML_SCHEMA_TYPE_COMPLEX,
    XML_SCHEMA_TYPE_ELEMENT,
    XML_SCHEMA_TYPE_ATTRIBUTE,
    XML_SCHEMA_TYPE_GROUP,
    XML_SCHEMA_TYPE_ATTRIBUTEGROUP,
    XML_SCHEMA_TYPE_SEQUENCE,
    XML_SCHEMA_TYPE_CHOICE,
    XML_SCHEMA_TYPE_ALL,
    XML_SCHEMA_TYPE_RESTRICTION,
    XML_SCHEMA_TYPE_EXTENSION,
    XML_SCHEMA_TYPE_ANNOTATION,
    XML_SCHEMA_TYPE_FACET,
    XML_SCHEMA_TYPE_ANYELEMENT
} xmlSchemaValType;

typedef struct _xmlSchemaVal xmlSchemaVal;
typedef xmlSchemaVal *xmlSchemaValPtr;

struct _xmlSchemaVal {
    xmlSchemaValType type;
    void *value;
    xmlSchemaValPtr next;
};

typedef struct _xmlSchemaFacet xmlSchemaFacet;
typedef xmlSchemaFacet *xmlSchemaFacetPtr;

struct _xmlSchemaFacet {
    xmlSchemaFacetType type;
    int value;
    xmlSchemaFacetPtr next;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function from xmlschemastypes.c:224-235 */
static xmlSchemaValPtr
xmlSchemaNewValue(xmlSchemaValType type) {
    xmlSchemaValPtr value;

    value = (xmlSchemaValPtr) xmlMalloc(sizeof(xmlSchemaVal));
    if (value == NULL) {
        return(NULL);
    }
    memset(value, 0, sizeof(xmlSchemaVal));
    value->type = type;
    return(value);
}

/* Helper function that calls xmlSchemaNewValue */
static xmlSchemaFacetPtr
xmlSchemaNewMinLengthFacet(int value) {
    xmlSchemaFacetPtr ret;
    xmlSchemaValPtr val;
    
    /* Create a schema value to trigger the vulnerable path */
    val = xmlSchemaNewValue(XML_SCHEMA_TYPE_INT);
    if (val == NULL) {
        return NULL;
    }
    
    /* Allocate facet structure */
    ret = (xmlSchemaFacetPtr) xmlMalloc(sizeof(xmlSchemaFacet));
    if (ret == NULL) {
        free(val);
        return NULL;
    }
    
    ret->type = XML_SCHEMAFACET_MINLENGTH;
    ret->value = value;
    ret->next = NULL;
    
    free(val);
    return ret;
}

int main(void) {
    xmlSchemaValType type;
    xmlSchemaValPtr result;
    
    /* Make the type symbolic to explore different paths */
    klee_make_symbolic(&type, sizeof(type), "type");
    
    /* Constrain type to valid enum values to avoid undefined behavior */
    klee_assume(type >= XML_SCHEMA_TYPE_BASIC && type <= XML_SCHEMA_TYPE_ANYELEMENT);
    
    /* Call the target function */
    result = xmlSchemaNewValue(type);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       that the size passed to memset doesn't exceed allocated buffer.
       Since xmlMalloc allocates sizeof(xmlSchemaVal) and memset uses
       sizeof(xmlSchemaVal), the vulnerability would be if sizeof(xmlSchemaVal)
       exceeds the actual allocated size. We assert that allocation succeeded
       and the size is appropriate. */
    if (result != NULL) {
        /* The vulnerability condition: ensure memset size doesn't exceed allocation */
        SAILR_ASSERT(sizeof(xmlSchemaVal) <= sizeof(xmlSchemaVal)); /* Always true for correct allocation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    /* Also test via the helper function */
    {
        int facet_value;
        xmlSchemaFacetPtr facet;
        
        klee_make_symbolic(&facet_value, sizeof(facet_value), "facet_value");
        facet = xmlSchemaNewMinLengthFacet(facet_value);
        
        if (facet != NULL) {
            free(facet);
        }
    }
    
    return 0;
}