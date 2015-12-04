#include <stdio.h> // C standard lib
#include <zlib.h> //

/*

# compiles and links to produce the program `run`
clang -o run run.c

# compile run.o "object file"
# need includes (aka headers) to be found
clang -c run.c -I/usr/include


# link in another step
# need dependent libraries to be found
clang -o run run.o -L/usr/lib -lz

*/

int main() {
    z_stream inflate_s;
    inflate_s.zalloc = Z_NULL;
    inflateEnd(&inflate_s);
    printf("hello world%i",inflate_s.avail_in);
    return 0;
}