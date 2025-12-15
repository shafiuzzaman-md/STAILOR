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

static int xmlStrEqual(const xmlChar *str1, const xmlChar *str2) {
    if (str1 == str2) return 1;
    if (str1 == NULL || str2 == NULL) return 0;
    do {
        if (*str1++ != *str2) return 0;
    } while (*str2++);
    return 1;
}

static int xmlStrQEqual(const xmlChar *pref, const xmlChar *name, const xmlChar *str) {
    if (pref == NULL) return(xmlStrEqual(name, str));
    if (name == NULL) return(0);
    if (str == NULL) return(0);
    do {
        if (*pref++ != *str) return(0);
    } while ((*str++) && (*pref));
    if (*str++ != ':') return(0);
    do {
        if (*name++ != *str) return(0);
    } while (*str++);
    return(1);
}

void *xmlMalloc(size_t size) { return malloc(size); }
void xmlFree(void *ptr) { free(ptr); }
void xmlMutexLock(void *mutex) {}
void xmlMutexUnlock(void *mutex) {}
void xmlInitParser(void) {}
unsigned xmlDictHashName(unsigned seed, const xmlChar* data, size_t maxLen, size_t *plen) {
    *plen = 0;
    if (data) while (data[*plen] && *plen < maxLen) (*plen)++;
    return 0xdeadbeef;
}
unsigned xmlDictHashQName(unsigned seed, const xmlChar *prefix, const xmlChar *name, size_t *pplen, size_t *plen) {
    *pplen = 0;
    *plen = 0;
    return 0xdeadbeef;
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
                    klee_assert(len < strlen(entry->name) && "BUG_ASSERT");
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
            entry++;
            if ((pos & mask) == 0)
                entry = dict->table;
        } while ((entry->hashValue != 0) && (((pos - entry->hashValue) & mask) >= displ));
    }
    *pfound = found;
    return(entry);
}

int main(void) {
    xmlDict dict;
    xmlDictEntry *table;
    xmlDictEntry entry;
    xmlChar name_buf[100];
    xmlChar entry_name_buf[50];
    int len;
    unsigned hashValue;
    int found;

    memset(&dict, 0, sizeof(dict));
    dict.size = 1;
    table = (xmlDictEntry *)xmlMalloc(sizeof(xmlDictEntry));
    memset(table, 0, sizeof(xmlDictEntry));
    dict.table = table;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1000);
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[99] = 0;
    klee_make_symbolic(entry_name_buf, sizeof(entry_name_buf), "entry_name_buf");
    entry_name_buf[49] = 0;
    klee_make_symbolic(&hashValue, sizeof(hashValue), "hashValue");

    entry.hashValue = hashValue;
    entry.name = entry_name_buf;
    table[0] = entry;

    xmlDictFindEntry(&dict, NULL, name_buf, len, hashValue, &found);
    return 0;
}