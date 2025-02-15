class Ascensor
    def initialize
        @piso = 0
        @puerta = "cerrada"
    end

    def to_s
        return "Piso: #{@piso} / puerta #{@puerta}"
    end

    def sube
        @piso = @piso + 1
    end

    def baja
        @piso = @piso - 1
    end

    def abre
        @puerta = "abierta"
    end

    def cierra
        @puerta = "cerrada"
    end
end

a = Ascensor.new
puts a
a.sube
puts a
a.sube
a.sube
puts a
a.abre
puts a
a.cierra
puts a
