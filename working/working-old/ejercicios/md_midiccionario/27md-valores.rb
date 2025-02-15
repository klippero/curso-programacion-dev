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
puts "los valores de #{confirmacion}, son #{md.values}"
