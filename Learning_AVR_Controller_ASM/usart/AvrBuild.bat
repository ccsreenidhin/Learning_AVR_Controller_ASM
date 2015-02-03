@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\usart\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\usart\usart.hex" -d "E:\JIJU\avr\usart\usart.obj" -e "E:\JIJU\avr\usart\usart.eep" -m "E:\JIJU\avr\usart\usart.map" "E:\JIJU\avr\usart\usart.asm"
