#include"avr\io.h"
#include"util\delay.h"
void main()
{
int c=0x80;
int a;
DDRB=0xff;
DDRA=0x00;
while(1)
{
a=PINA;
switch(a)
{
  case 0:{PORTB=0X00;
           break;}
 case 1:{PORTB=0XFF;break;}
 case 2:{c=c<<1;
          if(c==0)
            {
			c=0x01;
			}
         PORTB=c;
		 _delay_ms(1);break;}
 case 3:{c=c>>1;
         if(c==0)
            {
			c=0x80;
			}PORTB=c;_delay_ms(1);break;}
 
 }

}


}
