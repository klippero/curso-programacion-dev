class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def to_s
        result =""
        @lado.times do
            @lado.times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end

    def area
        return @lado * @lado
    end

    def lado
        return @lado
    end
end
