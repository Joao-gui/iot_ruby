require "arduino_firmata"

$placa = ArduinoFirmata.connect("/dev/ttyACM0")

$pinoVermelho = 11
$pinoVerde = 10
$pinoAzul = 9

def cores(vermelho, verde, azul)
    $placa.analog_write($pinoVermelho, vermelho)
    $placa.analog_write($pinoVerde, verde)
    $placa.analog_write($pinoAzul, azul)
end

loop do
    cores(255,0 ,0) #vermelho
    puts "Vermelho"
    sleep(2)
    
    cores(0, 255, 0) #verde
    puts "Verde"
    sleep(2)

    cores(0, 0, 255) #azul
    puts "Azul"
    sleep(2)

    cores(0, 0, 0) #apagado
    puts "Apagado"
    sleep(2)

    cores(255, 255, 255) #todas
    puts "Todas"
    sleep(2)

    cores(125, 125, 0) #verde claro
    puts "Verde Claro"
    sleep(2)
end