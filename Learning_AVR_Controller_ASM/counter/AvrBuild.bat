@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\counter\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\counter\counter.hex" -d "E:\JIJU\avr\counter\counter.obj" -e "E:\JIJU\avr\counter\counter.eep" -m "E:\JIJU\avr\counter\counter.map" "E:\JIJU\avr\counter\counter.asm"
