class Entero
    def initialize(n)
        @n = n
    end

    def to_s
        return @n.to_s
    end

    def par?
        return @n % 2 == 0
    end
end
