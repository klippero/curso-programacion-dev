class Entero
    def initialize(n)
        @n = n
    end

    def mostrar_previos
        i = 1
        while i < @n
            print "#{i} "
            i = i + 1
        end
        puts
    end
end


e = Entero.new(5)
e.mostrar_previos
