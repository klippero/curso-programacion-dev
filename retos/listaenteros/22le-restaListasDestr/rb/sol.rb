class Lista
    def initialize(lista)
        @lista = lista
    end

    def to_s
        result = ""
        @lista.each do |item|
            result << " #{item}"
        end
        return result
    end

    def resta!(otra)
        i = 0
        while i < @lista.length
            if otra.include?(@lista[i])
                @lista.delete_at(i)
            else
                i = i + 1
            end
        end
    end
end
