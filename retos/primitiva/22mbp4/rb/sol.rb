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


class Primitiva
    def initialize
        @bombo = Bombo.new
        @premiados = []
        6.times do
            @premiados << @bombo.extrae_bola
        end
        @premiados.sort!
        @complementario = @bombo.extrae_bola
        @reintegro = rand(0..9)
    end

    def to_s
        result = "PREMIADOS: "
        @premiados.each do |n|
            result << "#{n} "
        end
        result << "\nCOMPLEMENTARIO: #{@complementario}\nREINTEGRO: #{@reintegro}"
        result << "\nBOMBO: #{@bombo}"
    end
end
