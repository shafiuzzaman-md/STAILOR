#include <klee/klee.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stddef.h>

typedef unsigned char xmlChar;
typedef struct {
    unsigned hashValue;
    const xmlChar *name;
} xmlHashedString;
typedef xmlHashedString xmlDictEntry;
struct _xmlDict {
    int ref_counter;
    xmlDictEntry *table;
    size_t size;
    unsigned int nbElems;
    void *strings;
    struct _xmlDict *subdict;
    unsigned seed;
    size_t limit;
};
typedef struct _xmlDict xmlDict;

#define ATTRIBUTE_NO_SANITIZE_INTEGER

static int xmlStrQEqual(const xmlChar *pref, const xmlChar *name, const xmlChar *str) {
    return 0;
}

ATTRIBUTE_NO_SANITIZE_INTEGER
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
                    klee_assert(len < 256 && "BUG_ASSERT: OOB access on entry->name");
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
    if (found)
        return entry;
    return NULL;
}

int main(void) {
    xmlDict dict;
    xmlDictEntry *table;
    xmlChar entry_name_buf[256];
    xmlChar name_buf[256];
    int len;
    unsigned hashValue;
    int pfound;
    const xmlChar *prefix = NULL;

    dict.size = 8;
    table = (xmlDictEntry *)malloc(dict.size * sizeof(xmlDictEntry));
    memset(table, 0, dict.size * sizeof(xmlDictEntry));
    dict.table = table;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_make_symbolic(entry_name_buf, sizeof(entry_name_buf), "entry_name_buf");
    entry_name_buf[255] = 0;
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    klee_make_symbolic(&hashValue, sizeof(hashValue), "hashValue");

    table[0].hashValue = hashValue;
    table[0].name = entry_name_buf;

    xmlDictFindEntry(&dict, prefix, name_buf, len, hashValue, &pfound);
    return 0;
}