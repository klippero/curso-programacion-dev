class Entero
    def initialize(n)
        @n = n
    end

    def to_s
        return @n.to_s
    end

    def es_multiplo_de(numero)
        if @n % numero == 0
            return true
        else
            return false
        end
    end
end


print "Número: "
n = gets.chomp.to_i

print "Divisor: "
divisor = gets.chomp.to_i

numero = Entero.new(n)
if numero.es_multiplo_de(divisor)
    puts "#{divisor} ES DIVISOR de #{numero}"
else
    puts "#{divisor} NO ES DIVISOR de #{numero}"
end
