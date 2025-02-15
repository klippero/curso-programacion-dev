class PrimeNumbers
    def initialize(origin)
        @origin = origin
    end

    def each
        @origin
            .select { |i| prime? i }
            .each { |i| yield i }
    end

    def prime? (x)
        i = 2
        encontrado = false
        while i < x and !encontrado
            if x % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado && x > 1
    end
end

p = PrimeNumbers.new(1)
puts 1
