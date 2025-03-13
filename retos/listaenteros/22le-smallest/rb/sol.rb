class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def smallest
        if @lista.length < 1
            result = -1
        else
            result = @lista[0]
            @lista[1..].each do |n|
                if n < result
                    result = n
                end
            end
        end
        return result
    end
end
