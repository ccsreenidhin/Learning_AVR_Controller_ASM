.include"m128def.inc"
.org 0x00
ldi r20,0xff
out ddrb,r20
ldi r17,0x19
sbi ucsr0b,4
out ubrr0l,r19
k:sbis ucsr0a,7
jmp k
in r16, udr0
out udr0,r16
out portb,r16

jmp k
j:jmp j
.exit
