.include"m128def.inc"
.org 0x00
ldi r16,0x05
ror r16
brcs k
ldi r17,0x02
jmp j
k:ldi r17,0x01
j:jmp j
.exit
