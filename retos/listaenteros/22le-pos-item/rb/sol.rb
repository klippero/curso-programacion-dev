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
