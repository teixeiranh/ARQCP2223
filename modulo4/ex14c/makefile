# A Makefile with variables and suffix rules

# variaveis

INCLUDES = reset_bit.h reset_2bits.h
SOURCES = reset_bit.s reset_2bits.s main.c
OBJFILES = reset_bit.o reset_2bits.o main.o
EXEC = ex14c

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
