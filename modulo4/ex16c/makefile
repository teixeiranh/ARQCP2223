# A Makefile with variables and suffix rules

# variaveis

INCLUDES = join_bits.h mixed_sum.h
SOURCES = join_bits.s mixed_sum.s main.c
OBJFILES = join_bits.o mixed_sum.o main.o
EXEC = ex16c

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
