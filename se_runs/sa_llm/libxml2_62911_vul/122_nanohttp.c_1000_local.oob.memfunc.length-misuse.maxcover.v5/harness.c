#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include "klee/klee.h"

#ifdef SUPPORT_IP6
#include <netinet/in.h>
#endif

typedef int SOCKET;

void xmlNanoHTTPMethodRedir(const char *URL, const char *method, const char *input,
                            char **contentType, char **redir,
                            const char *headers, int ilen);

int main(void) {
    char *URL;
    char *method;
    char *input;
    char **contentType;
    char **redir;
    char *headers;
    int ilen;

    URL = klee_make_symbolic_str(256);
    method = klee_make_symbolic_str(16);
    input = klee_make_symbolic_str(1024);
    contentType = (char **)malloc(sizeof(char *));
    redir = (char **)malloc(sizeof(char *));
    headers = klee_make_symbolic_str(512);
    
    klee_make_symbolic(&ilen, sizeof(ilen), "ilen");
    klee_assume(ilen >= 0);
    klee_assume(ilen < 1024);

    xmlNanoHTTPMethodRedir(URL, method, input, contentType, redir, headers, ilen);

    free(contentType);
    free(redir);
    
    return 0;
}

void xmlNanoHTTPMethodRedir(const char *URL, const char *method, const char *input,
                            char **contentType, char **redir,
                            const char *headers, int ilen) {
    struct sockaddr_in sockin;
#ifdef SUPPORT_IP6
    struct sockaddr_in6 sockin6;
#endif
    SOCKET s;

    memset(&sockin, 0, sizeof(sockin));

    SAILR_ASSERT(sizeof(sockin) >= sizeof(sockin));
    
    klee_assert(0 && "SAILR_REACH_ASSERT");

#if defined(SUPPORT_IP6)
    {
        int status;
        struct addrinfo hints, *res, *result;
    }
#endif
}