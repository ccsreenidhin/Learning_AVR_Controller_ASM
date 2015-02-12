.include"m128def.inc"
.org 0x00
ldi r20,0x02
ldi r19,0xff
out ddrb,r19
ldi r16,0x19
out tccr0,r16
ldi r17,0x64
out ocr0,r17
j:in r18,tifr
sbrs r18,1
jmp j
out tifr,r20
jmp j
k:jmp k
.exit
