class Rectangulo
    def initialize(base,altura)
        @base = base
        @altura = altura
    end

    def to_s
        result = ""
        @altura.times do
            @base.times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end

    def base
        return @base
    end

    def altura
        return @altura
    end

    def area
        return @base * @altura
    end

    def ==(otro)
        return @base == otro.base && @altura == otro.altura
    end

    def >(otro)
        return area > otro.area
    end

    def <(otro)
        return area < otro.area
    end

    def >=(otro)
        return area >= otro.area
    end

    def <=(otro)
        return area <= otro.area
    end

    def +( otro )
        return Rectangulo.new( @base + otro.base, @altura + otro.altura )
    end

    def <<( otro )
        @base = @base + otro.base
        @altura = @altura + otro.altura
    end
end
