CC=gcc

CFLAGS= -c -Wall

all: prog

prog: calc.o helpers.o
	$(CC) -std=c99 -o prog helpers.o  calc.o -lm

calc.o: calc.c
	$(CC) $(CFLAGS) calc.c

helpers.o: helpers.c
	$(CC) $(CFLAGS) helpers.c

install: 
	cp ./prog /usr/local/bin
clean:
	rm -rf *.o

