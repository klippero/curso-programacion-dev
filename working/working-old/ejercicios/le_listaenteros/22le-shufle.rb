class Lista
    def initialize(array)
        @array = array
    end

    def clone
        result = []
        @array.each do |item|
            result << item
        end
        return result
    end

    def shuffle
        result = self.clone
        result.length.times do |i|
            j = rand(result.length)
            result[i],result[j] = result[j],result[i]
        end
        return result
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


l = Lista.new([2,4,5,9])
print l.shuffle
puts
puts l

l.shuffle!
puts l
