require_relative 'sol'

mi_frigo = FrigorificoCombi.new
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(8)
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(5)
puts mi_frigo
