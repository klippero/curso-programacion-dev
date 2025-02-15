# insert en lista ordenada
# busca la posición y crea un nuevo array con lo previo, el item y lo posterior
# problema: se crea una lista nueva
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def << (item)
        i = 0
        while i < @lista.length && item > @lista[i]
            i = i + 1
        end
        if i > 0
            @lista = @lista[0..i-1] + [item] + @lista[i..]
        else
            @lista = [item] + @lista[i..]
        end
    end
end


lista = ListaEnteros.new( [1,3,5,7,11] )
lista << 2
lista << 12
lista << 0
puts 1
