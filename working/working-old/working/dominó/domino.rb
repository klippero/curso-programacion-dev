class Jugador
    def initialize(domino)
        @piezas = []
        7.times do
            @piezas << domino.coger
        end
    end

    def to_s
        result = ""
        @piezas.each do |pieza|
            result = result + " " + pieza.to_s
        end
    end
end

class Domino
    def initialize
        @piezas = []
        7.times do |i|
            7.times.each do |j|
                @piezas << [i,j]
            end
        end
    end

    def mover
        @piezas.length.times do |i|
            j = rand(@piezas.length)
            @piezas[i],@piezas[j] = @piezas[j],@piezas[i]
        end
    end

    def coger
        posicion_aleatoria = rand(@piezas.length)
        pieza = @piezas[posicion_aleatoria]
        @piezas.delete_at(posicion_aleatoria)
        return pieza
    end

    def to_s
        return @piezas.to_s
    end
end

d = Domino.new
puts d.to_s
d.mover
puts d.to_s

print d.coger
