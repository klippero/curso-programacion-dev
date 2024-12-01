class Punto
    def initialize(x=0,y=0)
        @origenX = x
        @origenY = y

        @x = x
        @y = y

        @previa_x = x
        @previa_y = y
    end

    def mover( nueva_x, nueva_y)
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
end


p = Punto.new
p.muestraPunto

q = Punto.new(1,-4)
q.muestraPunto
