# compile run.o "object file"
# need includes (aka headers) to be found
clang -c run.c -I/usr/include

# link in another step
# need dependent libraries to be found
clang -o run run.o -L/usr/lib -lz
