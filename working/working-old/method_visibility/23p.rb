class Punto
    def initialize(x=0,y=0)
        @x = x
        @y = y
    end

    def to_s
        return "(#{@x},#{@y})"
    end

    private

    def x
        return @x
    end

    def y
        return @y
    end
end


p1 = Punto.new(1,5)
puts p1
puts p1.x
