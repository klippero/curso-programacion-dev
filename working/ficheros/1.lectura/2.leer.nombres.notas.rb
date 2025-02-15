class ListaNombres
    def initialize(fileName)
        @notas = []
        f = File.open(fileName)
        f.each do |line|
            line.chomp!
            data = line.split(',')
            @notas << { "nombre" => data[0], "nota" => data[1].to_f }
        end
    end

    def to_s
        return @notas.to_s
    end
end


nombres = ListaNombres.new("working/ficheros/1.lectura/2.leer.nombres.notas.txt")
puts nombres
