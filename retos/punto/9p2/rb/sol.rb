class Punto
    def initialize(x=0,y=0)
        @x = x
        @y = y
    end

    def mover( nueva_x, nueva_y)
        @x = nueva_x
        @y = nueva_y
    end

    def muestraPunto
        puts "(#{@x},#{@y})"
    end
end
