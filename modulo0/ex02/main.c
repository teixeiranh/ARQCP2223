#include <stdio.h>

int sum(int a,int b);

int main()
{
    int number1;
    int number2;
    int result;

    printf("Enter one integer: ");
    scanf("%d",&number1);

    printf("Enter other integer: ");
    scanf("%d",&number2);

    result=sum(number1,number2);
    printf("%d\n",result);

    while(result>=10)
    {
        printf("Enter one integer: ");
        scanf("%d",&number1);

        printf("Enter other integer: ");
        scanf("%d",&number2);

        result=sum(number1,number2);
        printf("%d\n",result);
    }
    return 0;
}

int sum(int a,int b)
{
    int result;
    result=a+b;
    return result;
}
