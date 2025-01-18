class Entero
    def initialize(n)
        @n = n
    end

    def mostrar_previos
        @n.times do |i|
            print "#{i} "
        end
        puts
    end
end


e = Entero.new(5)
e.mostrar_previos
