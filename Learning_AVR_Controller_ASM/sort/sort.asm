.include"m128def.inc"
.org 0x00

clr r17
clr r18
ldi r23,0x00
ldi r28,0x00
ldi r29,0x01
ldi zh,high(l1<<1)
ldi zl,low(l1<<1)
lpm r16,z+
a:mov r17,r16
lpm r16,z+
f:cpi r16,0
breq q
cp r17,r16
brlt w

mov r18,r17
st y+,r16
mov r16,r18
cpi r22,0x01
breq k
jmp a

w:st y+,r17
cpi r22,0x01
breq k
jmp a

q:st y+,r17
ldi r22,0x01
st y+,r23
ldi zh,$01
ldi zl,$00
ldi r28,0x00
ldi r29,0x01
 ld r16,z+
 k:mov r17,r16
ld r16,z+
jmp f
h:jmp h

l1:
.db 5,3,4,2,0

.exit
