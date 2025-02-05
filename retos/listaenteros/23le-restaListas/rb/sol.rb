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

    def -(otra)
        result = []
        @lista.each do |item|
            if !otra.include?(item)
                result << item
            end
        end
        return Lista.new(result)
    end
end
