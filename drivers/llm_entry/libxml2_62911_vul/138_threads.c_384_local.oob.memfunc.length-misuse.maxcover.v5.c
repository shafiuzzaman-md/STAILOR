#include <klee/klee.h>
#include "threads.h"

int main() {
    int result = xmlGetThreadId();
    return 0;
}