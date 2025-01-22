class Entero
    def initialize(n)
        @n = n
    end

    def primo?
        i = 2
        encontrado = false
        while i < @n and !encontrado
            if @n % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado && @n > 1
    end

    def mostrar_primos_menores
        i = 1
        while i < @n
            if Entero.new(i).primo?
                print "#{i} "
            end
            i = i + 1
        end
    end
end


=begin

    def mostrar_primos_menores
        @n.times do |i|
            if Entero.new(i).primo?
                print "#{i} "
            end
        end
    end

=end
