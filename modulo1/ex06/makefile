# A Makefile with variables and suffix rules

# variaveis

INCLUDES = power_ref.h
SOURCES = power_ref.c main.c
OBJFILES = power_ref.o main.o
EXEC = ex06

# Suffix rules
.SUFFIXES : .c .o
# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
${OBJFILES}: ${SOURCES} ${INCLUDES}
run: ${EXEC}
	./${EXEC}
clean:
	rm -f ${OBJFILES} ${EXEC}
