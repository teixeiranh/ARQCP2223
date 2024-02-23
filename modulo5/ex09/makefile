# A Makefile with variables and suffix rules

# variaveis

INCLUDES = fun1.h fun2.h fun3.h fun4.h
SOURCES = fun1.s fun2.s fun3.s fun4.s main.c
OBJFILES = fun1.o fun2.o fun3.o fun4.o main.o
EXEC = ex09

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

vg: ${EXEC}
	 valgrind ./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
