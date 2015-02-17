#include"avr\io.h"
#include"util\delay.h"
void main()
{
int a,s;

UBRR0L=0X19;
UCSR0B=0X08;
ADMUX=0x60;
DDRA=0xff;
ADCSRA=0XC0; 
while(1)
{

while(!(ADCSRA&0X10));
a=ADCH;
ADCSRA|=0x10;
_delay_ms(10);
if(s!=a)
{

UDR0=a;

while(!(UCSR0A&0X40));
UCSR0A|=0X40;
s=a;
}

ADCSRA=0XC0;
}


}