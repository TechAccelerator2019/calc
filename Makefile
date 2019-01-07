#how to run it
#http

CC=gcc
CFLAGS= -c -Wall
LFLAGS1= -lm
CFLAGS2= -std=c99 
all: prog
prog: calc.o  helpers.o
	$(CC) calc.o helpers.o  -o prog $(LFLAGS1)
calc.o: calc.c
	$(CC) $(CFLAGS) calc.c
helpers.o: helpers.c
	$(CC) $(CFLAGS) helpers.c
clean:
	rm -rf *.o
