class Frigo
    def initialize(color="blanco")
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

    def fija_temperatura(nueva_temperatura=7)
        @temperatura = nueva_temperatura
    end

    def muestra_estado
        puts "Color: #{@color} | Puerta #{@puerta} | #{@temperatura}ºC"
    end
end


frigo1 = Frigo.new("rojo")
frigo1.muestra_estado

frigo2 = Frigo.new
frigo2.muestra_estado

frigo2.fija_temperatura(5)
frigo2.muestra_estado

frigo2.fija_temperatura
frigo2.muestra_estado
