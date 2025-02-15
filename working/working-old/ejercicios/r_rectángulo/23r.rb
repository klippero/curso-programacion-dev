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


r1 = Rectangulo.new(3,2)
r2 = Rectangulo.new(4,6)
r3 = Rectangulo.new(3,2)
r4 = Rectangulo.new(5,2)
r5 = Rectangulo.new(2,3)

puts r1 == r2
puts r1 == r3
puts r3 == r4
puts r1 == r5
puts

puts r1 >= r5
puts r1 > r5
puts r1 < r2
puts r4 <= r5
puts

r6 = r1 + r4
puts r1
puts
puts r6
puts

r1 << r3
puts r1
