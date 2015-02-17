#include"avr\io.h"
#include"avr\interrupt.h"
int a=0;
ISR(TIMER0_OVF_vect)
{
a=~a;
PORTA=a;
TIFR|=0X01;

}


void main()
{

DDRA=0XFF;
TCCR0=0X01;
TIMSK=0X01;
sei();
while(1);



}