class Triangulo
    def initialize(b,a)
        @base = b
        @altura = a
    end

    def area
        return @base * @altura / 2
    end
end


print "Base: "
b = gets.chomp.to_f

print "Altura: "
a = gets.chomp.to_f

t = Triangulo.new(b,a)
puts "El área de un triángulo de base #{b} y altura #{a} es #{t.area}"
