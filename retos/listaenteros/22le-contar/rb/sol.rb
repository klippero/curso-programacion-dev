class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def contar(referencia)
        result = 0
        @lista.each do |n|
            if n == referencia
                result = result + 1
            end
        end
        return result
    end
end
