# Makefile

# variables
INCLUDES = upper1.h
SOURCES = upper1.c main.c
OBJFILES = upper1.o main.o
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