class Word
    def initialize(word)
        @word = word
    end

    def palintromo?
        encontrado = false
        i = 0
        while i < @word.length / 2 and !encontrado
            puts "¿ #{@word[i]} = #{@word[-1-i]} ? "
            if @word[i] != @word[-1-i]
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado
    end

    def frasePalintromo?
        encontrado = false
        i = 0
        j = @word.length-1
        while i < j and !encontrado
            while [' ',',',':','¿','?'].include?(@word[i])
                i = i + 1
            end
            while [' ',',',':','¿','?'].include?(@word[j])
                j = j - 1
            end
            puts "¿ #{@word[i]} = #{@word[j]} ? "
            if @word[i] != @word[j]
                encontrado = true
            else
                i = i + 1
                j = j - 1
            end
        end
        return !encontrado
    end
end
# https://www.estandarte.com/noticias/idioma-espanol/que-es-un-palindromo-ejemplos_1723.html


puts Word.new('lola').palintromo?
puts Word.new('oro').palintromo?
puts Word.new('yo dono rosas, oro no doy').frasePalintromo?
puts Word.new('no subas, abuson').frasePalintromo?
