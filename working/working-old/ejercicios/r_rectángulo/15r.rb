class Rectangulo
    def initialize(base,altura)
        @base = base
        @altura = altura
    end

    def area
        return @base * @altura
    end

    def perimetro
        return 2 * (@base + @altura)
    end

    def to_s
        return "Rectángulo de base #{@base} y altura #{@altura}"
    end

    def agranda(ratio)
        @base = @base * ratio
        @altura = @altura * ratio
    end
end


print "Base: "
b = gets.chomp.to_f

print "Altura: "
a = gets.chomp.to_f

r = Rectangulo.new(b,a)

puts "Área: #{r.area}"
puts "Perímetro: #{r.perimetro}"

puts r

r.agranda(2)
puts r
