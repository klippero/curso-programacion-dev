class ListaEnteros
    def initialize(*array)
        @array = array
    end

    def suma
        result = 0
        @array.each do |n|
            result = result + n
        end
        return result
    end
end
