require_relative 'sol'

un_frigo = FrigorificoCombi.new(21)
puts un_frigo

un_frigo.frigorifico.abre
puts un_frigo

un_frigo.frigorifico.cierra
puts un_frigo

un_frigo.congelador.abre
puts un_frigo

un_frigo.congelador.cierra
puts un_frigo
puts

mi_frigo = FrigorificoCombi.new
puts mi_frigo

mi_frigo.frigorifico.abre
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.congelador.abre
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(6)
puts mi_frigo

puts "La temperatura es ok: #{mi_frigo.ok?}"
mi_frigo.frigorifico.fija_temperatura(7)
puts mi_frigo
puts "La temperatura es ok: #{mi_frigo.ok?}"
