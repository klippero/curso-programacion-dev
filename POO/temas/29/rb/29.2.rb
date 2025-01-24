class Frigo
    def initialize(color:"blanco", temperatura:17)
        @color = color
        @temperatura = temperatura
    end

    def to_s
        return "Color #{@color} | #{@temperatura}ºC"
    end
end


f1 = Frigo.new(color:"rojo", temperatura:19)
puts f1

f2 = Frigo.new
puts f2

f3 = Frigo.new(temperatura:16)
puts f3
