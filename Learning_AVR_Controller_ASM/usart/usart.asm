.include"m128def.inc"
.org 0x00
ldi r16,'a'
ldi r17,0x19
sbi ucsr0b,4
out ubrr0l,r19
out udr0,r16
j:jmp j
.exit
