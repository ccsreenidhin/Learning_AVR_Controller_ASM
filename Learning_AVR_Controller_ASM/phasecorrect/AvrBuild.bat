@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\phasecorrect\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\phasecorrect\phasecorrect.hex" -d "E:\JIJU\avr\phasecorrect\phasecorrect.obj" -e "E:\JIJU\avr\phasecorrect\phasecorrect.eep" -m "E:\JIJU\avr\phasecorrect\phasecorrect.map" "E:\JIJU\avr\phasecorrect\phasecorrect.asm"
