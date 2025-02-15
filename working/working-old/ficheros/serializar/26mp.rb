class Primitiva
    LONGITUD = 6
    MAXIMO = 49

    def initialize
        @premiados = []
        LONGITUD.times do
            nuevo = rand(1..MAXIMO)
            while @premiados.include?(nuevo)
                nuevo = rand(1..MAXIMO)
            end
            @premiados << nuevo
        end
        @premiados.sort!
        @complementario = rand(1..MAXIMO)
        while @premiados.include?(@complementario)
            @complementario = rand(1..MAXIMO)
        end
        @reintegro = rand(0..9)
    end

    def to_s
        result = "PREMIADOS: "
        @premiados.each do |n|
            result << "#{n} "
        end
        result << "\nCOMPLEMENTARIO: #{@complementario}"
        result << "\nREINTEGRO: #{@reintegro}"
        return result
    end

    def reintegro
        return @reintegro
    end
end
