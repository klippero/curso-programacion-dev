class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def mayor
        if @lista.length < 1
            result = -1
        else
            result = @lista[0]
            @lista[1..].each do |n|
                if n > result
                    result = n
                end
            end
        end
        return result
    end

    def posMayor
        if @lista.length < 1
            result = -1
        else
            result = 0
            (1..@lista.length-1).each do |i|
                if result == -1 || @lista[i] > @lista[result]
                    result = i
                end
            end
        end
        return result
    end
end
