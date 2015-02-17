#include"avr\io.h"
#include"util\delay.h"
void main()
{
char a;
DDRB=0XFF;
TCCR0=0X6F;
OCR0=0X7F;

UCSR0B=0X18;
UBRR0L=0X19;
while(1)
{


while(!(UCSR0A&0X80));
a=UDR0;
UCSR0A|=0X80;
UDR0=a;
while(!(UCSR0A&0X40));
UCSR0A|=0X40;

if(a=='a')
{
OCR0+=10;
}
else if(a=='b')
{
OCR0-=10;
}

}


}