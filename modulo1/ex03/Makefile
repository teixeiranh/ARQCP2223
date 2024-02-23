# Makefile

# variables
INCLUDES = sum_even.h
SOURCES = sum_even.c main.c
OBJFILES = sum_even.o main.o
EXEC = output

# Suffix rules
.SUFFIXES : .c .o

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC} 