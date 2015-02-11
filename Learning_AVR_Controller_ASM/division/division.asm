.include"m128def.inc"
.org 0x00
ldi r16,0x09
ldi r17,0x03
clr r18
l:
sub r16,r17

brcs l1
inc r18
jmp l
l1:add r17,r16
j:jmp j
.exit
