class Entero
    def initialize(n)
        @n = n
    end

    def mostrar_previos
        (1..@n-1).each do |i|
            print "#{i} "
        end
        puts
    end
end
