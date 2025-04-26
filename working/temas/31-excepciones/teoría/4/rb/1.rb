class Frigo
    def initialize(color, temperatura)
        @color = color
        @temperatura = temperatura
    end

    def to_s
        return "Color #{@color} | #{@temperatura}ºC"
    end

    def fija_temperatura(nueva_temperatura)
        if nueva_temperatura < 0
            raise ArgumentError.new("no puede ser < 0")
        end
        @temperatura = nueva_temperatura
    end
end


f1 = Frigo.new("rojo", 18)
puts f1

f1.fija_temperatura(-1)
