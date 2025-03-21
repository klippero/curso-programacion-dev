class Sopa
    ANCHO = 7

    def initialize
        @sopa = []
        ANCHO.times do
            linea = []
            ANCHO.times do
                linea << ' '    # rand(65..90).chr
            end
            @sopa << linea
        end
    end

    def to_s
        result = ""
        @sopa.each do |linea|
            linea.each do |word|
                result << word
                result << " "
            end
            result << "\n"
        end
        return result
    end

    def en_sopa?(coor)
        return coor>=0 && coor<ANCHO
    end

    def <<(word)
        inicio = [ rand(ANCHO), rand(ANCHO) ]
        orientacion = [ rand(-1..1), rand(-1..1) ]
        while orientacion == [0,0]
            orientacion = [ rand(-1..1), rand(-1..1) ]
        end
        fin = [ inicio[0] + (word.length-1) * orientacion[0], inicio[1] + (word.length-1) * orientacion[1] ]
        while ! ( en_sopa?(fin[0]) && en_sopa?(fin[1]) )
            inicio = [ rand(ANCHO), rand(ANCHO) ]
            orientacion = [ rand(-1..1), rand(-1..1) ]
            while orientacion == [0,0]
                orientacion = [ rand(-1..1), rand(-1..1) ]
            end
            fin = [ inicio[0] + (word.length-1) * orientacion[0], inicio[1] + (word.length-1) * orientacion[1] ]
        end
        puts 1
    end
end

class Word
    def initialize(sopa)
        @sopa = sopa
    end

    def intenta_posicionar
        @inicio = [ rand(sopa.ANCHO), rand(sopa.ANCHO) ]
        @orientacion = [ rand(-1..1), rand(-1..1) ]
        while @orientacion == [0,0]
            @orientacion = [ rand(-1..1), rand(-1..1) ]
        end
        @fin = [ inicio[0] + (word.length-1) * orientacion[0], inicio[1] + (word.length-1) * orientacion[1] ]
    end

    def en_sopa?
        return 

    def posiciona
        intenta_posicionar
        while ! ( sopa.en_sopa?(@fin[0]) && sopa.en_sopa?(@fin[1]) )
            intenta_posicionar
        end
    end
end


s = Sopa.new
puts s
s << "CASA"
