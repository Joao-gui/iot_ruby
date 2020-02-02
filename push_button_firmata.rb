require "arduino_firmata"

placa = ArduinoFirmata.connect("/dev/ttyACM0")

button = 8
led = 7 
placa.pin_mode(button, ArduinoFirmata::INPUT)
placa.pin_mode(led, ArduinoFirmata::OUTPUT)
estado = 0
puts "Testando led com botão"
puts

loop do
    estado = placa.digital_read(button)
    if estado == true
        placa.digital_write(led, true)
        puts "Led Aceso"
        sleep(1)
    else
        placa.digital_write(led, false)
        puts "Led apagado"
        sleep(1)
    end
end