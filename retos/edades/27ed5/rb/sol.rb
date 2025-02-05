class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def mayor
        mayor = @hash.keys[0]
        @hash.each do |key,value|
            if @hash[mayor] < value
                mayor = key
            end
        end
        return mayor
    end
end
