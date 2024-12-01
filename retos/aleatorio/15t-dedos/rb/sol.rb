class Mano
    def initialize
        @dedos = 0
    end

    def saca_dedos
        @dedos = rand(6)
    end

    def dedos
        return @dedos
    end

    def to_s
        return @dedos.to_s
    end
end
