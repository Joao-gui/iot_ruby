require "arduino_firmata"
#Firmata
#arduino_firmata

placa = ArduinoFirmata.connect("/dev/ttyACM0")

led = 2
loop do 
	puts "Led aceso oloquinho meu"
	placa.digital_write(led, true)
	sleep(1)
	puts "Led apagado teste"
	placa.digital_write(led, false)
	sleep(1)
end