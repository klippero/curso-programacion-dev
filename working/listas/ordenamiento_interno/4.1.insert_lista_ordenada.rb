# método insert en lista ordenada
# mueve los elementos hacia la derecha hasta encontrar la posición
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def << (item)
        i = @lista.length-1
        while i >= 0 && @lista[i] > item
            @lista[i+1] = @lista[i]
            i -= 1
        end
        @lista[i+1] = item
    end
end


lista = ListaEnteros.new( [1,3,5,7,11] )
lista << 2
lista << 12
lista << 0
puts 1
