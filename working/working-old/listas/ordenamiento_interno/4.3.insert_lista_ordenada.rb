# insert en lista ordenada
# busca la posición donde isertar y utiliza el método insert de ruby
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def << (item)
        i = 0
        while i < @lista.length && item > @lista[i]
            i = i + 1
        end
        @lista.insert(i,item)
    end
end


lista = ListaEnteros.new( [1,3,5,7,11] )
lista << 2
lista << 12
lista << 0
puts 1
