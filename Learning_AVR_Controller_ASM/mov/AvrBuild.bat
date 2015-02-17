@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\mov\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\mov\mov.hex" -d "E:\JIJU\avr\mov\mov.obj" -e "E:\JIJU\avr\mov\mov.eep" -m "E:\JIJU\avr\mov\mov.map" "E:\JIJU\avr\mov\mov.asm"
