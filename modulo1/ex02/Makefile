# Makefile

# variables
INCLUDES = copy_vec.h
SOURCES = copy_vec.c main.c
OBJFILES = copy_vec.o main.o
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