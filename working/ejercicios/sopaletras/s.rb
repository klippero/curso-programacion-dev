class Sopa
    def initialize(ancho,alto)
        @sopa = []
        alto.times do
            linea = []
            ancho.times do
                linea << ' '
            end
            @sopa << linea
        end
    end

    def ancho
        return @sopa[0].length
    end

    def alto
        return @sopa.length
    end

    def letter(coor)
        return @sopa[coor[0]][coor[1]]
    end

    def set(coor,letter)
        @sopa[coor[0]][coor[1]] = letter
    end

    def draw(blank=false)
        result = ""
        @sopa.each do |linea|
            linea.each do |letter|
                if letter != ' '
                    result << letter
                elsif blank
                    result << ' '
                else
                    result << rand(65..90).chr
                end
                result << " "
            end
            result << "\n"
        end
        return result
    end

    def to_s
        return draw
    end

    def en_sopa?(coor)
        return coor[0]>0 && coor[0]<ancho && coor[1]>0 && coor[1]<alto
    end

    def <<(word)
        w = Word.new(self,word)
    end
end


class Word
    def initialize(sopa,word)
        @sopa = sopa
        @word = word
        posiciona
    end

    def intenta_posicionar
        @inicio = [ rand(@sopa.ancho), rand(@sopa.alto) ]
        @orientacion = [ rand(-1..1), rand(0..1) ]
        while @orientacion == [0,0]
            @orientacion = [ rand(-1..1), rand(-1..1) ]
        end
        @fin = [ @inicio[0] + (@word.length-1) * @orientacion[0], @inicio[1] + (@word.length-1) * @orientacion[1] ]
    end

    def next(coor)
        return [ coor[0] + (1*@orientacion[0]), coor[1] + (1*@orientacion[1]) ]
    end

    def possible?
        coor = [@inicio[0],@inicio[1]]
        i = 0
        posible = true
        while coor != @fin && posible
            if ! @sopa.en_sopa?(coor)
                posible = false
            elsif [' ',@word[i]].include?(@sopa.letter(coor))
                posible = true
            else
                i = i + 1
                coor[0] = coor[0] + (1*@orientacion[0])
                coor[1] = coor[1] + (1*@orientacion[1])
                if ! @sopa.en_sopa?(coor)
                    posible = false
                end
            end
        end
        return posible
    end

    def posiciona
        intenta_posicionar
        while ! possible?
            intenta_posicionar
        end
        set
    end

    def set
        coor = [@inicio[0],@inicio[1]]
        i = 0
        while coor != @fin
            @sopa.set(coor,@word[i])
            i = i + 1
            coor[0] = coor[0] + (1*@orientacion[0])
            coor[1] = coor[1] + (1*@orientacion[1])
        end
        @sopa.set(coor,@word[i])
    end
end


s = Sopa.new(7,5)
puts s
puts
s << "CASA"
puts s.draw(true)
