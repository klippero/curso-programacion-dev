class Primitiva
    def initialize
        @premiados = []
        6.times do
            @premiados << rand(1..49)
        end
        @premiados.sort!
        @complementario = rand(1..49)
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


p = Primitiva.new
puts p
