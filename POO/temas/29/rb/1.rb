class Frigo
    def initialize(color:, temperatura:)
        @color = color
        @temperatura = temperatura
    end

    def to_s
        return "Color #{@color} | #{@temperatura}ºC"
    end
end


f1 = Frigo.new(color:"rojo", temperatura:19)
puts f1

f2 = Frigo.new(temperatura:17, color:"blanco")
puts f2
