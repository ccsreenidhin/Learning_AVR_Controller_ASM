#include"avr\io.h"
void main()
{
int a;
DDRB=0Xff;
ADMUX=0X60;
ADCSRA=0XC0;
while(1)
{
while(!(ADCSRA&0X10));
a=ADCH;
if(a<=0x3f)
PORTB=0x01;
else if((a>=0x3f)&&(a<=0x9f))
PORTB=0X04;
else if(a>0x9f)
PORTB=0x08;
ADCSRA=0XC0;
}

}

