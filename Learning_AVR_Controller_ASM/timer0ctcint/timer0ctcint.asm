.include"m128def.inc"
.org 0x00
jmp m
.org 0x1e
jmp i
m:
ldi r16,0xff
ldi r20,0x7f
out ocr0,r20
ldi r19,0xff
out ddrb,r19
ldi r17,0x09
out tccr0,r17
ldi r18,0x02
out timsk,r18
sei
j:jmp j
i:
com r16
out portb,r16
out tifr,r18
reti
.exit
