#include"avr\io.h"
#include"util\delay.h"
void main()
{
int a=0;
DDRA=0xff;
while(1)
{
a=~a;
PORTA=a;
}
}