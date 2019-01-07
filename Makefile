# Makefile for calc file
# https://github.com/BankHApoalim/calc/git

CC=gcc
CFLAGS= -c  -std=c99
all: prog
prog: calc.o helpers.o
	$(CC) calc.o helpers.o  -lm
calc.o: calc.c
	$(CC) $(CFLAGS) calc.c
helpers.o: helpers.c
	$(CC) $(CFLAGS) helpers.c

clean:
	rm -rf *.o
