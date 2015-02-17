.include"m128def.inc"
.org 0x00
jmp main

.org 0x02

jmp i

.org 0x04

jmp q

.org 0x06

jmp w

.org 0x08

jmp e

.org 0x0a

jmp r

.org 0x0c

jmp t

.org 0x0e

jmp o

.org 0x10

jmp u

main:
ldi r20,high(ramend)
out sph,r20
ldi r20,low(ramend) 
out spl,r20







ldi r19,0x00
out ddrd,r19
ldi r18,0xff
out ddra,r18
out portd,r18
out porte,r18
ldi r17,0xff
out eimsk,r17
ldi r17,0xff
sts eicra,r17
ldi r17,0xff
sts eicrb,r17

sei

k:jmp k
i:ldi r16,0x01
out porta,r16
reti

q:ldi r16,0x02
out porta,r16
reti

w:ldi r16,0x04
out porta,r16
reti
e:ldi r16,0x08
out porta,r16
reti

r:ldi r16,0x10
out porta,r16
reti

t:ldi r16,0x20
out porta,r16
reti

o:ldi r16,0x40
out porta,r16
reti

u:ldi r16,0x80
out porta,r16
reti
.exit
