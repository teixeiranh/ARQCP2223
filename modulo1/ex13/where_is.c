int where_is(char *str, char c, int *p) {

	int i = 0;
	int j = 0;
	
	while (*(str + i) != '\0') 
	{
		char singleChar = *(str + i);
		
		if (singleChar == c)
		{
			*(p + j) = i;
			j++;
		}
		i++;
	}
	return j;
}
