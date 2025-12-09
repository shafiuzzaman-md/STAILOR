#include <libxml/HTMLparser.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    const char *input_html;
    size_t input_len;
    char *output_buf;
    size_t output_len;
    int outlen, inlen;

    klee_make_symbolic(&input_len, sizeof(input_len), "input_len");
    klee_assume(input_len > 0 && input_len < 1024);
    input_html = (char *)malloc(input_len + 1);
    klee_make_symbolic((void *)input_html, input_len, "input_html");
    input_html[input_len] = '\0';

    output_len = 2 * input_len + 10;
    output_buf = (char *)malloc(output_len);

    htmlDocPtr doc = htmlReadMemory(input_html, input_len, NULL, NULL, HTML_PARSE_RECOVER | HTML_PARSE_NOERROR | HTML_PARSE_NOWARNING);
    if (!doc) {
        free((void *)input_html);
        free(output_buf);
        return 0;
    }

    xmlNodePtr root = xmlDocGetRootElement(doc);
    if (!root) {
        xmlFreeDoc(doc);
        free((void *)input_html);
        free(output_buf);
        return 0;
    }

    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) {
        xmlFreeDoc(doc);
        free((void *)input_html);
        free(output_buf);
        return 0;
    }

    int ret = htmlNodeDump(buf, doc, root);
    if (ret < 0) {
        xmlBufferFree(buf);
        xmlFreeDoc(doc);
        free((void *)input_html);
        free(output_buf);
        return 0;
    }

    char *content = (char *)xmlBufferContent(buf);
    unsigned int content_len = xmlBufferLength(buf);

    if (content_len > 0 && output_len > 0) {
        char *out = output_buf;
        char *outend = output_buf + output_len;
        const char *in = content;
        const char *inend = content + content_len;
        const char *processed;
        const char *outstart = out;
        const char *instart = in;

        while (in < inend) {
            if (*in == '&') {
                const xmlEntity *ent = NULL;
                const char *name = in + 1;
                const char *semicolon = strchr(name, ';');
                if (semicolon && semicolon < inend) {
                    char ent_name[64];
                    size_t ent_len = semicolon - name;
                    if (ent_len < sizeof(ent_name) - 1) {
                        memcpy(ent_name, name, ent_len);
                        ent_name[ent_len] = '\0';
                        ent = xmlGetDocEntity(doc, (const xmlChar *)ent_name);
                    }
                }
                if (ent && ent->name) {
                    const char *cp = ent->name;
                    size_t len = strlen(cp);
                    if (out + 2 + len >= outend)
                        break;
                    *out++ = '&';
                    klee_assert(0 && "SAILR_REACH_ASSERT");
                    memcpy(out, cp, len);
                    out += len;
                    *out++ = ';';
                }
                processed = in;
            }
            in++;
        }
        outlen = out - outstart;
        inlen = processed - instart;
    }

    xmlBufferFree(buf);
    xmlFreeDoc(doc);
    free((void *)input_html);
    free(output_buf);
    return 0;
}