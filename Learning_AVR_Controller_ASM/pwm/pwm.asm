.include"m128def.inc"
.org 0x00
ldi r16,0x7f
out tccr0,r16
ldi r16,0x33
out ocr0,r16
ldi r17,0xff
out ddrb,r17
k:jmp k
.exit
