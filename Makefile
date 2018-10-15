CC=gcc
CFLAGS=-W -Wall -ansi -pedantic
EXEC=hello.exe
all: $(EXEC)
hello.exe: hello.o message.o print.o
	gcc -o hello.exe hello.o message.o print.o
hello.o: hello.c message.h print.h 
	gcc -c hello.c
message.o: message.c message.h
	gcc -c message.c
print.o: print.c print.h
	gcc -c print.c
clean: 
	rm -rf *.o
