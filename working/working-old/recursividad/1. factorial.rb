class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        factorial_rec(@n)
    end

    private

    def factorial_rec(num)
        if num == 0
            1
        else
            num * factorial_rec(num-1)
        end
    end
end


puts Entero.new(9).factorial
