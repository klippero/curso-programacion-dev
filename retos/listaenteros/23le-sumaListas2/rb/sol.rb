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

    def array
        return @array
    end

    def +(otra)
        result = []
        @array.each do |item|
            result << item
        end

        if otra.class == Lista
            arrayOtra = otra.array
        else      # otra.class == Array
            arrayOtra = otra
        end

        arrayOtra.each do |item|
            result << item
        end
        return Lista.new(result)
    end
end
