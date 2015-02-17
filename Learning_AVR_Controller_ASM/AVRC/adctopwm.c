#include"avr\io.h"
#include"util\delay.h"
void main()
{
int a,s;
DDRB=0XFF;
TCCR0=0x6f;
ADMUX=0x60;
DDRB=0xff;


while(1)
{
ADCSRA=0XC0;
while(!(ADCSRA&0X10));
a=ADCH;
ADCSRA|=0x10;
_delay_ms(10);
//if(s!=a)
{

OCR0=a;
s=a;
}

}
}