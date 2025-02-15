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

    def fija_temperatura(nueva_temperatura=-18)
        @temperatura = nueva_temperatura
    end

    def to_s
        return "Color: #{@color} | Puerta #{@puerta} | #{@temperatura}ºC (#{para_temperatura_recomendada}ºC)"
    end

    def para_temperatura_recomendada
        return @temperatura - 7
    end

    def temperatura
        return @temperatura
    end

    def temperatura_recomendada?
        return @temperatura == 7
    end
end


f = Frigo.new("rojo")
puts f
puts f.temperatura_recomendada?

f.fija_temperatura(7)
puts f
puts f.temperatura_recomendada?
