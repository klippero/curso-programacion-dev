class Ascensor
    def initialize(plantas)
        @puerta = "cerrada"
        @piso = 0
        @plantas = plantas
    end

    def abre
        @puerta = "abierta"
    end

    def muestra_info
        puts "piso: #{@piso}/#{@plantas} | puerta #{@puerta}"
    end

    def mover(nuevo_piso)
        @piso = nuevo_piso
    end
end

mi_ascensor = Ascensor.new(7)
mi_ascensor.muestra_info

otro = Ascensor.new(4)
otro.muestra_info
