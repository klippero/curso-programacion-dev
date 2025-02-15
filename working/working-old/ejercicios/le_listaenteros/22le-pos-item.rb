class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def posItem(item)
        encontrado = false
        i = 0
        while i < @lista.length and !encontrado
            if @lista[i] == item
                encontrado = true
            else
                i = i + 1
            end
        end
        if !encontrado
            i = -1
        end
        return i
    end
end


lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts lista.posItem(11)
puts lista.posItem(1)
puts lista.posItem(5)
puts lista.posItem(4)

lista = ListaEnteros.new( [] )
puts lista.posItem(4)
