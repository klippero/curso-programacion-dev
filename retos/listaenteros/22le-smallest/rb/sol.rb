class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def menor
        result = 1000000
        @lista.each do |n|
            if n < result
                result = n
            end
        end
        if result == 1000000
            result = -1
        end
        return result
    end
end
