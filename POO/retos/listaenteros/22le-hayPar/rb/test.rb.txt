class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def hayPar?
        encontrado = false
        i = 0
        while i < @lista.length && !encontrado
            if @lista[i] % 2 == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return encontrado
    end
end


lista = ListaEnteros.new( [1,3,1,10,5,7,2,11,2,5,4] )
puts lista.hayPar?

lista = ListaEnteros.new( [1,3,1,1] )
puts lista.hayPar?

lista = ListaEnteros.new( [] )
puts lista.hayPar?
