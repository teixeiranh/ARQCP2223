# A Makefile with variables and suffix rules

# variaveis

INCLUDES = greater_date.h
SOURCES = greater_date.s main.c
OBJFILES = greater_date.o main.o
EXEC = ex17b

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
