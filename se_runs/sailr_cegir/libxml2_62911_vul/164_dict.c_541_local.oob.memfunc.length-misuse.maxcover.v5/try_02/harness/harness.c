#include <klee/klee.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

typedef unsigned char xmlChar;

typedef struct {
    unsigned hashValue;
    const xmlChar *name;
} xmlHashedString;

typedef xmlHashedString xmlDictEntry;

typedef struct _xmlDict {
    int ref_counter;
    xmlDictEntry *table;
    size_t size;
    unsigned int nbElems;
    void *strings;
    struct _xmlDict *subdict;
    unsigned seed;
    size_t limit;
} xmlDict;

#define ATTRIBUTE_NO_SANITIZE_INTEGER

static int xmlStrQEqual(const xmlChar *pref, const xmlChar *name, const xmlChar *str) {
    return 0;
}

static xmlDictEntry *
xmlDictFindEntry(const xmlDict *dict, const xmlChar *prefix,
                 const xmlChar *name, int len, unsigned hashValue,
                 int *pfound) {
    xmlDictEntry *entry;
    unsigned mask, pos, displ;
    int found = 0;

    mask = dict->size - 1;
    pos = hashValue & mask;
    entry = &dict->table[pos];

    if (entry->hashValue != 0) {
        displ = 0;
        do {
            if (entry->hashValue == hashValue) {
                if (prefix == NULL) {
                    klee_assert(len < 1024 && "BUG_ASSERT");
                    klee_assert(0 && "REACH_ASSERT");
                    if ((memcmp(entry->name, name, len) == 0) && (entry->name[len] == 0)) {
                        found = 1;
                        break;
                    }
                } else {
                    if (xmlStrQEqual(prefix, name, entry->name)) {
                        found = 1;
                        break;
                    }
                }
            }
            displ++;
            pos++;
            pos &= mask;
            entry = &dict->table[pos];
        } while ((entry->hashValue != 0) && (displ < dict->size));
    }
    if (pfound != NULL)
        *pfound = found;
    return found ? entry : NULL;
}

int main(void) {
    xmlDict dict;
    xmlDictEntry *table;
    xmlChar entry_name_buf[1024];
    xmlChar name_buf[1024];
    int len;
    unsigned hashValue = 12345;
    int found;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1000);
    klee_make_symbolic(entry_name_buf, sizeof(entry_name_buf), "entry_name_buf");
    klee_assume(entry_name_buf[len] == 0);
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");

    dict.size = 1;
    table = (xmlDictEntry *)malloc(sizeof(xmlDictEntry));
    table[0].hashValue = hashValue;
    table[0].name = entry_name_buf;
    dict.table = table;

    xmlDictFindEntry(&dict, NULL, name_buf, len, hashValue, &found);
    free(table);
    return 0;
}