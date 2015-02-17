#include"avr\io.h"
void main()
{
TCNT0=0X05;
TCCR0=0X6c;
DDRB=0XFF;
OCR0=0x32;

while(1);
}