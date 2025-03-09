class Frigo
    def initialize
        @color = "blanco"
        @puerta = "cerrada"
        @temperatura = 20
    end

    def abre
        puts "se está abriendo"
    end

    def cierra
        puts "se está cerrando"
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
