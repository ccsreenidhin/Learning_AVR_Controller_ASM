@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\usartint\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\usartint\usartint.hex" -d "E:\JIJU\avr\usartint\usartint.obj" -e "E:\JIJU\avr\usartint\usartint.eep" -m "E:\JIJU\avr\usartint\usartint.map" "E:\JIJU\avr\usartint\usartint.asm"
