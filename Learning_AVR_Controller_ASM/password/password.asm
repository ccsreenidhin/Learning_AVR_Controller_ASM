.include"m128def.inc"
.org 0x00
ldi r26,0x00
ldi r16,0x19
out ubrr0l,r16
sbi ucsr0b,4
sbi ucsr0b,3
f:ldi r31,high(l1<<1)
ldi r30,low(l1<<1)
inc r26
d:lpm r17,z+
  cpi r17,0x00
  breq qq
  out udr0,r17
  q:sbis ucsr0a,6
    jmp q
  sbi ucsr0a,6
  jmp d

qq:ldi r29,0x01
ldi r28,0x00

s:sbis ucsr0a,7
 jmp s
j:in r18,udr0
 st y+,r18
  cpi r18,0x0d
  breq h
 
  sbi ucsr0a,7
 jmp s


h:ldi r29,0x01
ldi r28,0x00
ldi r31,high(l2<<1)
ldi r30,low(l2<<1)
ddd:lpm r17,z+
  ld r18,y+
  cpi r18,0x0d
  breq dqq
  cp r17,r18
  breq ddd
  jmp kk
 

dqq:
   ldi r31,high(l3<<1)
     ldi r30,low(l3<<1)
dd:lpm r17,z+
    out udr0,r17
  cpi r17,0x00
  breq ss
  q8:sbis ucsr0a,6
    jmp q8
  sbi ucsr0a,6
  jmp dd


 kk: ldi r31,high(l4<<1)
     ldi r30,low(l4<<1)
dd1:lpm r17,z+
   out udr0,r17
   cpi r26,0x03
   breq ko
  cpi r17,0x00
  breq f
  q9:sbis ucsr0a,6
    jmp q9
  sbi ucsr0a,6
  jmp dd1

ko: ldi r31,high(l5<<1)
     ldi r30,low(l5<<1)
ddo1:lpm r17,z+
   out udr0,r17
  cpi r17,0x00
  breq ss
  ql9:sbis ucsr0a,6
    jmp ql9
  sbi ucsr0a,6
  jmp ddo1


ss:jmp ss

l1:.db"enter password",0
l2:.db "abcd",0 
l3:.db" acess sucess",0
l4:.db " denied",0
l5:.db " blocked",0
.exit
