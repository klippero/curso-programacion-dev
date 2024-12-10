class Frigo
    def initialize(color)
        @color = color
        @puerta = "cerrada"
        @temperatura = 20
    end

    def abre
        @puerta = "abierta"
    end

    def cierra
        @puerta = "cerrada"
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
    end

    def muestra_estado
        puts "Color: #{@color} | Puerta #{@puerta} | #{@temperatura}ºC"
    end
end


mi_congelador = Frigo.new("rojo")
mi_congelador.muestra_estado

otro = Frigo.new("blanco")
otro.muestra_estado
