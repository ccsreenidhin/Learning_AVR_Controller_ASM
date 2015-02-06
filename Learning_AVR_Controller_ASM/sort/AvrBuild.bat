@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\sort\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\sort\sort.hex" -d "E:\JIJU\avr\sort\sort.obj" -e "E:\JIJU\avr\sort\sort.eep" -m "E:\JIJU\avr\sort\sort.map" "E:\JIJU\avr\sort\sort.asm"
