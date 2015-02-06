.include"m128def.inc"
.org 0x00
ldi r26,0x00
ldi r27,0x01
ldi r16,0x0a

st x,r16
l:jmp l
.exit
