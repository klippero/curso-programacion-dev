class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def esta?(referencia)
        encontrado = false
        i = 0
        while i < @lista.length && !encontrado
            if @lista[i] == referencia
                encontrado = true
            else
                i = i + 1
            end
        end
        return encontrado
    end
end
