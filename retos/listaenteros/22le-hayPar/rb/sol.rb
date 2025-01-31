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
