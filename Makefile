CC=gcc
CFLAGES= -c -Wall
all:prog
prog: calc.o helpers.o
	$(CC) -o mycalc calc.o helpers.o -lm
calc.o: calc.c
	$(CC) $(CFLAGES) calc.c
helper.o: helper.c
	$(CC) $(CFLAGES) helpers.c
clean:
	rm -rf *.o

