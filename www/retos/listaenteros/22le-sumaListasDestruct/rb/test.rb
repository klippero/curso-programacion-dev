class Lista
    def initialize(array)
        @array = array
    end

    def to_s
        result = ""
        @array.each do |item|
            result = result + " #{item}"
        end
        return result
    end

    def suma(array)
        result = []
        @array.each do |item|
            result << item
        end

        array.each do |item|
            result << item
        end
        return Lista.new(result)
    end

    def suma!(array)
        array.each do |item|
            @array << item
        end
    end
end


lista = Lista.new( [1,3,1,10,2,5,4] )
lista.suma!([67,34])
puts lista
