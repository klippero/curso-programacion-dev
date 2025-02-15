class Frigo
    def initialize(color, temperatura)
        @color = color
        fija_temperatura(temperatura)
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


f1 = Frigo.new("rojo", -1)
puts f1
