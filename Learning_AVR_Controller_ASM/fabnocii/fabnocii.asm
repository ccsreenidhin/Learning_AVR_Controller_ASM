.include"m128def.inc"
.org 0x00
ldi r16,0x00
ldi r17,0x01
ldi r26,0x00
ldi r27,0x01

st x+,r16
st x+,r17
l:mov r18,r17
add r17,r16
st x+,r17
mov r16,r18
jmp l
.exit

