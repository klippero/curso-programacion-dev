class Entero
    def initialize(n)
        @n = n
    end

    def to_bin
        to_bin_rec(@n)
    end

    private

    def to_bin_rec(n)
        if n <= 1
            n.to_s
        else
            to_bin_rec(n/2) + (n % 2).to_s
        end
    end
end


puts Entero.new(11).to_bin
puts Entero.new(47).to_bin
