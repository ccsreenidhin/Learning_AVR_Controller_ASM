.include"m128def.inc"
.org 0x00
ldi r18,0x80
ldi r16,0xff
out ddrb,r16
ldi r16,0x07
out tccr2,r16
l:in r17,tcnt2
out portb,r17
jmp l
k:jmp k
.exit
