class Ascensor
    def initialize
        puts "se está creando un ascensor"
        @puerta = "cerrada"
    end

    def abre
        puts "se está abriendo la puerta"
        @puerta = "abierta"
    end

    def muestra_info
        puts "la puerta está #{@puerta}"
    end
end

mi_ascensor = Ascensor.new
mi_ascensor.muestra_info
mi_ascensor.abre
mi_ascensor.muestra_info
