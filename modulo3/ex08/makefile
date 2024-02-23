# A Makefile with variables and suffix rules

# variaveis

INCLUDES = test_even.h vec_sum_even.h
SOURCES = test_even.s vec_sum_even.s main.c
OBJFILES = test_even.o vec_sum_even.o main.o
EXEC = ex08

# Suffix rules
.SUFFIXES : .c .o

.SUFFIXES : .s .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<

.s.o:
	gcc -Wall -g -c $<
		
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
${OBJFILES}: ${SOURCES} ${INCLUDES}
run: ${EXEC}
	./${EXEC}
clean:
	rm -f ${OBJFILES} ${EXEC}
