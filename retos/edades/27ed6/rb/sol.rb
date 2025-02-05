class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def reverse
        result = {}
        @hash.each do |key,value|
            if !result.has_key?(value)
                result[value] = 0
            end
            result[value] += 1
        end
        return result
    end
end
