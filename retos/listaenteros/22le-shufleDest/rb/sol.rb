class Lista
    def initialize(array)
        @array = array
    end

    def to_s
        return @array.to_s
    end

    def shuffle!
        @array.length.times do |i|
            j = rand(@array.length)
            aux = @array[j]
            @array[j] = @array[i]
            @array[i] = aux
        end
    end
end
