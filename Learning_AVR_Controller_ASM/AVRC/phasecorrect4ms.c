#include"avr\io.h"
void main()
{
TCNT0=0X05;
TCCR0=0X63;
DDRB=0XFF;
OCR0=0X32;
while(1);


}