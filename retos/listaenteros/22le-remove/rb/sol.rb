class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def remove(referencia)
        result = []
        @lista.each do |n|
            if n != referencia
                result << n
            end
        end
        return result
    end
end


lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
print lista.remove(5)
puts
print lista.remove(11)
puts
print lista.remove(9)
