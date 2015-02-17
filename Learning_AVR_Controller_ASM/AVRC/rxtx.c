#include"avr\io.h"
#include"util\delay.h"
void main()
{
int i;
char a;
UCSR0B=0x18;
UBRR0L=0x19;
while(1)
{
while(!(UCSR0A&0X80));
UCSR0A|=0X80;
a=UDR0;
UDR0=a;
while(!(UCSR0A&0X40));
UCSR0A|=0X40;

}
}