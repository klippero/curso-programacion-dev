class Rectangulo
    def initialize(lado1,lado2)
        @lado1 = lado1
        @lado2 = lado2
    end

    def to_s
        result =""
        @lado2.times do
            @lado1.times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end

    def lado1
        return @lado1
    end

    def lado2
        return @lado2
    end

    def area
        return @lado1 * @lado2
    end

    def perimetro
        return @lado1 * 2 + @lado2 * 2
    end

    def ==(otro)
        return @lado1 == otro.lado1 && @lado2 == otro.lado2
    end

    def >(otro)
        return area > otro.area
    end

    def <(otro)
        return area < otro.area
    end

    def >=(otro)
        return area >= otro.area
    end

    def <=(otro)
        return area <= otro.area
    end

    def +( otro )
        return Rectangulo.new( @lado1 + otro.lado1, @lado2 + otro.lado2 )
    end

    def <<( otro )
        @lado1 = @lado1 + otro.lado1
        @lado2 = @lado2 + otro.lado2
    end
end


class Cuadrado < Rectangulo
    def initialize(lado)
        super(lado,lado)
    end

    def to_s
        resut = super + "to_s cuadrado"
    end
end


class Elipse
    def initialize(radio_horizontal,radio_vertical)
        @radio_horizontal = radio_horizontal
        @radio_vertical = radio_vertical
    end

    def area
        return Math::PI * @radio_horizontal * @radio_vertical
    end
end


class Circulo < Elipse
    def initialize(radio)
        super(radio,radio)
    end
end


c = Cuadrado.new(3)
puts c
puts c.perimetro
puts c.area

puts Circulo.new(2).area

print "lado1: "
b = gets.chomp.to_i
print "lado2: "
a = gets.chomp.to_i

c = Rectangulo.new(b,a)
puts(c)

puts Rectangulo.new(10,3) == Rectangulo.new(10,3)
puts Rectangulo.new(10,3) < Rectangulo.new(5,5)
puts Rectangulo.new(3,5) + Rectangulo.new(7,1)
puts

r1 = Rectangulo.new(1,2)
r1 << Rectangulo.new(3,1)
puts r1
