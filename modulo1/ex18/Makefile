# Makefile

# variables
INCLUDES = compress_shorts.h
SOURCES = compress_shorts.c main.c
OBJFILES = compress_shorts.o main.o
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