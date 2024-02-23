# A Makefile with variables and suffix rules

# variaveis

INCLUDES = main.h
SOURCES = fill_student.c main.c
OBJFILES = fill_student.o main.o
EXEC = ex03

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
	valgrind ./${EXEC}
clean:
	rm -f ${OBJFILES} ${EXEC}
