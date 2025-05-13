class Entero
    def initialize(n)
        @n = n
    end

    def fibonacci
        fibonacci_rec(@n)
    end

    private

    def fibonacci_rec(num)
        if num == 0 || num == 1
            return num
        else
            return fibonacci_rec(num-1) + fibonacci_rec(num-2)
        end
    end
end


puts Entero.new(6).fibonacci
