CC=gcc
CFLAGS= -c -Wall
all: calc
calc: calc.o helpers.o
	$(CC) calc.o helpers.o -o calc -lm
calc.o: calc.c
	$(CC) $(CFLAGS) calc.c
helper.o: helpers.c
	$(CC) $(CFLAGS) helpers.c
clean:
	rm -rf *.o
install:
	cp ./calc /usr/local/bin
