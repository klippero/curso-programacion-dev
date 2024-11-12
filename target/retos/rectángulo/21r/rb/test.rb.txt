class Rectangulo
    def initialize(base,altura)
        @base = base
        @altura = altura
    end

    def to_s
        result = ""
        @altura.times do
            @base.times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end
end


print "base: "
b = gets.chomp.to_i
print "altura: "
a = gets.chomp.to_i

c = Rectangulo.new(b,a)
puts(c)
