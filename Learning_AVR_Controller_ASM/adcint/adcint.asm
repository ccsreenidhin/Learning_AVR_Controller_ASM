.include"m128def.inc"
.org 0x00
jmp m
.org $2a
jmp i
m:
ldi r18,0xff
out ddrb,r18
ldi r16,0x60
out admux,r16
ldi r17,0xc8
out adcsra,r17
sei
j:jmp j
i:in r20,adch
out portb,r20
out adcsra,r17
reti
.exit
