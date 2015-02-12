@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\outputcompare\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\outputcompare\outputcompare.hex" -d "E:\JIJU\avr\outputcompare\outputcompare.obj" -e "E:\JIJU\avr\outputcompare\outputcompare.eep" -m "E:\JIJU\avr\outputcompare\outputcompare.map" "E:\JIJU\avr\outputcompare\outputcompare.asm"
