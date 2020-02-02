require "arduino_firmata"

placa = ArduinoFirmata.connect("/dev/ttyACM0")

motor = 10
angulo = 0

loop do
    puts "Executando o motor no angulo #{angulo}"
    placa.servo_write(motor, angulo)

    angulo += 45
    if angulo > 180
        angulo = 0
    end
    sleep(2)
end