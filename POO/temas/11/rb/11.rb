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


mi_frigo = Frigo.new("rojo")
mi_frigo.muestra_estado

print "Temperatura: "
t = gets.chomp.to_i

mi_frigo.fija_temperatura(t)
mi_frigo.muestra_estado
