.include"m128def.inc"
.org 0x00
ldi r16,high(ramend)
out sph,r16
ldi r16,low(ramend)
out spl,r16
ldi r18,0x0fe
out ddra,r18
ldi r22,0x00
ldi r20,0xff
out ddrb,r20


out portb,r20
//ldi r21,0x05
k:in r19,pina
  cpi r19,0x01
  breq j
  out portb,r22
  jmp k
j: //call delay
  out portb,r20
  jmp k
  
.exit
