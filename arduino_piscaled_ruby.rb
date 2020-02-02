require "serialport"

###################
# serialport
# 1 - .getc
# 2 - .gets
# 3 - .readline()
###################

# Configurando a serial port do arduino 
port = "/dev/ttyACM0"
baude_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

conectando = SerialPort.new(port, baude_rate, data_bits, stop_bits, parity)

# Primeira forma de leitura
# .getc

conectando.read_timeout = 1500

# loop do
#     recebendo = conectando.getc
#     if recebendo
#         printf('%c', recebendo)
#     end
# end

# Segunda forma de leitura
# .gets

loop do
    recebendo = conectando.gets
    if recebendo
        puts recebendo
    end
end

# Terceira forma e leitura
# .readline()

# loop do
#     recebendo = conectando.readline()
#     if recebendo
#         puts recebendo
#     end
# end