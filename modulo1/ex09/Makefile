# Makefile

# variables
INCLUDES = sort_without_reps.h
SOURCES = sort_without_reps.c main.c
OBJFILES = sort_without_reps.o main.o
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