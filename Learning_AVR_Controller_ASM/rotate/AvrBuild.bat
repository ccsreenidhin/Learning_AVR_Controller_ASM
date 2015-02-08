@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\rotate\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\rotate\rotate.hex" -d "E:\JIJU\avr\rotate\rotate.obj" -e "E:\JIJU\avr\rotate\rotate.eep" -m "E:\JIJU\avr\rotate\rotate.map" "E:\JIJU\avr\rotate\rotate.asm"
