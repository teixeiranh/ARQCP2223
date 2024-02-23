# A Makefile with variables and suffix rules

# variaveis

INCLUDES = rotate.h
SOURCES = rotate_left.c rotate_right.c main.c
OBJFILES = rotate_left.o rotate_right.o main.o
EXEC = ex13

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
