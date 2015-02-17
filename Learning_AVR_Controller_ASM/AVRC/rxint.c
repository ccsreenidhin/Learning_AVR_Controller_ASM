 #include"avr\io.h"
#include"util\delay.h"
#include"avr\interrupt.h"
char a;
ISR(USART0_RX_vect)
{
a=UDR0;
//UCSR0A|=0X80;
UDR0=a;
while(!(UCSR0A&0X40));

UCSR0A|=0X40;
}
void main()
{
UCSR0B=0X98;
UBRR0L=0X19;

sei();

while(1);
}