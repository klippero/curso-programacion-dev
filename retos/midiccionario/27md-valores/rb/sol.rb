class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def values
        result = []
        @hash.values.each do |value|
            if !result.include?(value)
                result << value
            end
        end
        return result
    end
end
