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


n = 1
while !Entero.new(n).par?
    print "N: "
    n = gets.chomp.to_i
end
