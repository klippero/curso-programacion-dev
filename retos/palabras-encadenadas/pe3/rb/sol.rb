class Palabra
    def initialize(word)
        @word = word
    end

    def encadenada?(otra)
        return @word[-1] == otra[0]
    end

    def to_s
        return @word.to_s
    end
end


class Juego
    def initialize
        @words = []
    end

    def to_s
        result = ""
        @words.each do |word|
            result = result + "#{word} > "
        end
        return result[..-3]
    end

    def add(word)
        if @words.length == 0 || @words[-1].encadenada?(word)
            @words << Palabra.new(word)
            result = true
        else
            result = false
        end
        return result
    end

    def jugar
        fallo = false
        while !fallo
            print "Palabra: "
            palabra = gets.chomp
            fallo = ! self.add(palabra)
            puts self
        end
        puts "#{palabra} no está encadenada. Has conseguido encadenar #{@words.length} palabras !!"
    end
end
