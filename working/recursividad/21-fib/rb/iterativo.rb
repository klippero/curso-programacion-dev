class Entero
    def initialize(n)
        @n = n
    end

    def fibonacci
        if @n == 0 || @n == 1
            result = @n
        else
            x = 0
            y = 1
            z = 0
            (2..@n).each do |i|
                z = x + y
                x = y
                y = z
            end
            result = z
        end
        return result
    end
end


puts Entero.new(6).fibonacci
