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
                print "#{i} "
                i = i + 1
            end
        end
        puts "al salir del bucle i vale #{i} "
    end
end


print "N: "
n = gets.chomp.to_i
e = Entero.new(n)
e.primo?


=begin

        while i < @n and @n % i != 0

=end
