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


edad = {
    'Diego' => 12,
    'Pilar' => 13,
    'Matías' => 11,
    'Christian' => 17,
    'Lorenzo' => 12,
    'Daniel' => 11,
    'Eva' => 13,
    'Javi' => 14,
    'Ana' => 11
}

md = MiDiccionario.new(edad)
puts md.reverse
