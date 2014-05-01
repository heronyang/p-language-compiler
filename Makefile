TEST_FILE=input.txt

CC=gcc
CFLAGS=-lfl
LEX=lex
YACC=yacc

all: lex.yy.c
	$(CC) -o scanner lex.yy.c $(CFLAGS)

parser: parser.y
	$(YACC) -d -v $<

lex.yy.c: lex.l
	$(LEX) lex.l

run:
	@./scanner $(TEST_FILE)

clean:
	@rm lex.yy.c scanner $(TEST_RESULT) *.txt y.tab.*
