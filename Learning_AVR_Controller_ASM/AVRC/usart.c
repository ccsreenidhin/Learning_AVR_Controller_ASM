#include"avr\io.h"
#include"util\delay.h"
void main()
{
char a[5]={"yoyo"};
int i;

UCSR0B=0x08;
UBRR0L=0X19;
while(1)
{
for(i=0;i<4;i++)
{
UDR0=a[i];

while(!(UCSR0A&0X40));
UCSR0A|=0X40;
}

}
}