.include"m128def.inc"
.org 0x00

ldi r24,0x01
ldi r23,0x02
ldi r22,0x04
ldi r19,0xff
out ddra,r19
out ddrb,r19 
ldi r16,0x60
out admux,r16
ldi r16,0xc0
out adcsra,r16

l:sbis adcsra,4
jmp l

 in r17,adcl
 in r18,adch
 out portb,r18
 
 cpi r18,50
 brlo j
 
 cpi r18,100
 brlo k

 cpi r18,200
 brlo w

f:out adcsra,r16
sbi adcsra,4
jmp l

h:jmp h
  
j:out porta,r24
 jmp f
k:out porta,r23
 jmp f
w:out porta,r22
 jmp f
.exit
