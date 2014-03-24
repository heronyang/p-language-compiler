TEST_FILE=input.txt

CC=gcc
CFLAGS=-lfl
LEX=lex

all: lex.yy.c
	$(CC) -o scanner lex.yy.c $(CFLAGS)

lex.yy.c: lextemplate.l
	$(LEX) lextemplate.l

run:
	@./scanner $(TEST_FILE)

clean:
	@rm lex.yy.c scanner
