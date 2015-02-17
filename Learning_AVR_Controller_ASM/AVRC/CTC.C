#include"avr\io.h"
void main()
{
int a=0;
TCCR0=0x0e;
OCR0=0X9C;
DDRA=0XFF;
while(1)
{
while(!(TIFR&0X02));
a=~a;
PORTA=a;
TIFR|=0X02;

}


}