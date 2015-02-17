#include"avr\io.h"
#include"string.h"
void main()
{
int i;
char g[15],x;
char a[20]={"abcd"};
char b[20]={"enter pass"};
char c[20]={"granded"};
char d[20]={"denied"};
UCSR0B=0x18;
UBRR0L=0X19;

while(1)
{
for (i=0;i<15;i++)
{
UDR0=b[i];
while(!(UCSR0A&0X40));
UCSR0A|=0X40;
}
i=0;
while(1)
{
while(!(UCSR0A&0x80))
UCSR0A|=0x80;
x=UDR0;
if(x!=0x0d)
 {
  g[i]=x;
  i++;
 }
else
  { 
  g[i]='\0';
  break;
  }
}

if(strcmp(g,a)==0)
{

 for (i=0;i<15;i++)
 {
 UDR0=c[i];
 while(!(UCSR0A&0X40));
 UCSR0A|=0X40;
 }
 break;
}
else
{
  for (i=0;i<15;i++)
 {
 UDR0=d[i];
 while(!(UCSR0A&0X40));
 UCSR0A|=0X40;
 }
}
}

}

