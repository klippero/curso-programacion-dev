class Primitiva
    def initialize
        @premiados = []
        6.times do
            nuevo = rand(1..49)
            while @premiados.include?(nuevo)
                nuevo = rand(1..49)
            end
            @premiados << nuevo
        end
        @premiados.sort!
        @complementario = rand(1..49)
        while @premiados.include?(@complementario)
            @complementario = rand(1..49)
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
end
