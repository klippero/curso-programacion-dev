class Frigo
    attr_accessor :temperatura

    def initialize(color, temperatura)
        @color = color
        @temperatura = temperatura
    end
end


f1 = Frigo.new("rojo", 7)
f1.temperatura = 17
puts f1.temperatura
