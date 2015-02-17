#include"avr\io.h"
#include"util\delay.h"
void lcd_command(int v);
void lcd_data(char);
void main()
{
int i;
char a[10]={0x38,0X06,0x0C,0x80};
char b[10]={"HELLO"};
DDRC=0XFF;
DDRA=0xff;
DDRB=0XFF;

for(i=0;i<=4;i++)
 {
 lcd_command (a[i]);
 }
for(i=0;i<=6;i++)
 {
lcd_data(b[i]);
}
while(1);
}
void lcd_command(int v)
{
PORTC&=~(1<<PC0);
PORTC&=~(1<<PC1);
PORTA=v;
PORTC|=(1<<PC2);
_delay_ms(20);
PORTC&=~(1<<PC2);
}

void lcd_data(char f)
{
PORTC|=(1<<PC0);
PORTC&=~(1<<PC1);
PORTA=f;
PORTC|=(1<<PC2);
_delay_ms(20);
PORTC&=~(1<<PC2);
}

