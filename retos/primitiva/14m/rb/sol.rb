class Primitiva
    def initialize
        @n1 = rand(1..49)
        @n2 = rand(1..49)
        @n3 = rand(1..49)
        @n4 = rand(1..49)
        @n5 = rand(1..49)
        @n6 = rand(1..49)
        @complementario = rand(1..49)
        @reintegro = rand(0..9)
    end

    def to_s
        return "PREMIADOS: #{@n1}, #{@n2}, #{@n3}, #{@n4}, #{@n5}, #{@n6} COMPLEMENTARIO: #{@complementario} REINTEGRO: #{@reintegro}"
    end

    def reintegro
        return @reintegro
    end
end
