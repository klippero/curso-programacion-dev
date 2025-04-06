class Punto
    def initialize(x=0,y=0)
        @recorrido = []
        mover(x,y)
    end

    def mover( nueva_x=x, nueva_y=y)
        @recorrido << [nueva_x,nueva_y]
    end

    def irAorigen
        mover( @recorrido[0][0],@recorrido[0][1] )
    end

    def vuelve
        if @recorrido.length > 1
            @recorrido.delete_at(-1)
        end
    end

    def to_s
        return "(#{x},#{y})"
    end

    def distancia(otro = Punto.new(0,0))
        return ( (otro.x - x) ** 2 + (otro.y - y) ** 2 ) ** (1/2.0)
    end

    def x
        return @recorrido[-1][0]
    end

    def y
        return @recorrido[-1][1]
    end

    def cuadrante
        if x > 0 && y > 0
            result = 1
        elsif  x < 0 && y > 0
            result = 2
        elsif  x < 0 && y < 0
            result = 3
        elsif  x > 0 && y < 0
            result = 4
        else
            result = 0
        end
        return result
    end

    def en_diagonal?
        return x == y
    end

    def origen?
        return x == @origenX && y == @origenY
    end

    def cuadrante? (n)
        return cuadrante == n
    end

    def path
        result = ""
        @recorrido.each do |punto|
            result = result + "(#{punto[0]},#{punto[1]}) > "
        end
        return result[..-3]
    end

    def distanciaRecta
        origen = Punto.new(@recorrido[0][0],@recorrido[0][1])
        return self.distancia(origen)
    end

    def distanciaRecorrida
        result = 0
        (1..@recorrido.length-1).each do |i|
            p1 = Punto.new(@recorrido[i-1][0],@recorrido[i-1][1])
            p2 = Punto.new(@recorrido[i][0],@recorrido[i][1])
            result = result + p1.distancia(p2)
        end
        return result
    end
end
