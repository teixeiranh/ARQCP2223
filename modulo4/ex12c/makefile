# A Makefile with variables and suffix rules

# variaveis

INCLUDES = asm.h count_bits_one.h
SOURCES = asm.h count_bits_one.h main.c
OBJFILES = asm.o count_bits_one.o main.o
EXEC = ex12c

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
