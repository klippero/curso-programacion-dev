class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def esta?(referencia)
        i = 0
        encontrado = false
        while i < @lista.length && !encontrado
            encontrado = @lista[i] == referencia
            i = i + 1
        end
        return encontrado
    end

    def removeDuplicates
        result = []
        @lista.each do |n|
            if !ListaEnteros.new(result).esta?(n)
                result << n
            end
        end
        return result
    end
end


lista = ListaEnteros.new( [1,3,1,5,7,2,11,2,5] )
print lista.removeDuplicates
