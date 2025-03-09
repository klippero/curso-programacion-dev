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

    def para_temperatura_recomendada
        result = @temperatura - 7
        return result
    end
end


f = Frigo.new("rojo")
f.muestra_estado

puts f.para_temperatura_recomendada
