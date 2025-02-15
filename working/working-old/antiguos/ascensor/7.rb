class Ascensor
    def initialize
        @puerta = "cerrada"
        @piso = 0
    end

    def abre
        @puerta = "abierta"
    end

    def muestra_info
        puts "piso: #{@piso} | puerta #{@puerta}"
    end

    def mover(nuevo_piso)
        @piso = nuevo_piso
    end
end

mi_ascensor = Ascensor.new
mi_ascensor.muestra_info
mi_ascensor.mover(3)
mi_ascensor.muestra_info
