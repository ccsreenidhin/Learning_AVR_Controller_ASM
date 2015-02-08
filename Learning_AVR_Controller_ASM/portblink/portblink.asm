.include"m128def.inc"
.org 0x00
ldi r16,high(ramend)
out sph,r16
ldi r16,low(ramend)
out spl,r16
ldi r17,0xff
ldi r18,0x00
ldi r19,0x06
out ddra,r17
k:out porta,r17
 call delay
 out porta,r18
 call delay
 jmp k
 delay:dec r19
       cpi r19,0
	   breq l
l:ret
.exit
