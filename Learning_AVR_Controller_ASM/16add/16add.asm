.include"m128def.inc"
.org 0x00
ldi r16,0xff
ldi r17,0xad
ldi r18,0x12
ldi r19,0x14
add r18,r16
adc r19,r17
l:jmp l

.exit
