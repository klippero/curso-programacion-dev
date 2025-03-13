class Entero
    def initialize(n)
        @n = n
    end

    def divisores
        result = []
        (1..@n-1).each do |i|
            if @n % i == 0
                result << i
            end
        end
        return result
    end
end
