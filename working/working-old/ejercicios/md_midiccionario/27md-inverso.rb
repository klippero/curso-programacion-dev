class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def inverso
        result = {}
        @hash.each do |key,value|
            if !result.has_key?(value)
                result[value] = []
            end
            result[value] << key
        end
        return result
    end
end


confirmacion = {
    'alicia' => 'sí',
    'arturo' => 'no',
    'eva' => 'no',
    'matias' => 'sí',
    'jaime' => 'no',
    'ainara' => 'no',
    'carlos' => 'sí',
    'carmen' => 'sí',
    'rosalina' => 'sí',
    'jorge' => 'no',
    'lucía' => 'no',
    'yago' => 'sí',
    'cristina' => 'no'
}
md = MiDiccionario.new(confirmacion)
puts md.inverso
