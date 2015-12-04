#include <stdio.h> // C standard lib
#include <zlib.h> //

int main() {
    z_stream inflate_s;
    inflate_s.zalloc = Z_NULL;
    inflateEnd(&inflate_s);
    printf("hello world");
    return 0;
}