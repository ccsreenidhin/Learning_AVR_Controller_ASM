.include"m128def.inc"
.org 0x00
jmp m
.org 0x24
jmp j
m:
ldi r16,high(ramend)
out sph,r16
ldi r16,low(ramend)
out spl,r16
ldi r18,0x19
out ubrr0l,r18
sei
ldi r18,0x98
out ucsr0b,r18

h:jmp h
j:in r17,udr0
out udr0,r17
k:sbis ucsr0a,6
jmp k
reti
.exit
