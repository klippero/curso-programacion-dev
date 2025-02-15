class Entero
    def initialize(n)
        @n = n
    end

    def primo?
        i = 2
        encontrado = false
        while i < @n and !encontrado
            if @n % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado && @n > 1
    end

    def n
        return @n
    end

    def to_s
        return @n.to_s
    end

    def siguientePrimo
        result = Entero.new(@n + 1)
        while !result.primo?
            result = Entero.new(result.n + 1)
        end
        return result
    end

    def siguientePrimo!
        @n = @n + 1
        while !primo?
            @n = @n + 1
        end
    end

    def esGemelo?
        return primo? && siguientePrimo.n - @n == 2
    end

    def siguienteGemelo!
        siguientePrimo!
        while !esGemelo?
            siguientePrimo!
        end
    end

    def divisores
        result = []
        (1..@n-1).each do |i|
            if @n % i == 0
                result << i
            end
        end
        return result
    end
end


print "N: "
n = gets.chomp.to_i
e = Entero.new(n)
puts e.primo?
puts e.siguientePrimo

e.siguientePrimo!
puts e
e.siguientePrimo!
puts e

puts "gemelo (#{e},#{e.siguientePrimo}): #{e.esGemelo?}"
e.siguientePrimo!

puts "gemelo (#{e},#{e.siguientePrimo}): #{e.esGemelo?}"

e.siguienteGemelo!
puts "gemelo (#{e},#{e.siguientePrimo}): #{e.esGemelo?}"

i = 0
e = Entero.new(i)
while e.n < 1000
    e.siguienteGemelo!
    print "(#{e},#{e.siguientePrimo}) "
end

print Entero.new(70).divisores
