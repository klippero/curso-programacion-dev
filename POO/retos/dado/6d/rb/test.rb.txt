class Dado
    def initialize
        @cara_superior = rand(1..6)
    end

    def tira
        @cara_superior = rand(1..6)
    end

    def muestra_cara_superior
        puts @cara_superior
    end
end
