#include"avr\io.h"
void main()
{
int a;
DDRD=0X00;
//DDRD|=0X80;
DDRA=0XFF;
TCCR2=0X06;
while(1)
{
a=TCNT2;
PORTA=a;
}

}