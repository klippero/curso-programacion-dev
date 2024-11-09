class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def smallest
        result = @lista[0]
        @lista[1..].each do |n|
            if n < result
                result = n
            end
        end
        return result
    end
end


lista = ListaEnteros.new( [1,3,1,10,5,7,2,11,2,5,4] )
puts lista.smallest

lista = ListaEnteros.new( [12,33,17,9] )
puts lista.smallest
