awk -F '_[a-zA-Z]*[ \n]*' '
{
	for (i=1; i<=NF; i++) 
		printf("%s", $i);
	printf("\n");
}' 3.dat > 3out.dat


#重新指定分隔符为 _[a-zA-Z]*[ \n]*