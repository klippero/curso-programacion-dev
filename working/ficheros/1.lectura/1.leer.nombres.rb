class ListaNombres
    def initialize(fileName)
        @nombres = []
        f = File.open(fileName)
        f.each do |nombre|
            nombre.chomp!
            @nombres << nombre
        end
    end

    def to_s
        return @nombres.to_s
    end
end


nombres = ListaNombres.new("working/ficheros/1.lectura/1.leer.nombres.txt")
puts nombres
