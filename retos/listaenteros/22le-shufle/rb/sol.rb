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
end
