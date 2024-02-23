int odd_sum(int *p) {
	
	int output = 0;
	int len = p[0];
	int i;
	
	for (i = 1; i < len + 1; i++) 
	{
		if ( *(p + i) % 2 != 0)
		{
			output += *(p + i);
		}
	}	
	return output;
}
