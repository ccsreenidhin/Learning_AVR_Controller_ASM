#include<avr\io.h>
#include<util/delay.h>
void main()
{
	DDRC=0XFF;
	DDRD=0XFF;
	while(1)
	{
		ADMUX=0XC3;
		ADCSRA=0XC0;
		while(!(ADCSRA&0x10));
		ADCSRA=0X10;
		PORTC=ADCL;
		PORTD=ADCH;
	}
}