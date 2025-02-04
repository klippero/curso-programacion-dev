class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def to_s
        return "Cuadrado: #{@lado}x#{@lado}"
    end

    def area
        return @lado * @lado
    end

    def lado
        return @lado
    end

    def ==(otro)
        return @lado == otro.lado
    end

    def >(otro)
        return @lado > otro.lado
    end

    def <(otro)
        return @lado < otro.lado
    end

    def >=(otro)
        return @lado >= otro.lado
    end

    def <=(otro)
        return @lado <= otro.lado
    end

    def +( otro )
        return Cuadrado.new( @lado + otro.lado )
    end

    def <<( otro )
        @lado = @lado + otro.lado
    end
end
