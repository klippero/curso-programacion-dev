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
            @array[i],@array[j] = @array[j],@array[i]
        end
    end
end
