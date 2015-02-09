.include"m128def.inc"
.org 0x00
ldi r16,0x19
out ubrr0l,r16
ldi r30,low(l1<<1)
ldi r31,high(l1<<1)
sbi ucsr0b,3
k:
lpm r17,z+
cpi r17,0x00
breq g
out udr0,r17
l:sbis ucsr0a,6
jmp l
sbi ucsr0a,6
jmp k
g:jmp g
l1:
.db "hello",0
.exit
