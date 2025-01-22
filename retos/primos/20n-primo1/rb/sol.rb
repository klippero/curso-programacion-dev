class Entero
    def initialize(n)
        @n = n
    end

    def primo?
        i = 2
        while i < @n
            print "#{i} "
            i = i + 1
        end
        puts "al salir del bucle i vale #{i} "
    end
end
