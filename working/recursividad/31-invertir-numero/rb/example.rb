class Entero
    def initialize(n)
        @n = n
    end

    def invertir
        return invertir_rec(@n).to_i
    end

    private

    def invertir_rec(n)
        if n < 10
            return n.to_s
        else
            return (n % 10).to_s + invertir_rec(n / 10).to_s
        end
    end
end

puts ListaNumeros.new(1,3,5,17,4).suma
