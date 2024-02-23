# A Makefile with variables and suffix rules

# variaveis

INCLUDES = activate.h
SOURCES = activate_bits.s activate_invert_bits.s main.c
OBJFILES = activate_bits.o activate_invert_bits.o main.o
EXEC = ex15c

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
