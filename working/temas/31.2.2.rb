class Frigo
    attr_reader :temperatura
    attr_writer :temperatura

    def initialize(color, temperatura)
        @color = color
        @temperatura = temperatura
    end
end


f1 = Frigo.new("rojo", 7)
f1.temperatura = 17
puts f1.temperatura
