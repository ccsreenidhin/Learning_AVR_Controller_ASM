.include"m128def.inc"
.org 0x00
jmp main
.org 0x20
jmp u
main:
ldi r18,0x00
ldi r19,0xff
out ddrb,r19
ldi r17,0x01
out timsk,r17
out tccr0,r17
sei
k:jmp k
u:com r19
 out portb,r19
 out tifr,r18
 reti
.exit
