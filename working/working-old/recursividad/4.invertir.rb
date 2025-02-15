class Entero
    def initialize(n)
        @n = n
    end

    def invertir
        invertir_rec(@n)
    end

    private

    def invertir_rec(n)
        if n < 10
            n
        else
            n % 10 * 10 ** (n.to_s.length - 1) + invertir_rec(n/10)
        end
    end
end


puts Entero.new(2938).invertir
