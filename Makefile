# Hi there. This is a makefile for the calc.
# You can use all, calc, or default.
# The make is splitted for compile and link.

CC=gcc
CFLAGS= -c -Wall
PATHTOFILE= /usr/local/bin

all:calc
calc: calc.o helpers.o
	$(CC) calc.o helpers.o -o calc -lm
calc.o: calc.c
	$(CC) $(CFLAGS) calc.c
helpers.o: helpers.c
	$(CC) $(CFLAGS) helpers.c
clean:
	rm -rf *.o
install: all
	cp calc $(PATHTOFILE)	
uninstall: 
	rm -f $(PATHTOFILE)/calc
