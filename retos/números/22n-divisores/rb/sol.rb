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


=begin

Alternativa: usando while

    i = 1
    while i < @n
        if @n % i == 0
            result << i
        end
        i = i + 1
    end

Alternativa: usango times (0..n-2) y tomamos + 1 (1..n-1)

    (@n-1).times do |i|
        if @n % ( i + 1 ) == 0
            result << ( i + 1 )
        end
    end

=end
