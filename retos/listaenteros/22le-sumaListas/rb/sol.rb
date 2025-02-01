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
end
