# A Makefile with variables and suffix rules

# variaveis

INCLUDES = sort_without_reps.h sort_array.h existing_value.h
SOURCES = sort_without_reps.s sort_array.s existing_value.s main.c
OBJFILES = sort_without_reps.o sort_array.o existing_value.o main.o
EXEC = ex18

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
