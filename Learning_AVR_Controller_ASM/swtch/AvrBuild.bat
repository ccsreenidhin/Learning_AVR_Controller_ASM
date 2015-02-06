@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\swtch\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\swtch\swtch.hex" -d "E:\JIJU\avr\swtch\swtch.obj" -e "E:\JIJU\avr\swtch\swtch.eep" -m "E:\JIJU\avr\swtch\swtch.map" "E:\JIJU\avr\swtch\swtch.asm"
