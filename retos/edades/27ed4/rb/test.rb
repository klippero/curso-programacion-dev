require_relative 'sol'

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
