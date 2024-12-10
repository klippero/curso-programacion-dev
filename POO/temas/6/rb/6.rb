class Frigo
    def initialize
        @color = "blanco"
        @puerta = "cerrada"
        @temperatura = 20
    end

    def abre
        @puerta = "abierta"
    end

    def cierra
        @puerta = "cerrada"
    end

    def fija_temperatura
        puts "se cambia la temperatura"
    end

    def muestra_estado
        puts "Color: #{@color} | Puerta #{@puerta} | #{@temperatura}ºC"
    end
end


mi_frigo = Frigo.new
mi_frigo.muestra_estado
mi_frigo.abre
mi_frigo.muestra_estado
mi_frigo.cierra
mi_frigo.muestra_estado
