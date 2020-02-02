require "arduino_firmata"
# Configuração para o serial port
require "serialport"

port = '/dev/ttyACM0'
baude_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

conectando = SerialPort.new(port, baude_rate, data_bits, stop_bits, parity)

# firmata

placa = ArduinoFirmata.connect("/dev/ttyACM0")

lm35 = A0

loop do
    recebendo = conectando.gets
    if recebendo
        puts "recebendo"
    end
    sleep(3)
end