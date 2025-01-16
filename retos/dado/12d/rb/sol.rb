class Dado
    def initialize
        @cara_superior = rand(1..6)
    end

    def tira
        @cara_superior = rand(1..6)
    end

    def to_s
        return @cara_superior.to_s
        # return "#{@cara_superior}"
    end
end
