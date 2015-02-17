#include"avr\io.h"
void main()
{
DDRB=0XFF;
TCCR0=0X6F;
OCR0=0X7F;
while(1);

}