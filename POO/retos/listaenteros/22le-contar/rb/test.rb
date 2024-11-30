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


lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts lista.contar(5)
puts lista.contar(1)
puts lista.contar(9)
