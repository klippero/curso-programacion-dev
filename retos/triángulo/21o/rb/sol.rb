class Triangulo
    def initialize(base)
        @base = base
    end

    def to_s
        result = ""
        @base.times do |i|
            (i+1).times do
                result = result + "*"
            end
            result = result + "\n"
        end
        return result
    end
end
