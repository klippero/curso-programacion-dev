class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def algun_par?
        encontrado = false
        i = 0
        while i < @lista.length && !encontrado
            encontrado = @lista[i] % 2 == 0
            i = i + 1
        end
        return encontrado
    end
end


puts ListaEnteros.new( [1,3,5,7,2,11,5] ).algun_par?
puts ListaEnteros.new( [1,3,5,7,11,5] ).algun_par?
