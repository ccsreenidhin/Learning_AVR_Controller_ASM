.include"m128def.inc"
.org 0x00
ldi r16,high(ramend)
out sph,r16
ldi r16,low(ramend)
out spl,r16
ldi r17,0xfc
out ddra,r17
ldi r18,0xff
out ddrb,r18
ldi r22,0x01
ldi r23,0x80
l:in r17,pina
  cpi r17,0x00	
  breq k
  in r17,pina
  cpi r17,0x01
  breq m
  in r17,pina
  cpi r17,0x02
  breq n
  in r17,pina
  cpi r17,0x03
  breq o
  jmp l

k:ldi r20,0x00
  out portb,r20 
  jmp l
m:ldi r21,0xff
  out portb,r21 
  jmp l
n:out portb,r22
  //call delay 
  rol r22
  
  brcs h
  jmp l
h:clc
 ldi r22,01
  jmp l
o:out portb,r23
  //call delay 
  ror r23
  
  brcs g
  jmp l
g:clc
ldi r23,0x80
  jmp l
delay:ldi r24,0x05
      dec r24
	  cpi r24,0x00
	  breq l



  .exit
