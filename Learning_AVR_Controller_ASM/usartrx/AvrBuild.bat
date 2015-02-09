@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\usartrx\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\usartrx\usartrx.hex" -d "E:\JIJU\avr\usartrx\usartrx.obj" -e "E:\JIJU\avr\usartrx\usartrx.eep" -m "E:\JIJU\avr\usartrx\usartrx.map" "E:\JIJU\avr\usartrx\usartrx.asm"
