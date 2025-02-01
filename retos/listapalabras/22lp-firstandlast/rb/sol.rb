class ListaPalabras
    def initialize(lista)
        @lista = lista
    end

    def first_and_last
        result = 0
        @lista.each do |word|
            if word.length >= 2 && word[0] == word[-1]
                result = result + 1
            end
        end
        return result
    end
end
