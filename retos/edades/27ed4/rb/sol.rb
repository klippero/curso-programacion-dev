class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def count(referencia)
        result = 0
        @hash.values.each do |value|
            if value == referencia
                  result += 1
            end
        end
        return result
    end
end
