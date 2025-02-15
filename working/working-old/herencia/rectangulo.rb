class Rectangulo
    def initialize(lado1,lado2)
        @lado1 = lado1
        @lado2 = lado2
    end

    def area
        return @lado1 * @lado2
    end

    def perimetro
        return @lado1 * 2 + @lado2 * 2
    end

    def to_s
        return "#{@lado1}x#{@lado2}"
    end

    def graphic_str
        result =""
        @lado2.times do
            @lado1.times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end
end


class Cuadrado < Rectangulo
    def initialize(lado)
        super(lado,lado)
    end

    def to_s
        resut = "Cuadrado " + super.to_s
    end
end


c = Cuadrado.new(3)
puts "#{c} perímetro: #{c.perimetro} área: #{c.area}"
puts c.graphic_str
puts


r = Rectangulo.new(17,3)
puts "#{r} perímetro: #{r.perimetro} área: #{r.area}"
puts r.graphic_str
