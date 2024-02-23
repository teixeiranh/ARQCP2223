#include <stdio.h>
#include "main.h"

int main(void)
{
	Student list_of_student[5];

	Student nuno_teixeira;
	Student *ptr_nt = &nuno_teixeira;
	fill_student(ptr_nt, 32, 869, "Nuno", "Porto");
	list_of_student[0] = nuno_teixeira;

	printf("%d\n", (*ptr_nt).age);
	printf("%d\n", (*ptr_nt).number);
	printf("%s\n", (*ptr_nt).name);
	printf("%s\n", (*ptr_nt).address);

	Student luis_maia;
	Student *ptr_maia = &luis_maia;
	fill_student(ptr_maia, 69, 666, "Luis", "Porto");
	list_of_student[1] = luis_maia;

	Student luis_matos;
	Student *ptr_matos = &luis_matos;
	fill_student(ptr_matos, 30, 555, "Luis", "Porto");
	list_of_student[2] = luis_matos;

	Student joao_fernandes;
	Student *ptr_joao = &joao_fernandes;
	fill_student(ptr_joao, 30, 444, "Joao", "Porto");
	list_of_student[3] = joao_fernandes;

	Student vitor_cardoso;
	Student *ptr_vitor = &vitor_cardoso;
	fill_student(ptr_vitor, 30, 333, "Vitor", "Porto");
	list_of_student[4] = vitor_cardoso;

	return 0;
}
