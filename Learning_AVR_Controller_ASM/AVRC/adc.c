#include"avr\io.h"
void main()
{
int a;
ADMUX=0x60;
DDRA=0Xff;
ADCSRA=0xc0;
while(1)
{
while(!(ADCSRA&0X10));
a=ADCH;
ADCSRA|=0x10;
PORTA=a;
ADCSRA=0xc0;
//ADCSRA|=0x10;

}
}