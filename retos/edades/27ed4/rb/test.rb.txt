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
puts "hay #{md.count(11)} niños con 11 años"
