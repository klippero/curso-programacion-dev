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
