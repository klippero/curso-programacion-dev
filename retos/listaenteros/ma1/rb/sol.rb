class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def mayor
        result = -1
        @lista.each do |n|
            if result == -1 || n > result
                result = n
            end
        end
        return result
    end
end
