.include"m128def.inc"
.org 0x00
ldi r17,0x00
clr r18
ldi r28,0x00
ldi r29,0x01
ldi zh,high(l1<<1)
ldi zl,low(l1<<1)
a: lpm r16,z+
cpi r16,0
breq q
cp r17,r16
brlt w
jmp a
w:mov r17,r16
jmp a

q:st y+,r17
ll:jmp ll

l1:
.db 1,3,4,2,0

.exit
