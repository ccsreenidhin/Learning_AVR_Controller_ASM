#include"avr\io.h"
#include"util\delay.h"
char key_scan();
void lcd_data(char );
void lcd_command(int v);
void lcd_init();
void lcd_data(char);
void main()
{
char O;
DDRC=0xff;

lcd_init();
 while(1)
{
O=key_scan();
lcd_data(O);
}
}
void lcd_init()
{
DDRB=0XFF;
DDRA=0XFF;
int i;
char a[10]={0x38,0X06,0x0C,0x80};

for(i=0;i<=4;i++)
 {
 lcd_command (a[i]);
 }

}


char key_scan()
{
while(1)
{
PORTC|=(1<<PC0);
PORTC&=~(1<<PC1);
PORTC&=~(1<<PC2);
PORTC&=~(1<<PC3);

if(PINC&(1<<PC4))
{
while(PINC&(1<<PC4));
return '0';
}
else if(PINC&(1<<PC5))
{
while(PINC&(1<<PC5));
return '4';
}
else if(PINC&(1<<PC6))
{
while(PINC&(1<<PC6));
return '8';
}
else if(PINC&(1<<PC7))
{
while(PINC&(1<<PC7));
return 'c';
}


PORTC|=(1<<PC1);
PORTC&=~(1<<PC0);
PORTC&=~(1<<PC2);
PORTC&=~(1<<PC3);

if(PINC&(1<<PC4))
{
while(PINC&(1<<PC4));
return '1';
}
else if(PINC&(1<<PC5))
{
while(PINC&(1<<PC5));
return '5';
}
else if(PINC&(1<<PC6))
{
while(PINC&(1<<PC6));
return '9';
}
else if(PINC&(1<<PC7))
{
while(PINC&(1<<PC7));
return 'd';
}

PORTC|=(1<<PC2);
PORTC&=~(1<<PC1);
PORTC&=~(1<<PC0);
PORTC&=~(1<<PC3);

if(PINC&(1<<PC4))
{
while(PINC&(1<<PC4));
return '2';
}
else if(PINC&(1<<PC5))
{
while(PINC&(1<<PC5));
return '6';
}
else if(PINC&(1<<PC6))
{
while(PINC&(1<<PC6));
return 'a';
}
else if(PINC&(1<<PC7))
{
while(PINC&(1<<PC7));
return 'e';
}


PORTC|=(1<<PC3);
PORTC&=~(1<<PC1);
PORTC&=~(1<<PC2);
PORTC&=~(1<<PC0);

if(PINC&(1<<PC4))
{
while(PINC&(1<<PC4));
return '3';
}
else if(PINC&(1<<PC5))
{
while(PINC&(1<<PC5));
return '7';
}
else if(PINC&(1<<PC6))
{
while(PINC&(1<<PC6));
return 'b';
}
else if(PINC&(1<<PC7))
{
while(PINC&(1<<PC7));
return 'f';
}


}
}

void lcd_command(int v)
{
PORTB&=~(1<<PB0);
PORTB&=~(1<<PB1);
PORTA=v;
PORTB|=(1<<PB2);
_delay_ms(20);
PORTB&=~(1<<PB2);
}

void lcd_data(char f)
{
PORTB|=(1<<PB0);
PORTB&=~(1<<PB1);
PORTA=f;
PORTB|=(1<<PB2);
_delay_ms(20);
PORTB&=~(1<<PB2);
}









