# https://github.com/BankHapoalim/calc.git
# to run this code type make in command line and see prog file create
CC=gcc
CFLAGES= -c -Wall
all: prog
prog: calc.o helpers.o 
	$(CC) calc.o helpers.o -lm -o prog
calc.o: calc.c
	$(CC) $(CFLAGES) calc.c
helpers.o: helpers.c
	$(CC) $(CFLAGES) helpers.c
clean:
	rm -rf *.o
	
