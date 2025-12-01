// Auto-generated LLM_ENTRY driver
// Project   : libxml2_62911_vul
// Spec ID   : 002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5
// Spec file : specs/libxml2_62911_vul/002_HTMLtree.c_416_local.oob.memfunc.length-misuse.maxcover.v5.json
// Source    : /mnt/WorkDrive/SAILR/dataset/62911/libxml2_62911_vul/HTMLtree.c
// Entry     : htmlGetMetaEncoding

#include "HTMLtree.c"

int main() {
    htmlDocPtr doc = NULL;
    const xmlChar *encoding = htmlGetMetaEncoding(doc);
    return 0;
}
