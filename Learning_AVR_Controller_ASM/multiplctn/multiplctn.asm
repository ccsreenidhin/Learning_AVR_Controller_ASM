.include"m128def.inc"
.org 0x00
ldi r16,0x05
mov r19,r16
ldi r17,0x02
dec r17
l:brbs 1,l1
adc r19,r16
//clr r18
//add r18,r16
dec r17

jmp l
l1:jmp l1
.exit
