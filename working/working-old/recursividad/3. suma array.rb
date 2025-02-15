class ListaNumeros
    def initialize(*lst)
        @lst = lst
    end

    def suma
        sum_rec(@lst)
    end

    private

    def sum_rec(lista)
        if lista.length == 1
            lista[0]
        else
            lista[0] + sum_rec(lista[1..])
        end
    end
end

puts ListaNumeros.new(1,3,5,17,4).suma
