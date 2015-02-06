.include"m128def.inc"
.org 0x00
ldi r20,0xff
ldi r18,0x00
ldi r23,0x00
out ddrb,r20
out ddra,r20
ldi r17,0x19
sbi ucsr0b,4
out ubrr0l,r17
k:sbis ucsr0a,7
jmp k
in r16, udr0
out udr0,r16
cpi r16,'a'
breq j

out udr0,r16
cpi r16,'b'
breq s

j:com r18
out porta,r18
jmp k
s:com r23
out portb,r23
jmp k
c:jmp c
.exit
