class Entero
    def initialize(n)
        @n = n
    end

    def invertir
        return invertir_rec(@n)
    end

    private

    def invertir_rec(n)
        if n < 10
            return n
        else
            return (n % 10) + invertir_rec(n / 10).to_s
        end
    end
end

puts ListaNumeros.new(1,3,5,17,4).suma
