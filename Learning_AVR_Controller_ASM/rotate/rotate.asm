.include"m128def.inc"
ldi r16,high(ramend)
out sph,r16
ldi r16,low(ramend)
out spl,r16

ldi r18,0xff
ldi r19,0x05
out ddra,r18
ldi r17,0x01
k:
out porta,r17
call delay
rol r17
brcs h
jmp k
h:
clc
ldi r17,0x01
jmp k
delay:dec r19
      cpi r19,0
	  breq j
j:ret
.exit
