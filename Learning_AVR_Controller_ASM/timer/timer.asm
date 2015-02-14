.include"m128def.inc"
.org 0x00
ldi r16,0x01
out tccr0,r16
ldi r17,0xff
out ddra,r17
ldi r19,0x00
out tcnt0,r19
k:in r18,tifr
sbrs r18,0
jmp k
out tifr,r16
j:out porta,r19
com r19
jmp k
f:jmp f
.exit
