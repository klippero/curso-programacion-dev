class Bombo
    def initialize
        @bolas = []
        (1..49).each do |i|
            @bolas << i
        end
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
end


b = Bombo.new
puts b.extrae_bola
puts b
