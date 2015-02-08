@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\JIJU\avr\portblink\labels.tmp" -fI -W+ie -o "E:\JIJU\avr\portblink\portblink.hex" -d "E:\JIJU\avr\portblink\portblink.obj" -e "E:\JIJU\avr\portblink\portblink.eep" -m "E:\JIJU\avr\portblink\portblink.map" "E:\JIJU\avr\portblink\portblink.asm"
