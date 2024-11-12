class Punto
    def initialize(x=0,y=0)
        @origenX = x
        @origenY = y

        @x = x
        @y = y

        @previa_x = x
        @previa_y = y
    end

    def mover( nueva_x=@x, nueva_y=@y)
        @previa_x = @x
        @previa_y = @y

        @x = nueva_x
        @y = nueva_y
    end

    def irAorigen
        mover( @origenX, @origenY )
    end

    def muestraPunto
        puts "(#{@x},#{@y})"
    end

    def vuelve
        mover( @previa_x, @previa_y )
    end

    def to_s
        return "(#{@x},#{@y})"
    end

    def distancia(otro = Punto.new(0,0))
        return ( (otro.x - @x) ** 2 + (otro.y - @y) ** 2 ) ** (1/2.0)
    end

    def x
        return @x
    end

    def y
        return @y
    end

    def cuadrante
        if @x > 0 && @y > 0
            result = 1
        elsif  @x < 0 && @y > 0
            result = 2
        elsif  @x < 0 && @y < 0
            result = 3
        elsif  @x > 0 && @y < 0
            result = 4
        else
            result = 0
        end
        return result
    end

    def en_diagonal?
        return @x == @y
    end

    def origen?
        return @x == @origenX && @y == @origenY
    end

    def cuadrante? (n)
        return cuadrante == n
    end

    def +(otro)
        nueva_x = @x + otro.x
        nueva_y = @y + otro.y
        return Punto.new(nueva_x,nueva_y)
    end
end


p1 = Punto.new(1,5)
p2 = Punto.new(-3,0)
p3 = p1 + p2

puts "#{p1} + #{p2} = #{p3}"
