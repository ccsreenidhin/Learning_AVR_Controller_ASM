#include"avr\io.h"
void main()
{
int a=0;
TCCR0=0X01;
DDRA=0XFF;

while(1)
{

while(!(TIFR&0X01));
a=~a;
PORTA=a;
TIFR|=0x01;

}

}