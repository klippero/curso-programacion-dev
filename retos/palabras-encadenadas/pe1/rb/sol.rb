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
