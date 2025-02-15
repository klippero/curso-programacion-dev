class Frigo
    attr_reader :temperatura

    def initialize(color, temperatura)
        @color = color
        @temperatura = temperatura
    end
end


f1 = Frigo.new("rojo", 7)
puts f1.temperatura
