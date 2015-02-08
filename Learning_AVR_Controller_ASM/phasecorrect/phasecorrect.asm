.include"m128def.inc"
.org 0x00
ldi r16,0x67
out tccr0,r16
ldi r17,0x7f
out ocr0,r17
ldi r19,0xff
out ddrb,r19
l:jmp l
.exit
