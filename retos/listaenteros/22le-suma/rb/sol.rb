class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def suma
        result = 0
        @lista.each do |n|
            result = result + n
        end
        return result
    end
end
