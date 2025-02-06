require_relative 'sol'

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
