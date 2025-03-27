class Tablero
    def initialize(filas,columnas)
        @tablero = []
        filas.times do
            @tablero << []
            columnas.times do
                @tablero[@tablero.length-1] << ' '
            end
        end
    end

    def to_s
        result = ""
        @tablero.each do |fila|
            fila.each do |casilla|
                result << casilla
            end
            result << "\n"
        end
        return result
    end

    def posicionaBarco(size)
        
    end
end

t = Tablero.new(10,10)
puts t
