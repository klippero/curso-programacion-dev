class Bombo
    def initialize
        @bolas = []
        (1..49).each do |i|
            @bolas << i
        end
        self.mover
    end

    def to_s
        return @bolas.to_s
    end

    def extrae_bola
        posicion_aleatoria = rand(@bolas.length)
        numero = @bolas[posicion_aleatoria]
        @bolas.delete_at(posicion_aleatoria)
        return numero
    end

    def mover
        @bolas.length.times do |i|
            posicion_aleatoria = rand(@bolas.length)
            aux = @bolas[i]
            @bolas[i] = @bolas[posicion_aleatoria]
            @bolas[posicion_aleatoria] = aux
        end
    end
end
