class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def posMayor
        if @lista.length < 1
            result = -1
        else
            result = 0
            (1..@lista.length-1).each do |i|
                if @lista[i] > @lista[result]
                    result = i
                end
            end
        end
        return result
    end
end
