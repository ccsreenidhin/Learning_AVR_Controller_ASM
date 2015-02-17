@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\multiplctn\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\multiplctn\multiplctn.hex" -d "E:\JIJU\avr\multiplctn\multiplctn.obj" -e "E:\JIJU\avr\multiplctn\multiplctn.eep" -m "E:\JIJU\avr\multiplctn\multiplctn.map" "E:\JIJU\avr\multiplctn\multiplctn.asm"
